//
//  ViewController.swift
//  TabataTimer PalkaTeam
//
//  Created by Marcin Magiera on 02/05/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let shapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //    Drawing a circle
        let center = view.center
        
        // Create track layer
        let trackLayer = CAShapeLayer()
        
        let circularPath = UIBezierPath( arcCenter: center, radius: 150, startAngle: -CGFloat.pi / 2, endAngle:  2 * CGFloat.pi, clockwise: true )
        
        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = UIColor.lightGray.cgColor
        trackLayer.lineWidth = 8
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = .round
        view.layer.addSublayer(trackLayer)
        
//        let circularPath = UIBezierPath( arcCenter: center, radius: 150, startAngle: -CGFloat.pi / 2, endAngle:  2 * CGFloat.pi, clockwise: true )
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = .round
        shapeLayer.strokeEnd = 0
        
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc func handleTap(){
        print("Tappin' is working right")
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 30
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
    }
    

}

