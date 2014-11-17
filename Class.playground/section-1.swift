// Playground - noun: a place where people can play

import UIKit

let a = 10
let color = UIColor.redColor()

// Fattoriale
var x = 1
let x1 = 180.0
let range : HalfOpenInterval = 1.0...9.5

for i in 0 ... 100 {
    let y = cos(Float(i) * Float(M_PI) / 180.0)
}

class View : UIView {
    
    let customBackgroundColor : UIColor
    
    override init(frame: CGRect) {
        
        customBackgroundColor = UIColor.yellowColor()
        super.init(frame: frame)
        backgroundColor = customBackgroundColor
    }
    
    required init(coder aDecoder: NSCoder) {
        
        customBackgroundColor = UIColor.yellowColor()
        super.init(coder: aDecoder)
    }
    
    override func drawRect(rect: CGRect) {
        
        let bezier = UIBezierPath(ovalInRect: bounds)
        UIColor.orangeColor().set()
        bezier.fill()
    }
}

let v = View(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
