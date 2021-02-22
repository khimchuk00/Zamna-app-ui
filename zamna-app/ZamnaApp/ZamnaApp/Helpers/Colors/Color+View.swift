import SwiftUI

struct ThemeBlackBackgroundGradient: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.Theme.backgroundBlackTop, Color.Theme.backgroundBlackBottom]),
                       startPoint: .top,
                       endPoint: .bottom)
    }
}

struct DocumentBackgroundGradient: View {
    var color: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [color, color.opacity(0.6)]),
                       startPoint: .leading,
                       endPoint: .trailing)
    }
}
