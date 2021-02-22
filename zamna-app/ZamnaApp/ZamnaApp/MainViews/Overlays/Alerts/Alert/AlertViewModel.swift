import SwiftUI

struct AlertViewModel {
    var image: Image?
    var title: String
    var leftButton: Button
    var rightButton: Button?
    
    init(image: Image? = nil, title: String, button: Button) {
        self.image = image
        self.title = title
        self.leftButton = button
        self.rightButton = nil
    }
    
    init(image: Image? = nil, title: String, leftButton: Button, rightButton: Button) {
        self.init(image: image, title: title, button: leftButton)
        self.rightButton = rightButton
    }
}

extension AlertViewModel {
    struct Button {
        private var title: String
        private var type: ButtonType
        var action: (() -> Void)?
        
        init(title: String, type: ButtonType, action: (() -> Void)? = nil) {
            self.title = title
            self.type = type
            self.action = action
        }
        
        func generateText() -> Text {
            Text(title)
                .foregroundColor(type.titleColor)
                .font(Font.Theme.sfProTextSemibold(size: 17))
        }
        
        func getColor() -> Color {
            type.bgColor
        }
    }
}

extension AlertViewModel.Button {
    enum ButtonType {
        case `default`
        case destructive
        case plain
        
        var bgColor: Color {
            switch self {
            case .default:
                return .clear
            case .destructive:
                return Color.Theme.lightRed
            case .plain:
                return Color.Theme.alertButtonBlue
            }
        }
        
        var titleColor: Color {
            switch self {
            case .default:
                return Color.white.opacity(0.72)
            case .destructive:
                return Color.white
            case .plain:
                return Color.white
            }
        }
    }
}
