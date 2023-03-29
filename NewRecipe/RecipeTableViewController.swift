//
//  RecipeTableViewController.swift
//  NewRecipe
//
//  Created by Dolores Pastore on 25/03/23.
//

import UIKit

class RecipeTableViewController: UITableViewController {

    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "AddNewRecipesViewController")
        
        secondVC.modalPresentationStyle = .fullScreen
        secondVC.modalTransitionStyle = .crossDissolve
        
        present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItemSegue" {
            if let addItemVC = segue.destination as? AddNewRecipesViewController {
            }
        } else if (segue.identifier == "showDetail") {
            segue.destination as? RecipeDetailViewController
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(reloadRecipe(_:)), for: .valueChanged)
        title = "Recipes"
    }
    
    @objc private func reloadRecipe(_ sender : Any){
        tableView.reloadData()
        self.refreshControl?.endRefreshing()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        
        let recipe = recipes[indexPath.row]
        
        //cell.update(with: Recipe)
        cell.textLabel?.text = recipe.name
        //cell.detailTextLabel?.text = recipe.detail
        cell.imageView?.image = UIImage(named: recipe.imageName)
        
        return cell
    }
    

    @IBSegueAction func showDetail(_ coder: NSCoder) -> RecipeDetailViewController? {
        return RecipeDetailViewController(coder: coder, recipes: recipes[tableView.indexPathForSelectedRow?.row ?? 0])
    }
    
    @IBSegueAction func addRecipe(_ coder: NSCoder) -> AddNewRecipesViewController? {
        return AddNewRecipesViewController(coder: coder)
    }
}
