//
//  ViewController.swift
//  budgetBar
//
//  Created by Axel Ancona Esselmann on 4/22/16.
//  Copyright © 2016 Axel Ancona Esselmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var bar: BudgetBar!
    var budgetBar:BudgetBar!
    @IBAction func setButtonAction(sender: AnyObject) {
        budgetBar.setWithAnimation(Double(percentTextField.text!)!, withDuration: 2.0)
        bar.setWithAnimation(Double(percentTextField.text!)!, withDuration: 2.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        budgetBar = BudgetBar(frame: CGRect(origin: CGPoint(x: 10, y:150), size: CGSize(width: 300, height: 40)))
        budgetBar.barHeight = 15
        view.addSubview(budgetBar)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

