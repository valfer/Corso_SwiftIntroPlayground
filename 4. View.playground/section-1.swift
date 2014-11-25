import UIKit

/*
- visualizzazione assistant
- proprietà calcolate get/set
- observer didSet willSet
- required = obbligatorio override
- reference type (no value)
*/

class View : UIView {
    
    var area : Double {
        get {
            return Double(bounds.size.width) * Double(bounds.size.height)
        }
        set {
            // ...
        }
    }
    
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
}

let v = View(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

/*
- reference type
*/

var v2 = v
v2.customBackgroundColor = UIColor.blueColor()
v
