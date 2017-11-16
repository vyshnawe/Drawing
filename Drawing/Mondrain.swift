//
//  Mondrain.swift
//  Drawing
//
//  Created by student on 11/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class Mondrain: UIView {
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let colors:[UIColor] = [.black, .darkGray, .brown, .cyan, .blue, .orange, .lightGray]
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        if enterNumber>0{
            for _ in 1 ... enterNumber{
                let x = Int(arc4random_uniform(170))
                let y = Int(arc4random_uniform(200))
                let width = Int(arc4random_uniform(170))
                let height = Int(arc4random_uniform(200))
                let randomRectangle = UIBezierPath(rect: CGRect(x:  x, y:  y, width:  width, height:  height))
                    self.colors[Int(arc4random_uniform(6))].setFill()
                    randomRectangle.fill()
               
                }
                
            }
        }
        
        
        
        
    }
    


