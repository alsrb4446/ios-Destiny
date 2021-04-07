//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = storyBrain.getStory()
        firstButton.setTitle(storyBrain.getFirstAnswer(), for: .normal)
        secondButton.setTitle(storyBrain.getSecondAnswer(), for: .normal)
    
    }

}

