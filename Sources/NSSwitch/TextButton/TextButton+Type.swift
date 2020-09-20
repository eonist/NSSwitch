import Cocoa
import QuartzCore
/**
 * Typealias
 */
extension TextButton {
   public typealias TextButtonStyle = (backgroundColor: NSColor, borderColor: NSColor, textColor: NSColor, borderWidth: CGFloat)
   public static let defaultTextButtonStyle: TextButtonStyle = (backgroundColor: .white, borderColor: .black, textColor: .black, borderWidth: 1)
   public static let alternateTextButtonStyle: TextButtonStyle = (.black, .white, .white, 1)
}
