//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Lisa Sampson on 7/31/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ballTapped(_ sender: Any) {
        labelText.text = generateAnswer()
    }
    
    private var lastAnswer = ""
    private func generateAnswer() -> String {
        
        var result = ""
        repeat {
            let index = Int(arc4random_uniform(UInt32(answers.count)))
            result = answers[index]
        } while result == lastAnswer
        
        lastAnswer = result
        
        return result
    }

    @IBOutlet weak var labelText: UILabel!
    
    private let answers = [
        "It is certain.",
        "It is decidedly so.",
        "Without a doubt.",
        "Yes - definitely.",
        "You may rely on it.",
        "As I see it, yes.",
        "Most likely.",
        "Outlook good.",
        "Yes.",
        "Signs point to yes.",
        "Reply hazy, try again",
        "Ask again later.",
        "Better not tell you now.",
        "Cannot predict now.",
        "Concentrate and ask again.",
        "Don't count on it.",
        "My reply is no.",
        "My sources say no",
        "Outlook not so good.",
        "Very doubtful."
        ]
}

