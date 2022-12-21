//
//  ViewController.swift
//  CodePath_Internship_Project
//
//  Created by Dwight Abrahams on 12/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var introduceSelfButton: UIButton!
    
    @IBAction func introduceSelfButton(_ sender: UIButton) {
           let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)

           let firstName = firstNameTextField.text
           let lastName = lastNameTextField.text
           let schoolName = schoolNameTextField.text
           let numPets = numberOfPetsLabel.text
           var morePets = ""

           if firstName == "" || lastName == "" || schoolName == "" {
               let alertController = UIAlertController(title: "Error", message: "Please fill out all fields", preferredStyle: .alert)

               let action = UIAlertAction(title: "OK", style: .default, handler: nil)

               alertController.addAction(action)

               present(alertController, animated: true, completion: nil)
           }

           if morePetsSwitch.isOn {
                morePets = "do"
              } else {
                morePets = "do not"
           }

           let introduction = "Hello, my name is \(firstName!) \(lastName!) and I am currently in my \(year!) year at \(schoolName!).\n I have \(numPets!) dogs and I \(morePets) want more pets."
        
        let alertController = UIAlertController(title: "Introduction", message: introduction, preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you \(firstName!)!", style: .default, handler: nil)

        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
       }
    
    @IBAction func morePetsStepper(_ sender: UIStepper) {
        // update the count in the label to match the stepper
        numberOfPetsLabel.text = String(Int(sender.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
