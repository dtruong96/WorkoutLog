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
        
        completedWorkouts = createWorkoutExamples()

    }

    func createWorkoutExamples() -> [Workout]{
        
        let BenchPress = Workout()
        BenchPress.name = "Bench Press"
        BenchPress.weight = "150"
        BenchPress.reps = "3"
        BenchPress.date = "January 1, 2018"
        BenchPress.bestRecord = true
        
        let Squats = Workout()
        Squats.name = "Squat"
        Squats.weight = "200"
        Squats.reps = "3"
        Squats.date = "January 1, 2018"
        Squats.bestRecord = false
        
        return [BenchPress, Squats]
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let workoutCell = completedWorkouts[indexPath.row]
        
        if workoutCell.bestRecord {
            cell.textLabel?.text = "💪" + workoutCell.name + " - " + workoutCell.date
        } else{
            cell.textLabel?.text = workoutCell.name + " - " + workoutCell.date
        }
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  completedWorkouts.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let workoutEntry = completedWorkouts[indexPath.row]
        
        performSegue(withIdentifier: "MenuSegue", sender: "💄")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let workoutHistoryVC = segue.destination as! LogViewController
        workoutHistoryVC.workoutHistory = sender as! String
    }
    

}
