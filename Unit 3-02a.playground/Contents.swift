// Created on: Oct-2018
// Created by: Brody Macneil
// Created for: ICS3U
// This program makes a number between 1 and 10 and person guesses it
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let NUMBER_TO_GUESS : Int = Int(arc4random_uniform(10) + 1)
    let instructionLabel = UILabel()
    let guessNumberTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    let randomLabel = UILabel()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "What is my number?"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //randomLabel.text = String(NUMBER_TO_GUESS)
        //view.addSubview(randomLabel)
        //randomLabel.translatesAutoresizingMaskIntoConstraints = false
        //randomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //randomLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        guessNumberTextField.borderStyle = UITextBorderStyle.roundedRect
        guessNumberTextField.placeholder = "Enter # from 1 to 10"
        view.addSubview(guessNumberTextField)
        guessNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        guessNumberTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        guessNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(checkNumberOfStudents), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: guessNumberTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumberOfStudents() {
        // check if persons guess is correct
        
        //input
        let numberEntered : Int = Int(guessNumberTextField.text!)!
        
        // process
        if numberEntered == NUMBER_TO_GUESS {
            //output
            answerLabel.text = "Correct!"
        }
        if numberEntered < NUMBER_TO_GUESS {
            //output
            answerLabel.text = "Sorry number was \(NUMBER_TO_GUESS)"
        }
        if numberEntered > NUMBER_TO_GUESS {
            //output
            answerLabel.text = "Sorry number was \(NUMBER_TO_GUESS)"
        }
        else if numberEntered > 10 {
            //output
            answerLabel.text = "Please enter a NUMBER between 1 and 10 next time."
        }
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
