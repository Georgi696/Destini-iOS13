//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        storyBrain.getNextQuestion(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    
    func updateUI(){
        questionLabel.text = storyBrain.getQuestionText()
        choice1Button.setTitle(storyBrain.getChoise1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoise2(), for: .normal)
    }


}

