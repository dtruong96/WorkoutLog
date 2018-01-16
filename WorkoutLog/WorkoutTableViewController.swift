//
//  WorkoutTableViewController.swift
//  WorkoutLog
//
//  Created by Donald Truong on 1/15/18.
//  Copyright © 2018 Donald Truong. All rights reserved.
//

import UIKit

class WorkoutTableViewController: UITableViewController {
    
    var completedWorkouts : [Workout] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  completedWorkouts.count
    }

    

}
