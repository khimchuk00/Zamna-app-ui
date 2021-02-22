import SwiftUI

struct InformationPopupViewModel {
    var type: AlertType
    var image: Image
    var title: String
    var text: String
    var tipText: String
}

extension InformationPopupViewModel {
    enum AlertType {
        case info
        case error
        
        var buttonColor: Color {
            switch self {
            case .info:
                return Color.Theme.alertButtonBlue.opacity(0.8)
            case .error:
                return Color.Theme.alertButtonRed.opacity(0.8)
            }
        }
        
        var tipsGradient: LinearGradient {
            let colors: [Color]
            switch self {
            case .info:
                colors = [
                    Color.Theme.alertBlue.opacity(0.1),
                    Color.Theme.alertBlue.opacity(0.5)
                ]
            case .error:
                colors = [
                    Color.Theme.alertRed.opacity(0),
                    Color.Theme.alertRed.opacity(0.6)
                ]
            }
            return LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
        }
    }
}
