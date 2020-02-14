//
//  ViewController.swift
//  draw 4 bricks with layer
//
//  Created by Apple on 2/14/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let brickView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.brown
        return view
    }()
    
    let brickView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    let brickView3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.purple
        return view
    }()
    
    let brickView4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        return view
    }()
    
    let L : CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brickView.frame = CGRect(x: 100, y: 100, width: L, height: L)
        brickView2.frame = CGRect(x: 100, y: L + 100, width: L, height: L)
        brickView3.frame = CGRect(x: 100, y: L*2 + 100, width: L, height: L)
        brickView4.frame = CGRect(x: L + 100, y: L*2 + 100, width: L, height: L)

        view.addSubview(brickView)
        view.addSubview(brickView2)
        view.addSubview(brickView3)
        view.addSubview(brickView4)
        
        brickView.layer.addSublayer(drawLayer().0)
        brickView.layer.addSublayer(drawLayer().1)
        brickView.layer.addSublayer(drawLayer().2)
        brickView.layer.addSublayer(drawLayer().3)
        
        brickView2.layer.addSublayer(drawLayer().0)
        brickView2.layer.addSublayer(drawLayer().1)
        brickView2.layer.addSublayer(drawLayer().2)
        brickView2.layer.addSublayer(drawLayer().3)
        
        brickView3.layer.addSublayer(drawLayer().0)
        brickView3.layer.addSublayer(drawLayer().1)
        brickView3.layer.addSublayer(drawLayer().2)
        brickView3.layer.addSublayer(drawLayer().3)
        
        brickView4.layer.addSublayer(drawLayer().0)
        brickView4.layer.addSublayer(drawLayer().1)
        brickView4.layer.addSublayer(drawLayer().2)
        brickView4.layer.addSublayer(drawLayer().3)
        
    }
    
    func drawLayer() -> (CAShapeLayer, CAShapeLayer, CAShapeLayer, CAShapeLayer) {
        /// shape 1 - top
        let shapeLayer = CAShapeLayer()
        //        // kích thước squareView
        //        let L = brickView.frame.size.width
        // x = 1/10L là đoạn kích thước thụt vào
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.3
        topLayer.path = path1.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        
        //        brickView.layer.addSublayer(shapeLayer)
        //        brickView2.layer.addSublayer(shapeLayer)
        //        brickView3.layer.addSublayer(shapeLayer)
        //        brickView4.layer.addSublayer(shapeLayer)
        
        /// shape 2 - left
        let shapeLayer2 = CAShapeLayer()
        
        let topLayer2 = CAShapeLayer()
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: 0, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: L))
        path2.addLine(to: CGPoint(x: x, y: L - x))
        path2.addLine(to: CGPoint(x: x, y: x))
        
        topLayer2.fillColor = UIColor.white.cgColor
        topLayer2.opacity = 0.3
        topLayer2.path = path2.cgPath
        shapeLayer2.insertSublayer(topLayer2, at: 0)
        

        /// shape 3 - bottom
        let shapeLayer3 = CAShapeLayer()
        
        let topLayer3 = CAShapeLayer()
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 0, y: L))
        path3.addLine(to: CGPoint(x: L, y: L))
        path3.addLine(to: CGPoint(x: L - x, y: L - x))
        path3.addLine(to: CGPoint(x: x, y: L - x))
        
        topLayer3.fillColor = UIColor.black.cgColor
        topLayer3.opacity = 0.1
        topLayer3.path = path3.cgPath
        shapeLayer3.insertSublayer(topLayer3, at: 0)
        
        
        /// shape 4 - right
        let shapeLayer4 = CAShapeLayer()
        
        let topLayer4 = CAShapeLayer()
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: L, y: L))
        path4.addLine(to: CGPoint(x: L, y: 0))
        path4.addLine(to: CGPoint(x: L - x, y: x))
        path4.addLine(to: CGPoint(x: L - x, y: L - x))
        
        topLayer4.fillColor = UIColor.black.cgColor
        topLayer4.opacity = 0.1
        topLayer4.path = path4.cgPath
        shapeLayer4.insertSublayer(topLayer4, at: 0)
    
        
        return (topLayer, topLayer2, topLayer3, topLayer4)
    }
    
}

