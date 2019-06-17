//
//  DetailsTableViewController.swift
//  TestUnitTestApp
//
//  Created by Manjunath K on 6/4/19.
//  Copyright © 2019 teksystems. All rights reserved.
//

import UIKit

class DetailsTableViewController: UITableViewController {

    var viewModel = DetailsTableViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        viewModel.isListFetched.bind {
            (success) in
            if success {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } else {
                print("Failed")
            }
        }
        
        viewModel.getListOfCountries()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel.countryList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = viewModel.countryList[indexPath.row].name

        return cell
    }
    
    func someFunc(someVal:Bool) -> Bool {
        print("some text")
        return !someVal
    }
}
