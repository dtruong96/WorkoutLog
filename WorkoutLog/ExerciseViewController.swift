//
//  ExerciseViewController.swift
//  WorkoutLog
//
//  Created by Donald Truong on 1/16/18.
//  Copyright © 2018 Donald Truong. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    @IBOutlet weak var RepsTextField: NSLayoutConstraint!
    @IBOutlet weak var WeightTextField: UITextField!
    @IBOutlet weak var ExerciseTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var ExerciseAddButton: UIView!
}
