//: [Previous](@previous)

//: # Updates in new Playground (with Xcode 10)
//: ## Step by step execution

"The Play button follows the pointer"
"Blue means ready to execute"
"Run to line..."

"Gray means already executed or not a top-level line of code"

do {
  "...to top-level statements only"
}

"Shift+Return = Execute current line/ cursor"

"Tap stop (◻️) to reset"

func shout(message: String) {
  print(message.uppercased())
}

shout(message: "Hello, Swift Bengaluru")

//: Blue also means safe to edit without resetting Playground
//: ### Why is it important?
/*:
If you edit code above the blue line this is modifying code that you've already executed. So you'll have to reset your playground to take account of your changes. When you edit code above the blue line, the playground resets automatically.

 ### So why run in a step-by-step fashion?
* Executing just one more line is fast. It's way faster than restarting a playground and waiting for it to catch up with your thoughts.
 * It allows you to respond to live data. Write a line of code, execute it, see what the results are.
 * Rerunning a playground every time can give you different values every time. (For instance, if you are handling a network resource or you're generating random numbers.)
 * By executing step-by-step your data model stays stable and easier to understand.
 */

/*:
 ## Step by step Suggests
 * Create a follow-along tutorial for you API
 * Explore data from map, public statics, etc.
 * Create and play a game or animation on the fly
 */
//: Interact with dynamic live view (Not xcode 10 specific)

//: [Live View](@next)
