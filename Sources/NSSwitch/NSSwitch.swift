import Cocoa
import Spatial
import QuartzCore

open class NSSwitch: Button, Selectable {
   var switchStyles: SwitchStyles
   public var switchStyle: SwitchStyle
   public lazy var foreground: SwitchForeground = createForeground()
   open var selected: Bool {
      didSet {
         self.switchStyle = self.selected ? switchStyles.selected : switchStyles.unSelected
         //         self.caLayer?.borderColor = style.borderColor.cgColor
         super.style.backgroundColor = self.switchStyle.backgroundColor
         foreground.layer?.backgroundColor = self.switchStyle.foregroundColor.cgColor
         //         self.caLayer?.borderWidth = style.borderWidth
         toggleForegroundPosition()
      }
   }
   /**
    * Initiate
    */
   public init(isSelected: Bool, styles: SwitchStyles = defaultSwitchStyles, frame: CGRect = .zero) {
      self.selected = isSelected
      self.switchStyles = styles
      self.switchStyle = isSelected ? styles.selected : styles.unSelected
      let selectedStyle: Style = (styles.selected.backgroundColor, NSColor.clear, 0, true)
      let unSelectedStyle: Style = (styles.unSelected.backgroundColor, NSColor.clear, 0, true)
      let style: Style = isSelected ? selectedStyle : unSelectedStyle
      super.init(style: style, frame: frame)
      _ = foreground
      _ = { self.selected = self.selected }() // hack
   }
}
