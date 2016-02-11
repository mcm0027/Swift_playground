//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
let redView = UIView(frame: CGRect(x: 10, y: 30, width: 60, height: 50))

redView.backgroundColor = UIColor.redColor()

view.backgroundColor = UIColor.yellowColor()

view.addSubview(redView)
XCPlaygroundPage.currentPage.liveView = view


class Shape: UIView {
    var color:UIColor
       init(color:UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }

    func getArea() -> Double {
        return 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Square: Shape{
    var width:Int
    init(width:Int, color:UIColor) {
        self.width = width
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Circle: Shape{
    var height:Double
    var radius:Double
    var width:Double
    init(radius:Double, color:UIColor) {
        self.height = radius * 2
        self.width = radius * 2
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: self.width, height: self.height)
        self.layer.cornerRadius = CGFloat(radius)
    }
    override func getArea() -> Double {
        return(Double(radius * radius * M_PI))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var circle = Circle(radius: 50, color: UIColor.blackColor())
var square = Square(width: 100, color: UIColor.redColor())

circle.center = CGPoint(x: 100, y: 100)
square.center = CGPoint(x: 200, y: 200)

view.addSubview(circle)
view.addSubview(square)

class Rectangle: Shape{
    var width:Int
    var height:Int
    init(width:Int, height:Int, color:UIColor) {
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var rectangle = Rectangle(width: 10, height: 100, color: UIColor.purpleColor())

rectangle.center = CGPoint(x: 60, y: 250)

view.addSubview(rectangle)


class RoundedRec: Shape{
    var width:Int
    var height:Int
    var borderRadius: Int
    init(width:Int, height:Int, borderRadius:Int, color:UIColor) {
        self.width = width
        self.height = height
        self.borderRadius = borderRadius
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
        self.layer.cornerRadius = CGFloat(self.borderRadius)
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var roundRectangle = RoundedRec(width: 10, height: 100, borderRadius: 10, color: UIColor.purpleColor())

roundRectangle.center = CGPoint(x: 120, y: 250)

view.addSubview(roundRectangle)

