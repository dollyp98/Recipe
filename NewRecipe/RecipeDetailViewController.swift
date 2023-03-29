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
        
        RecipeImage.image = UIImage(named: recipes!.imageName)!
        RecipeName.text = recipes?.name
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
