//
//  CategoryViewController.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/3/24.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mealArray: [Meal] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Desserts"
        fetchItems()
    }
    
    func fetchItems() {
        NetworkService.session.getItemData { [weak self] response in
            switch response {
            case .success(let data):
                self?.mealArray = data.sorted { $0.strMeal ?? "" < $1.strMeal ?? "" }
                self?.reloadTable()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func reloadTable() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func navigateToDetailVC(meal: Meal) {
        if let detailVC = storyboard?.instantiateViewController(withIdentifier: "FoodDetailsViewController") as? FoodDetailsViewController {
            detailVC.meal = meal
            self.navigationController?.pushViewController(detailVC, animated: true)
        }
    }
    
}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodItemTableViewCell", for: indexPath) as! FoodItemTableViewCell
        cell.setupData(data: mealArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToDetailVC(meal: mealArray[indexPath.row])
    }
    
}
