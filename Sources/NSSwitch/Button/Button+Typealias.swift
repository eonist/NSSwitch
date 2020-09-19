import Foundation
import QuartzCore
import Cocoa
/**
 * Type
 */
extension Button {
   // Closure signatures
   public typealias UpInsideCallBack = () -> Void
   public typealias UpOutsideCallBack = () -> Void
   public typealias DownCallBack = () -> Void
   public typealias UpCallBack = () -> Void
   public typealias OverCallBack = () -> Void
   public typealias OutCallBack = () -> Void
   // Style
   public typealias Style = (backgroundColor: NSColor, borderColor: NSColor, borderWidth: CGFloat, isRounded: Bool)
}
