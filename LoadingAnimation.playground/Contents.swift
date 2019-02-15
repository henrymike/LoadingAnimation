import UIKit
import PlaygroundSupport

let canvasView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
canvasView.backgroundColor = UIColor.white

let circleOne = UIView(frame: CGRect(x: 0, y: 0, width: 0.5, height: 0.5))
circleOne.layer.cornerRadius = circleOne.frame.size.width/2
circleOne.center.x = canvasView.center.x
circleOne.center.y = canvasView.center.y
circleOne.backgroundColor = UIColor(red: 167/255, green: 216/255, blue: 154/255, alpha: 0.75)

let circleTwo = UIView(frame: CGRect(x: 0, y: 0, width: 0.5, height: 0.5))
circleTwo.layer.cornerRadius = circleTwo.frame.size.width/2
circleTwo.center.x = canvasView.center.x
circleTwo.center.y = canvasView.center.y
circleTwo.backgroundColor = UIColor(red: 130/255, green: 202/255, blue: 109/255, alpha: 0.55)

canvasView.addSubview(circleOne)
canvasView.addSubview(circleTwo)

UIView.animateKeyframes(withDuration: 1, delay: 1, options: [.autoreverse, .repeat], animations: {
    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
        circleOne.transform = CGAffineTransform.identity.scaledBy(x: 100, y: 100)
    })
}, completion: nil)

UIView.animateKeyframes(withDuration: 1, delay: 0, options: [.autoreverse, .repeat], animations: {
    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
        circleTwo.transform = CGAffineTransform.identity.scaledBy(x: 100, y: 100)
    })
}, completion: nil)

PlaygroundPage.current.liveView = canvasView
