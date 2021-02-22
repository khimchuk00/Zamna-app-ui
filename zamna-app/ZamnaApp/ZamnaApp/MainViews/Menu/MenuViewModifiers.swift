import SwiftUI

extension Text {
    func makeMenuButtonsText() -> Text {
        self.font(Font.Theme.sfProText(size: 17))
            .foregroundColor(.white)
    }
    
    func makePreferencesHeaderText() -> Text {
        self.foregroundColor(.white.opacity(0.72))
            .font(Font.Theme.sfProText(size: 13))
    }
}
