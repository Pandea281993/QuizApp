//
//  ViewController.swift
//  QuizApp
//
//  Created by Jha, Vasudha on 02/03/19.
//  Copyright © 2019 Jha, Vasudha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel?
    @IBOutlet weak var answerLabel: UILabel?
    
    let questions: [String] = [
        "What is 7 + 7 ?",
        "What is the capital of Vermont ?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.questionLabel?.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel?.text = answer
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        self.currentQuestionIndex += 1
        if (self.currentQuestionIndex == questions.count) {
            self.currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        self.questionLabel?.text = question
        self.answerLabel?.text = "???"
    }


}

