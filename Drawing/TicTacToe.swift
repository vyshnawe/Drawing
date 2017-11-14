//
//  TicTacToe.swift
//  Drawing
//
//  Created by Kalvakota,Vaishnavi on 11/14/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

   @IBDesignable class TicTacToe: UIView {
        
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func draw(_ rect: CGRect) {
        let bezier = UIBezierPath()
        let size = self.frame.size
        bezier.move(to:CGPoint(x:(size.width)/3,y:0.0))
        bezier.addLine(to: CGPoint(x:(size.width)*1/3, y:size.height))
        bezier.move(to:CGPoint(x:(size.width)*2/3,y:0.0))
        bezier.addLine(to: CGPoint(x:(size.width)*2/3, y:size.height))
        
        bezier.move(to:CGPoint(x:0.0,y:(size.height)/3))
        bezier.addLine(to:CGPoint(x:size.width,y:(size.height)/3))
        bezier.move(to:CGPoint(x:0.0,y:(size.height)*2/3))
        bezier.addLine(to:CGPoint(x:size.width,y:(size.height)*2/3))
        
        bezier.move(to:CGPoint(x:(size.width/2.0)+size.width/10.0,y:size.height/2.0))
        
        bezier.addArc(withCenter: CGPoint(x:size.width/2.0,y:size.height/2.0), radius: size.width/10.0, startAngle: 0.0, endAngle: 2 * .pi , clockwise: true)
        
       bezier.move(to:CGPoint(x:((size.width)*2/3.0) ,y:(size.height)*2/3) )
        bezier.addLine(to: CGPoint(x:size.width,y:size.height))
        bezier.move(to:CGPoint(x:size.width,y:(size.height)*2/3))
        bezier.addLine(to:CGPoint(x:(size.width)*2/3,y:size.height))
        
            
        
        
        
//        bezier.addArc(withCenter: CGPoint(x:size.width/2.0,y:size.height/2.0), radius: size.width/10.0, startAngle: 0.0, endAngle: 2 * .pi , clockwise: true)
        UIColor.black.setStroke()
        bezier.stroke()
        
    }
        

}
