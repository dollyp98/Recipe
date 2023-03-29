//
//  RecipeTableViewCell.swift
//  NewRecipe
//
//  Created by Dolores Pastore on 28/03/23.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var RecipeImage: UIImageView!
    @IBOutlet weak var RecipeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.accessoryType = .disclosureIndicator
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(with recipes: Recipe) {
        RecipeName.text = recipes.name
        if let image = UIImage(named: recipes.imageName) {
            RecipeImage.image = image
        } else {
            RecipeImage.image = UIImage(named: "empty")
        }
    }
}
