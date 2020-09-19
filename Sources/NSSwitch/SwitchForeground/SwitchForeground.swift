import Cocoa
import Spatial
import QuartzCore

public class SwitchForeground: NSView, ConstraintKind {
   /**
    * - Abstract: Anchor and size stores the autolayout-constraints
    * - Note: We have to store the constraints because we animate them
    */
   public var anchor: (x: NSLayoutConstraint, y: NSLayoutConstraint)?
   public var size: (w: NSLayoutConstraint, h: NSLayoutConstraint)?
   /**
    * - Parameters:
    *   - backgroundColor: the background color of the switch-foreground
    *   - frame: Initial size and position of the frame
    */
   init(backgroundColor: NSColor, frame: CGRect) {
      super.init(frame: frame)
      self.layer?.backgroundColor = backgroundColor.cgColor
      self.layer?.rasterizationScale = 2.0 * NSScreen.main!.backingScaleFactor
      self.layer?.shouldRasterize = true
      #if os(iOS)
      self.isUserInteractionEnabled = false // ⚠️️ iOS might support hitTest as well
      #endif
   }
   /**
    * - Note: Avoid having to repeat this method in every subclass that uses :UIView / :NSView
    */
   @available(*, unavailable)
   public required init?(coder: NSCoder) {
      fatalError("init?(coder:) is not supported")
   }
}
extension SwitchForeground {
   /**
    * - Note: This is the only place to get frame.height consistently (when you use either AutoLayout or CGRect based layout)
    */
   override open func layout() {
      super.layout()
      self.layer?.cornerRadius = self.frame.size.height / 2
   }
   override public func hitTest(_ point: CGPoint) -> View? {
      nil
   }
}
