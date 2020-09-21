import Cocoa
import QuartzCore
/**
 * Typealias
 */
extension TextButton {
   /**
    * - Fixme: ⚠️️ Rename to Style?
    * - Fixme: ⚠️️ Add buttonStyle and lable style instead?
    */
   public struct TextButtonStyle {
      let backgroundColor: NSColor
      let borderColor: NSColor
      let textColor: NSColor
      let borderWidth: CGFloat
      let isRounded: Bool
   }
}
extension TextButton.TextButtonStyle {
   /**
    * Convert text-style to button-style
    */
   internal var buttonStyle: Button.Style {
      .init(backgroundColor: self.backgroundColor, borderColor: self.borderColor, borderWidth: self.borderWidth, isRounded: false)
   }
}
/**
 * Const
 */
extension TextButton.TextButtonStyle {
   public static let defaultTextButtonStyle: TextButton.TextButtonStyle = .init(backgroundColor: .white, borderColor: .black, textColor: .black, borderWidth: 1, isRounded: false)
   public static let alternateTextButtonStyle: TextButton.TextButtonStyle = .init(backgroundColor: .black, borderColor: .white, textColor: .white, borderWidth: 1, isRounded: false)
}
