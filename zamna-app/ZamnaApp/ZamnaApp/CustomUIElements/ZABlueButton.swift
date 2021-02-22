import SwiftUI

struct ZABlueButton: View {
    
    var title: String
    
    var body: some View {
        Button(action: {}, label: {
            Text(title)
                .font(Font.Theme.sfProTextSemibold(size: 17))
                .foregroundColor(.white)
        })
        .frame(height: 48)
        .background(LinearGradient(gradient: Gradient(colors: [Color.Theme.blueButtonTop, Color.Theme.blueButtonBot]), startPoint: .top, endPoint: .bottom))
        .border(LinearGradient(gradient: Gradient(colors: [Color(.white.withAlphaComponent(0.1)), Color.Theme.blueButtonBorderBot]), startPoint: .top, endPoint: .bottom), width: 2)
        .cornerRadius(8)
    }
}

struct ZABlueButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(Font.Theme.sfProTextSemibold(size: 17))
            .foregroundColor(.white)
            .frame(height: 48)
            .frame(maxWidth: .infinity)
            .background(LinearGradient(gradient: Gradient(colors: [Color.Theme.blueButtonTop, Color.Theme.blueButtonBot]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color(.white.withAlphaComponent(0.1)), Color.Theme.blueButtonBorderBot]), startPoint: .top, endPoint: .bottom), lineWidth: 2))
            
    }
}

