//
//  ViewController.swift
//  Flashcards
//
//  Created by Chris Pineda on 2/20/21.
//

import UIKit

class firstScreenViewController: UIViewController {
    
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
        
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Rounded flashcard corners must clip to bounds
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        
        // Shadow
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 18.0
        card.layer.shadowOpacity = 2.0
        
        // Button One
        btnOptionOne.layer.cornerRadius = 20.0
        btnOptionOne.clipsToBounds = true
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        // Button Two
        btnOptionTwo.layer.cornerRadius = 20.0
        btnOptionTwo.clipsToBounds = true
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        // Button Three
        btnOptionThree.layer.cornerRadius = 20.0
        btnOptionThree.clipsToBounds = true
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        
        // If front label is hidden unhide otherwise hide it
        if frontLabel.isHidden {
            frontLabel.isHidden = false
        }
        else {
            frontLabel.isHidden = true
        }
    }
    
    func updateFlashcard(question: String, answer: String){
        // Use question and Answer to immediately update the question and answer label
        frontLabel.text = question
        backLabel.text = answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        //We know the destination of the seque is the Navigatin Controller
        let navigationController = segue.destination as! UINavigationController
        
        //
        let creationController = navigationController.topViewController as! CreationViewController
        
        // We set the flashcardsController prpterty to self
        creationController.flashcardsController = self
    }
}
