import Cocoa
import NSLabel
/**
 * SwitchButton
 * - Abstract: On or off state (Looks like the classic switch toggle in iOS)
 */
open class SwitchComponent: NSView {
   lazy var textField: NSLabel = createTextField()
   public lazy var switchBox: NSSwitch = createSwitch()
   let text: String
   let switchStyles: NSSwitch.SwitchStyles
   open var selected: Bool {
      didSet {
         switchBox.selected = selected
      }
   }
   /**
    * Initiate
    */
   public init(text: String = "Test", selected: Bool = false, switchStyles: NSSwitch.SwitchStyles = NSSwitch.defaultSwitchStyles) {
      self.text = text
      self.selected = selected
      self.switchStyles = switchStyles
      super.init(frame: .zero)
      _ = switchBox
      _ = textField
   }
   /**
    * Boilerplate
    */
   required public init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
