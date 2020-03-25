//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Hoang Pham on 24/03/2020.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Label: UIButton!
    @IBOutlet var choice2Label: UIButton!
    
    var story = StoryBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let userChoice = sender.titleLabel?.text
        
        story.nextStory(userChoice!)
        updateUI()
    }
    
    func updateUI() {
        var storyChoices: [String]
        
        storyChoices = story.storyChoices()
        storyLabel.text = story.storyTitle()
        choice1Label.setTitle(storyChoices[0], for: .normal)
        choice1Label.titleLabel?.adjustsFontSizeToFitWidth = true
        choice2Label.setTitle(storyChoices[1], for: .normal)
        choice2Label.titleLabel?.adjustsFontSizeToFitWidth = true
    }
}

