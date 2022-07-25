//
//  CalculatorViewController.swift
//  calc
//
//  Created by rafael.guimaraes on 25/07/22.
//

import UIKit

class CalculatorViewController: UIViewController {
    let screen = CalculatorView()

    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
