import SwiftUI

struct VerifiedAPISOperlaySwipeView: View {
    
    @State private var currentPageIndex = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                ThemeBlackBackgroundGradient().ignoresSafeArea()
                
                VStack(alignment: .center) {
                    
                    Text("verified_title".localized())
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProTextSemibold(size: 24))
                        .multilineTextAlignment(.center)
                        .padding(.top, 3)
                    
                    PageControl(pagesCount: 2, currentPage: currentPageIndex)
                        .padding(.top, 16)
                                        
                    TabView {
                        VerifiedAPISOverlayFirstView(index: $currentPageIndex)
                        VerifiedAPISOverlaySecondView(index: $currentPageIndex)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    Spacer()
                    
                }.padding(.horizontal, 15)
            }.navigationBarTitle("", displayMode: .inline)
        }.themeStyle()
    }
}
