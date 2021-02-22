import SwiftUI

struct VerifiedAPISOverlayFirstView: View {
    
    @Binding var index: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            Image("verified_APIS_overlay_1_img")
                .onAppear {
                    index = 0
                }
            
            VStack(alignment: .leading, spacing: 20) {
                ForEach(1..<5) { item in
                    Text("verified1_mainText\(item)".localized())
                        .makePlainText()
                }
            }
        }
    }
}

