//
//  FoodDetailsViewController.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/3/24.
//

import UIKit

class FoodDetailsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var meal: Meal!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchMealDetails()
    }
    
    func fetchMealDetails() {
        NetworkService.session.getFoodDetails(meal.id) { [weak self] response in
            switch response {
            case .success(let data):
                if let mealItem = data.first {
                    self?.meal = mealItem
                    self?.reloadTable()
                }
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

}

extension FoodDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodDetailsTableViewCell", for: indexPath) as! FoodDetailsTableViewCell
        cell.setupData(data: meal)
        cell.buttonDelegate = self
        return cell
    }
    
}

extension FoodDetailsViewController: WatchYoutubeProtocol {
    
    func didPressButton() {
        guard let url = self.meal.strYoutube else {
            showToast(message: "URL not found")
            return
        }

        if let youtubeURL = URL(string: url) {
            UIApplication.shared.open(youtubeURL, options: [:], completionHandler: nil)
        }
    }
    
}
