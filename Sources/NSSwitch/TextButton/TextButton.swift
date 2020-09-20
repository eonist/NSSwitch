import Foundation
import QuartzCore
import NSLabel

open class TextButton: Button {
   public lazy var textLabel: NSLabel = createTextLabel()
   var textButtonStyle: TextButtonStyle {
      didSet {
         let style: Button.Style = .init(backgroundColor: textButtonStyle.backgroundColor, borderColor: textButtonStyle.borderColor, borderWidth: textButtonStyle.borderWidth, isRounded: false) // convert text-style to button-style
         super.style = style
         textLabel.textColor = textButtonStyle.textColor
      }
   }
   internal var text: String // Text
   /**
    * - Parameters:
    *   - text: The initial text
    *   - style: The initial TextButton style
    *   - frame: The initial size and position
    */
   public init(text: String = "Default", style: TextButton.TextButtonStyle = defaultTextButtonStyle, frame: CGRect = .zero) {
      self.text = text
      self.textButtonStyle = style
      let style: Button.Style = .init(backgroundColor: style.backgroundColor, borderColor: style.borderColor, borderWidth: style.borderWidth, isRounded: false)
      super.init(style: style, frame: frame)
      _ = textLabel
      _ = { self.textButtonStyle = self.textButtonStyle }() // Updates style, a trick to update didSet inside init
   }
}
