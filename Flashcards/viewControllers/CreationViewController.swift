//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Chris Pineda on 3/12/21.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: firstScreenViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        
        //Get the text in the question text field
        let questionText = questionTextField.text
        
        //Get the text in the answer text field
        let answerText = answerTextField.text
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        //Dismiss
        dismiss(animated: true)
    }
}
