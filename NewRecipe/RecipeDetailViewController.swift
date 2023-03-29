//
//  RecipeDetailViewController.swift
//  NewRecipe
//
//  Created by Dolores Pastore on 28/03/23.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    let recipes: Recipe?

    @IBOutlet weak var RecipeImage: UIImageView!
    @IBOutlet weak var RecipeName: UILabel!
    @IBOutlet weak var RecipeIngredients: UILabel!
    @IBOutlet weak var RecipeInstructions: UILabel!
    
    required init(coder: NSCoder, recipes: Recipe ) {
        self.recipes = recipes
        super.init(coder: coder)!
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.headIndent = 20
        
 extension NSAttributedString.Key {
            static let bulletPoint = NSAttributedString.Key(rawValue: "bulletPoint")
        }
        
        let bulletAttributes: [NSAttributedString.Key: Any] = [
                    .font: UIFont.systemFont(ofSize: 14),
                    .foregroundColor: UIColor.black,
                    .paragraphStyle: paragraphStyle,
                    "bulletPoint": "•"
                ]
        
        let bulletList = NSMutableAttributedString()
        
        for item in recipes {
                    let bullet = NSAttributedString(string: "\n• ", attributes: attributes)
                    let listItem = NSAttributedString(string: item, attributes: attributes)
                    bulletList.append(bullet)
                    bulletList.append(listItem)
                }
        
            RecipeIngredients.attributedText = bulletList */
        
        RecipeImage.image = UIImage(named: recipes!.imageName)!
        RecipeName.text = recipes?.name
        RecipeIngredients.text = recipes?.ingredients?.joined(separator: ", -")
        RecipeInstructions.text = recipes?.instructions?.joined(separator: ", -")
    } //.joined(separator: ", ") to concatenate the strings in recipes array into a single string separated by a comma and a space
}
