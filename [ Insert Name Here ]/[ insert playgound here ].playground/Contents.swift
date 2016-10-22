import UIKit
import PlaygroundSupport
let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 667.0))
containerView.backgroundColor = UIColor.white

PlaygroundPage.current.liveView = containerView
let circle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height:  50.0))

circle.center = containerView.center

circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red: (0.0/255.0), green: (0.0/255.0), blue: (255.0/255.0), alpha: 1.0)
circle.backgroundColor = startingColor
containerView.addSubview(circle);

let rectangle = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50.0, height: 50.0))

rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0

rectangle.backgroundColor = UIColor.black

containerView.addSubview(rectangle)

UIView.animate ( withDuration: 2.0, animations: { () -> Void in let endingColor = UIColor(red: (61/255), green: (255.0/255.0), blue: (24.0/255.0), alpha: 1.0)
circle.backgroundColor = endingColor

    let scaleTransform = CGAffineTransform(scaleX: 5.0, y:5.0)

circle.transform = scaleTransform

    let rotationTransform = CGAffineTransform(rotationAngle: 3.14)

rectangle.transform = rotationTransform
})