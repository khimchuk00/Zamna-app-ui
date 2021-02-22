import SwiftUI

struct ZASkipButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.Theme.sfProTextSemibold(size: 17))
            .foregroundColor(.white)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.Theme.skipButtonBorder, lineWidth: 2))
    }
}
