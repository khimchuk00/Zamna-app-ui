import SwiftUI

struct ZACustomTextField: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .font(Font.Theme.sfProText(size: 15))
            .foregroundColor(.white)
            .frame(height: 44)
            .padding(.horizontal, 16)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.Theme.preferencesBordersGray, lineWidth: 1))
    }
}
