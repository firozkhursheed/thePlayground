import UIKit
import PlaygroundSupport

class Poster: UIView {

  var text: String? {
    didSet {
      textLabel?.text = text
    }
  }

  private var textLabel: UILabel?

  override init(frame: CGRect) {
    super.init(frame: frame)

    didLoad()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    didLoad()
  }

  convenience init() {
    self.init(frame: .zero)
  }

  func didLoad() {
    textLabel = UILabel()
    textLabel?.textColor = .red
    textLabel?.textAlignment = .center
    textLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
    textLabel?.frame = frame
    addSubview(textLabel!)

    layer.cornerRadius = frame.height / 2
    backgroundColor = .white
  }
}
//
//let poster = Poster(frame: CGRect(origin: .zero, size: CGSize(width: 136, height: 34)))
//poster.text = "SUBSCRIBE"
//PlaygroundPage.current.liveView = poster
//
//func addGradientMaskToView(view:UIView, transparency:CGFloat = 0.5, gradientWidth:CGFloat = 40) {
//  let gradientMask = CAGradientLayer()
//  gradientMask.frame = view.bounds
//  let gradientSize = gradientWidth/view.frame.size.width
//  let gradientColor = UIColor(white: 1, alpha: transparency)
//  let startLocations = [0, gradientSize/2, gradientSize]
//  let endLocations = [(1 - gradientSize), (1 - gradientSize/2), 1]
//  let animation = CABasicAnimation(keyPath: "locations")
//
//  gradientMask.colors = [gradientColor.cgColor, UIColor.white.cgColor, gradientColor.cgColor]
//  gradientMask.locations = startLocations as [NSNumber]?
//  gradientMask.startPoint = CGPoint(x:0 - (gradientSize * 2), y: 0.5)
//  gradientMask.endPoint = CGPoint(x:1 + gradientSize, y: 0.5)
//
//  view.layer.mask = gradientMask
//
//  animation.fromValue = startLocations
//  animation.toValue = endLocations
//  animation.repeatCount = HUGE
//  animation.duration = 3
//
//  gradientMask.add(animation, forKey: nil)
//}
//
//addGradientMaskToView(view: poster, transparency: 0.5, gradientWidth: 10)
//
//poster.text = "firoz"


class Hero {
  var name: String
  var mainSuperPower: String
  var superPowers: [String]

  init(name: String, mainPower: String) {
    self.name = name
    self.mainSuperPower = mainPower

    superPowers = [String]()
    superPowers.append(mainPower)
  }
}

extension Hero: CustomPlaygroundDisplayConvertible {
  var playgroundDescription: Any {
    let poster = Poster(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 34)))
    poster.text = name
    return poster
  }
}

extension Hero: CustomStringConvertible {
  var description: String {
    return name
  }
}

let thor = Hero(name: "Thor", mainPower: "Thunder")
let ironMan = Hero(name: "Tony", mainPower: "Brain")

