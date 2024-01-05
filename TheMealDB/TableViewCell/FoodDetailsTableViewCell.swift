//
//  FoodDetailsTableViewCell.swift
//  TheMealDB
//
//  Created by Anish Shrestha on 1/3/24.
//

import UIKit

protocol WatchYoutubeProtocol: AnyObject {
    func didPressButton()
}

class FoodDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var areaNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var watchButton: UIButton!
    
    weak var buttonDelegate: WatchYoutubeProtocol?
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        watchButton.layer.cornerRadius = 12
    }
    
    @IBAction func watchVideoButtonActionHandler(_ sender: Any) {
        buttonDelegate?.didPressButton()
    }
    
    func setupData(data: Meal) {
        titleLabel.text = data.strMeal
        areaNameLabel.text = data.strArea
        descriptionLabel.text = data.strInstructions
        ingredientsLabel.text = data.ingredient
        
        if let imageURL = data.strMealThumb {
            self.foodImage.imageFromURL(urlString: imageURL)
        }
    }

}
