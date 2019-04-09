//
//  TransactionListTableViewController.swift
//  TabbedApplication
//
//  Created by Avinash Reddy on 4/9/19.
//  Copyright © 2019 Avinash Reddy. All rights reserved.
//

import UIKit

class TransactionListTableViewController: UITableViewController {
    
    // MARK: - Properties
    var transactionTitleArray: [String] = []
    var date: [Date] = [Date]()
    var price: [String] = []
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // format date
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .medium
        
        // Array values initalization
        transactionTitleArray = ["Title 1", "Title 2", "Title 3"]
        date = [Date(timeIntervalSinceNow: 1000000), Date(timeIntervalSinceNow: 100000), Date(timeIntervalSinceNow: 200000)]
        price = ["$40.00", "$20.00", "$30.00"]
        
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return transactionTitleArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionDetailCell", for: indexPath) as! CustomTableViewCell
        
        let titleValue = transactionTitleArray[indexPath.row]
        let dateValue = date[indexPath.row]
        let priceValue = price[indexPath.row]

        // Configure the cell...
        cell.transactionTitleLabel.text = titleValue
        cell.dateLabel.text = dateFormatter.string(from: dateValue)
        cell.priceLabel.text = priceValue

        return cell
    }
    
    // Add Transaction Method
    func addTransaction(_ titleValue: String, _ dateValue: Date?, _ priceValue: String) {
        guard !titleValue.isEmpty else {
            return
        }
        
        guard dateValue != nil else {
            return
        }
        
        guard !priceValue.isEmpty else {
            return
        }
        
        transactionTitleArray.insert(titleValue, at: 0)
        price.insert(priceValue, at: 0)
        date.insert(dateValue!, at: 0)
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
