import SwiftUI

extension Text {
    func makePlainText() -> Text {
        self.foregroundColor(Color.white.opacity(0.72))
            .font(Font.Theme.sfProText(size: 17))
    }
    
    func makeHighlightedText() -> Text {
        self.foregroundColor(.white)
            .font(Font.Theme.sfProTextSemibold(size: 17))
    }
}
