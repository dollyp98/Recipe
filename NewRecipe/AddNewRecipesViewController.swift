//
//  AddNewRecipesViewController.swift
//  NewRecipe
//
//  Created by Dolores Pastore on 28/03/23.
//

import UIKit

class AddNewRecipesViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var RecipeName: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var RecipeIngredients: UILabel!
    @IBOutlet weak var ingredientsTextField: UITextField!
    @IBOutlet weak var RecipeInstructions: UILabel!
    @IBOutlet weak var instructionsTextField: UITextField!
    @IBOutlet weak var AddRecipeButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func saveRecipe(_ sender: Any) {
      //  let recipe = Recipe(name: nameTextField.text, ingredients: [(ingredientsTextField.text)], instructions: [(instructionsTextField.text)], imageName: "pesto")
      //  recipes.append(recipe)
      //  print(recipes)
    }
}
