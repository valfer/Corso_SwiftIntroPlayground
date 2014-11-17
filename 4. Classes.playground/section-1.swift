// Playground - noun: a place where people can play

import UIKit

/*** Classes ***/

/*
    - differenze con enum
        - ereditarietà
        - observer didSet willSet (c'era anche per le struct)
        - reference type (no value)
        - deinit
*/

class View : UIView {
    
    var customBackgroundColor : UIColor {
        didSet {
            self.backgroundColor = customBackgroundColor
        }
    }
    
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
    
    deinit {
        // ...
    }
}

let v = View(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

/*
    - reference type
*/

var v2 = v
v2.customBackgroundColor = UIColor.blueColor()
v

/*
    - typecast dinamico al runtime
*/

let vUIView = v as UIView









