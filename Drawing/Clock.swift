//
//  Clock.swift
//  Drawing
//
//  Created by student on 11/15/17.
//  Copyright © 2017 Kalvakota,Vaishnavi. All rights reserved.
//

import UIKit

class Clock: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    */
    override func draw(_ rect:CGRect)
        
    {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let clock = UIBezierPath()
        let size = self.frame.size
        
        
        let hourHand = UIBezierPath()
        let hourArc = UIBezierPath()
        let hourAngle:CGFloat = .pi * CGFloat((Double(hour) - 3.0) / 6.0)
        clock.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 3.0, startAngle: 0.0, endAngle: 2 * .pi, clockwise: true)
        clock.stroke()
        hourArc.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 6.0, startAngle: 0.0, endAngle: hourAngle, clockwise: true)
        hourHand.move(to: hourArc.currentPoint)
        hourHand.addLine(to: CGPoint(x:size.width/2.0, y: size.height/2.0))
        hourHand.stroke()
        
        let minHand = UIBezierPath()
        let minArc = UIBezierPath()
        let minAngle:CGFloat = .pi * CGFloat(((Double(minute) / 5.0) - 3.0) / 6.0)
        minArc.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 4.0, startAngle: 0.0, endAngle: minAngle, clockwise: true)
        minHand.move(to: minArc.currentPoint)
        minHand.addLine(to: CGPoint(x:size.width/2.0, y: size.height/2.0))
        minHand.stroke()
        
        
        
    }

}
