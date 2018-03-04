//
//  snowman.swift
//  preprocessor
//
//  Created by Pavel Bushuyeu on 2/27/18.
//  Copyright © 2018 Pavel Bushuyeu. All rights reserved.
//

import UIKit

@IBDesignable

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

    
class snowman: UIView {
    @IBInspectable
    var isEyeOpen: Bool = true
    
    
    @IBInspectable: UIView {
    var mouthHappy: Double
    
    }
    private let scale: CGFloat = 0.9
    
    private var height: CGFloat {
        return min(bounds.size.width, bounds.size.height)
    }
    
    private var bottomRadius: CGFloat {
        return height / 5
    }
    
    private var bodyRadius: CGFloat {
        return height / 7
    }
    
    private var headRadius: CGFloat {
        return height / 10
    }
    
    private var bottomCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY + bottomRadius + headRadius)
    }
    
    private var bodyCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY + headRadius - bodyRadius)
    }
    
    private var headCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY - 2 * bodyRadius)
    }
    
    private func pathForBottom() -> UIBezierPath {
        let bottomPath = UIBezierPath(arcCenter: bottomCenter, radius: bottomRadius , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        bottomPath.lineWidth = 5.0
        return bottomPath
    }
    
    private func pathForBody() -> UIBezierPath {
        let bodyPath = UIBezierPath(arcCenter: bodyCenter, radius: bodyRadius , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        bodyPath.lineWidth = 5.0
        return bodyPath
    }
    
    private func pathForHead() -> UIBezierPath {
        let headPath = UIBezierPath(arcCenter: headCenter, radius: headRadius , startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        headPath.lineWidth = 5.0
        return headPath
    }
    
    override func draw(_ rect: CGRect) {
        UIColor.blue.setStroke()
        pathForBody().stroke()
        UIColor.blue.setStroke()
        pathForHead().stroke()
        UIColor.blue.setStroke()
        pathForBottom().stroke()
        UIColor.blue.setStroke()
        pathForEye(Eye.left).stroke()
        pathForEye(Eye.right).stroke()
        
        
        // String vs NSString
        
//        let text = NSAttributedString(string: "Hello")
//        text.draw(at: CGPoint(x: 200, y: 200))
//        let sizeOfString: CGSize = text.size()
//        print(text)
        
        
        let pizzaName = "Pizza Joe"
        var attributedString = NSMutableAttributedString(string: pizzaName)
        let firstWordRange = pizzaName.startIndex..<pizzaName.index(of: " ")!
        let nsRange = NSRange(firstWordRange, in: pizzaName)
        attributedString.addAttribute(.strokeColor, value: UIColor.blue, range: nsRange)
        attributedString.draw(at: CGPoint(x:200, y:200))
    }
    
    private struct Constant {
    static let headRadiusToEyeOffset: CGFloat = 3
    static let headRadiusToEyeRadius: CGFloat = 10
    }
    
    
    enum Eye {
    case left
    case right
        
    }
    
    private func pathForMouth() -> UIBezierPath {
        let mouthWidth = headRadius / Constants.headRadiusToMouthWidth
        let mouthHeight = headRadius / Constants.headRadiusToMouthHeight
        let mouthOffset = headRadius / Constants.headRadiusToMouthOffset
        
        let controlPointOffset = CGFloat(max(-1.0, min(1, mouthHappy))) * mouthHeight
        
        let mouthRect = CGRect(x: headCenter.x - mouthWidth / 2, y: headCenter.y + mouthWidth, width: mouthWidth, height: mouthHeight)
        
        let startPoint = CGPoint(x: mouthRect.minX, y: mouthRect.midY)
        
        let endPoint = CGPoint(x: mouthRect.maxX, y: mouthRect.midY)
        
        let controlPoint1 = CGPoint(x: startPoint.x + mouthRect.width / 3, y: startPoint.y + controlPointOffset)
        
        let controlPoint2 = CGPoint(x: endPoint.x - mouthRect.width / 3, y: startPoint.y + controlPointOffset)
        let path = UIBezierPath()
        path.move(to: <#T##CGPoint#>)
        
        
        
        return path
    }
    
    private func pathForEye(_ eye: Eye) -> UIBezierPath {
        func centerOfEye(_ eye: Eye) -> CGPoint {
            let eyeOffset = headRadius / Constant.headRadiusToEyeOffset
            var eyeCenter = headCenter
            eyeCenter.y -= eyeOffset
            eyeCenter.x += ((eye == .left) ? -1 : 1) * eyeOffset
            return eyeCenter
        }
        let eyeRadius = headRadius / Constant.headRadiusToEyeOffset
        let eyeCenter = centerOfEye(eye)
        
        var eyePath = UIBezierPath()
        eyePath = UIBezierPath(arcCenter: eyeCenter, radius: eyeRadius, startAngle: 0, endAngle: 2 * CGFloat.pi , clockwise: false)
        eyePath.lineWidth = 2.0
        
        return eyePath
    }
    
    private struct Constants {
        static let headRadiusToEyeOffset: CGFloat = 3
        static let headRadiusToEyeRadius: CGFloat = 10
        static let headRadiusToMouthOffset: CGFloat = 3
        static let headRadiusToMouthWidth: CGFloat = 3
        static let headRadiusToMouthHeight: CGFloat = 3
    }
    
    
    
    
    
}
