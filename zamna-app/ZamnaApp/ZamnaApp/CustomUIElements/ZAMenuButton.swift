import SwiftUI

struct ZAMenuButton: View {

    var action: () -> Void
    var title: String
    var imgName: String
    
    public init(action: @escaping () -> Void, title: String, imgName: String) {
        self.action = action
        self.title = title
        self.imgName = imgName
    }
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 16) {
                Image(imgName)
                    .resizable()
                    .frame(width: 24, height: 24)
                Text(title.localized())
                    .makeMenuButtonsText()
            }
        }
    }
}
