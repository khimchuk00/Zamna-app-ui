import SwiftUI

extension Font {
    
    struct Theme {
        
        enum FontFamily: String {
            case SFProText = "SF-Pro-Text"
            case SFProDisplay = "SF-Pro-Display"
            
            var name: String {
                rawValue
            }
        }

        enum FontStyle: String {
            case regular
            case medium
            case semibold
            case bold
            
            var name: String {
                rawValue.uppercased()
            }
        }
        
        private init() {}
        
        static func getFont(family: FontFamily, style: FontStyle = .regular, size: CGFloat = 16) -> Font {
            .custom([family.name, style.name].joined(separator: "-"), size: size)
        }
        
        static func sfProDisplaySemibold(size: CGFloat) -> Font {
            getFont(family: .SFProDisplay, style: .semibold, size: size)
        }
        
        static func sfProDisplayMedium(size: CGFloat) -> Font {
            getFont(family: .SFProDisplay, style: .medium, size: size)
        }
        
        static func sfProText(size: CGFloat) -> Font {
            getFont(family: .SFProText, size: size)
        }
        
        static func sfProTextSemibold(size: CGFloat) -> Font {
            getFont(family: .SFProText, style: .semibold, size: size)
        }
        
        static func sfProDisplay(size: CGFloat) -> Font {
            getFont(family: .SFProDisplay, size: size)

        }
        
    }
}
