//: [Previous](@previous)

/*:
 Results are shown on the right side in result side bar, for types that are not optimized for playgrounds there are two ways that the playground will generate this description.

 For types that do not conform to Custom String Convertible, a structured representation is created using the Swift type.
 For types that do conform to Custom String Convertible, the result of calling descriptions is used.
*/

/*:
 ## CustomPlaygroundDisplayConvertable

 * It's a new protocol introduced in Xcode 9.3 and Swift 4.1
 * Replaces CustomPlaygroundQuickLookable (Deprecated)


 ```
 extension MyType: CustomPlaygroundDisplayConvertible {
   var playgroundDescription: Any { ... }
 }
```
 `playgroundDescription`: You can return anything that best describes your value

 Already Existing representations:
 ### Textual
 * String, NSString
 * Int, UInt (including the sized variants) Float, Double
 * Bool
 * Date, NSDate NSAttributedString
 * NSNumber
 * NSRange

 ### Graphical
 * URL, NSURL
 * CGPoint
 * CGSize
 * CGRect
 * NSColor, UIColor, CGColor, CIColor
 * NSImage, UIImage, CGImage, CIImage
 * NSBezierPath, UIBezierPath
 * NSView, UIView

*************
Demo 1
*/

//: Show WWDC video sample

//: [Custom Frameworks](@next)
