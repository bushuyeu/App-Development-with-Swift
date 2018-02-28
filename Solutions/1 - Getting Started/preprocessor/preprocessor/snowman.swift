//
//  snowman.swift
//  preprocessor
//
//  Created by Pavel Bushuyeu on 2/27/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

class snowman: UIView {

//    let path = UIBezierPath()
//
//
//    override func draw(_ rect: CGRect) {
//        // Drawing code
//
//        path.move(to: CGPoint(x: 100, y: 60))
//        path.addLine(to: CGPoint(x: 140, y: 150))
//        path.addLine(to: CGPoint(x: 20, y: 150))
//        path.close()
//
//        UIColor.green.setFill()
//        UIColor.brown.setStroke()
//        path.lineWidth = 3.0
//
//        path.fill()
//        path.stroke()
//    }

    
    
    private let scale: CGFloat = 0.9
    
    private var height: CGFloat {
        return min(bounds.size.width, bounds.size.height)
    }
    
    private var radiusBottom: CGFloat {
        return height / 5
    }
    
    private var radiusBody: CGFloat {
        return height / 7
    }
    
    private var radiusHead: CGFloat {
        return height / 10
    }
    
    private var bottomCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY + radiusBody + radiusHead)
    }
    
    private var bodyCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY + radiusBottom + radiusHead)
    }
    
    private var headCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY + radiusBottom + radiusBody)
    }
    
    private func pathForFirstCicrle() -> UIBezierPath {
        let firstCirclePath = UIBezierPath(arcCenter: bottomCenter, radius: radiusBottom , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        firstCirclePath.lineWidth = 5.0
        
        return firstCirclePath
    }
    
    private func pathForBodyCicrle() -> UIBezierPath {
        let bodyPath = UIBezierPath(arcCenter: bodyCenter, radius: radiusBody , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        bodyPath.lineWidth = 5.0
        
        return bodyPath
    }
    
    private func pathForheadCicrle() -> UIBezierPath {
        let headPath = UIBezierPath(arcCenter: headCenter, radius: radiusHead , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        
        headPath.lineWidth = 5.0
        
        return headPath
    }
    
    override func draw(_ ract: CGRect) {
        UIColor.blue.setStroke()
        pathForBodyCicrle().stroke()
        UIColor.blue.setStroke()
        pathForheadCicrle().stroke()
        UIColor.blue.setStroke()
        pathForheadCicrle().stroke()
        UIColor.blue.setStroke()
        pathForEye(Eye.left).stroke()
        pathForEye(Eye.right).stroke()
    }
    
    private struct Constant {
    static let headRadiusToEyeOffset: CGFloat = 3
    static let headRadiusToEyeRadius: CGFloat = 10
    }
    
    
    enum Eye {
    case left
    case right
        
    }
    private func pathForEye(_ eye: Eye) -> UIBezierPath {
        func centerOfEye(_ eye: Eye) -> CGPoint {
            let eyeOffset = radiusHead / Constant.headRadiusToEyeOffset
            var eyeCenter = headCenter
            eyeCenter.y -= eyeOffset
            eyeCenter.x += ((eye == .left) ? -1 : 1) * eyeOffset
            return eyeCenter
        }
        let eyeRadius = radiusHead / Constant.headRadiusToEyeOffset
        let eyeCenter = centerOfEye(eye)
        
        var eyePath = UIBezierPath()
        eyePath = UIBezierPath(arcCenter: eyeCenter, radius: eyeRadius, startAngle: 0, endAngle: CGFloat.pi , clockwise: false)
        eyePath.lineWidth = 2.0
        
        return eyePath
    }
    
    
    
    
    
}
