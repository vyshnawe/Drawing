//
//  FirstViewController.swift
//  Drawing
//
//  Created by Kalvakota,Vaishnavi on 11/14/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

var enterString:[String] = []

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var enterPattern: UITextField!
    
    @IBOutlet weak var ticTacToeView: TicTacToe!
    @IBAction func playGame(_ sender: Any) {
        enterString = splitString(pattern: enterPattern.text!)
        ticTacToeView.setNeedsDisplay()
        
    }
    func splitString(pattern:String)->[String]{
        var ticTacToe:[String] = []
        for t in pattern.components(separatedBy: " "){
            ticTacToe.append(t)
        }
        return ticTacToe
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

