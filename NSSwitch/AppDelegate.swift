import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
   @IBOutlet weak var window: NSWindow!
   /**
    * Creates the view
    */
   lazy var view: NSView = createView()
   func applicationDidFinishLaunching(_ aNotification: Notification) {
      _ = view
   }
}
extension AppDelegate {
   func createView() -> NSView {
      let contentRect = window.contentRect(forFrameRect: window.frame) // size of win sans titlebar
      let view: View = .init(frame: contentRect)
      window.contentView = view
      view.layer?.backgroundColor = NSColor.white.cgColor
      return view
   }
}
open class View: NSView {
   override open var isFlipped: Bool { return true } // TopLeft orientation
   override public init(frame: CGRect) {
      super.init(frame: frame)
      Swift.print("hello world")
      self.wantsLayer = true // If true then view is layer backed
      // switch component
      let switchComponent: SwitchComponent = .init(text: "Toggle: ", selected: false)
      self.addSubview(switchComponent)
      switchComponent.anchorAndSize(to: self, /*width: 200,*/ height: 32, offset: .init(x: 20, y: 20), sizeOffset: .init(width: -40, height: 0))
   }
   /**
    * Boilerplate
    */
   public required init?(coder decoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
