//
//  FoodItemTableViewCell.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/3/24.
//

import UIKit

class FoodItemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodTitle: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        foodImage.layer.cornerRadius = 12
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupData(data: Meal) {
        foodTitle.text = data.strMeal
        
        if let imageURL = data.strMealThumb {
            self.foodImage.imageFromURL(urlString: imageURL)
        } else {
            foodImage.isHidden = true
        }
    }
    
}
