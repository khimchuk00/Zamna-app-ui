import SwiftUI
import UIKit

struct ThemeNavigationBarModifier: ViewModifier {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .clear
        appearance.configureWithTransparentBackground()
        
        let attributes: [NSAttributedString.Key : Any] =  [
            .foregroundColor: UIColor.white,
            .font: UIFont(name: "SFProDisplay-Semibold", size: 24)!
        ]
        
        appearance.titleTextAttributes = attributes
        appearance.largeTitleTextAttributes = attributes
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().tintColor = .white
        
    }
    
    func body(content: Content) -> some View {
        content
    }
}

extension NavigationView {
    func themeStyle() -> some View {
        self.modifier(ThemeNavigationBarModifier())
    }
}
