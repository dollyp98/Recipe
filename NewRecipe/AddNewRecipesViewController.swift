//
//  AddNewRecipesViewController.swift
//  NewRecipe
//
//  Created by Dolores Pastore on 28/03/23.
//

import UIKit

class AddNewRecipesViewController: UIViewController, UITextFieldDelegate {

    //var recipes: Recipe?
    
    @IBOutlet weak var RecipeName: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var RecipeIngredients: UILabel!
    @IBOutlet weak var ingredientsTextField: UITextField!
    @IBOutlet weak var RecipeInstructions: UILabel!
    @IBOutlet weak var instructionsTextField: UITextField!
    @IBOutlet weak var AddRecipeButton: UIButton!
    
    required init?(coder: NSCoder) {
        //self.recipes = recipes
        super.init(coder: coder)
    }
    /*
    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        if let recipes = recipes {
            RecipeName.text = recipes.name
            nameTextField.text = recipes.name
            RecipeIngredients.text = recipes.name
            

        }
         */
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBAction func saveRecipe(_ sender: Any) {
        let recipe = Recipe(name: nameTextField.text ?? "", ingredients: ingredientsTextField.text, imageName: "pesto")
        recipes.append(recipe)
        print(recipes)
    }
}
