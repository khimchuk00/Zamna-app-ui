import SwiftUI

struct VerifiedAPISOverlaySecondView: View {
    
    @Binding var index: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            Image("verified_APIS_overlay_2_img")
                .onAppear {
                    index = 1
                }
                .padding(.bottom, 20)
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text("verified2_mainText1".localized())
                    .makePlainText()
                
                Group {
                    Text("verified2_mainText2".localized())
                        .makePlainText() +
                    Text("verified2_mainText3".localized())
                        .makeHighlightedText() +
                    Text("verified2_mainText4".localized())
                        .makePlainText() +
                    Text("verified2_mainText5".localized())
                        .makeHighlightedText()
                }
                
                Text("verified2_mainText6".localized())
                    .makePlainText()
            }
        }
    }
}
