//
//  TicTacToe.swift
//  Drawing
//
//  Created by Kalvakota,Vaishnavi on 11/14/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

   @IBDesignable class TicTacToe: UIView {
    
    var x:Int?
    var y:Int?
    var input:Character?
        
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
        
        
        
        for draw in enterString{
            
            var wdth:CGFloat = 1
            var hght:CGFloat = 1
            
            let char1:String.Index = draw.index(draw.startIndex, offsetBy: 0)
            let char2:String.Index = draw.index(draw.startIndex, offsetBy: 1)
            let char3:String.Index = draw.index(draw.startIndex, offsetBy: 2)
            if(draw[char1] == "0"){
                hght = 6
            }
             if draw[char1] == "1"{
                hght = 2
            }
          if draw[char1] == "2"{
                hght = 1.2
            }
          if draw[char2] == "0"{
                wdth = 6
            }
             if draw[char2] == "1"{
                wdth = 2
            }
            if draw[char2] == "2"{
                wdth = 1.2
            }
            if draw[char3] == "x" || draw[char3] == "X" {
                bezier.move(to: CGPoint(x:size.width/(wdth) - size.width/10.0, y:size.height/(hght) - size.height/10.0))
                bezier.addLine(to: CGPoint(x:size.width/(wdth) + size.width/10.0, y:size.height/(hght) + size.height/10.0))
                bezier.move(to: CGPoint(x:size.width/(wdth) + size.width/10.0, y:size.height/(hght) - size.height/10.0))
                bezier.addLine(to: CGPoint(x:size.width/(wdth) - size.width/10.0, y:size.height/(hght) + size.height/10.0))
                
            }
             if draw[char3] == "o" || draw[char3] == "O" {
                bezier.move(to:CGPoint(x:(size.width/wdth)+size.width/10.0,y:size.height/hght))
                
                bezier.addArc(withCenter: CGPoint(x:size.width/wdth,y:size.height/hght), radius: size.width/10.0, startAngle: 0.0, endAngle: 2 * .pi , clockwise: true)
            }
        
        
        UIColor.black.setStroke()
        bezier.stroke()
        
    }
        

}
}
