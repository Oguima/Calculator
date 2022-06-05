//
//  ViewController.swift
//  calc
//
//  Created by rafael.guimaraes on 05/06/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func btAC(_ sender: UIButton) {
        clearResult()
    }

    // MARK: - Number Buttons
    @IBAction func btZero(_ sender: UIButton) {
        zeroTapped()
    }

    @IBAction func btOne(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btTwo(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btThree(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btFour(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btFive(_ sender: UIButton) {
        numberPressed(sender)
    }


    @IBAction func btSix(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btSeven(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btEight(_ sender: UIButton) {
        numberPressed(sender)
    }

    @IBAction func btNine(_ sender: UIButton) {
        numberPressed(sender)
    }

    // MARK: - Operation Buttons

    @IBAction func btDivision(_ sender: UIButton) {
        operationPressed(sender)
    }


    @IBAction func btMultiplication(_ sender: UIButton) {
        operationPressed(sender)
    }


    @IBAction func btMinus(_ sender: UIButton) {
        operationPressed(sender)
    }


    @IBAction func btPlus(_ sender: UIButton) {
        operationPressed(sender)
    }


    @IBAction func btEqual(_ sender: UIButton) {
        operationPressed(sender)
    }

    var firstNumber = 0
    var resultNumber = 0
    var currentOperations: Operation?

    enum Operation {
        case add, subtract, multiply, divide
    }

    func clearResult() {
        resultLabel.text = "0"
        currentOperations = nil
        firstNumber = 0
    }

    func zeroTapped() {
        if resultLabel.text != "0" {
            if let text = resultLabel.text {
                resultLabel.text = "\(text)0"
            }
        }
    }

    func numberPressed(_ sender: UIButton) {
        let tag = sender.tag - 1
        if resultLabel.text == "0" {
            resultLabel.text = "\(tag)"
        }
        else if let text = resultLabel.text {
            resultLabel.text = "\(text)\(tag)"
        }
    }

    func operationPressed(_ sender: UIButton) {
        let tag = sender.tag
        if let text = resultLabel.text,
           let value = Int(text),
            firstNumber == 0 {
            firstNumber = value
            resultLabel.text = "0"
        }

        if tag == 1 {
            if let operation = currentOperations {
                var secondNumber = 0
                if let text = resultLabel.text,
                   let value = Int(text) {
                    secondNumber = value
                }

                switch operation {
                case .add:
                    firstNumber = firstNumber + secondNumber
                    break
                case .subtract:
                    firstNumber = firstNumber - secondNumber
                    break
                case .multiply:
                    firstNumber = firstNumber * secondNumber
                    break
                case .divide:
                    firstNumber = firstNumber / secondNumber
                    break
                }
                secondNumber = 0
                resultLabel.text = "\(firstNumber)"
                currentOperations = nil
                firstNumber = 0


            }
        } else if tag == 2 {
            currentOperations = .add
        } else if tag == 3 {
            currentOperations = .subtract
        } else if tag == 4 {
            currentOperations = .multiply
        } else if tag == 5 {
            currentOperations = .divide
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        //Change the style and color a status bar, to use White font
        return .lightContent
    }


}

