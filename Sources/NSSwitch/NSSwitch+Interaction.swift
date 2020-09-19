import Foundation
/**
 * Interaction
 */
extension NSSwitch {
   /**
    * onTapUpInside
    */
   override open func onUpInside() {
      //      Swift.print("onUpInside")
      super.onUpInside()
      selected.toggle()
   }
}
