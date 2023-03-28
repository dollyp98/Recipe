//
//  PlusButtonViewController.swift
//  NewRecipe
//
//  Created by Dolores Pastore on 27/03/23.
//

import UIKit

class PlusButtonViewController: UIViewController, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections in the table view
        return 2 // or any desired number
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in each section
        if section == 0 {
            return 3 // or any desired number
        } else if section == 1 {
            return 2 // or any desired number
        } else {
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Return the cell for each row
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        // Customize the cell's content here
        cell.textLabel?.text = "Section \(indexPath.section), Row \(indexPath.row)"
        return cell
    }

    private func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Return the custom header view for each section
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 44))
        let textField = UITextField(frame: CGRect(x: 16, y: 8, width: headerView.frame.width - 32, height: 28))
        textField.placeholder = "Section \(section) header"
        headerView.addSubview(textField)
        return headerView
    }

    private func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        // Return the height of the custom header view for each section
        return 44
    }
}



/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
