import SwiftUI

struct WalkthroughView: View {
    
    @StateObject var viewModelDTO: WalkthroughViewModelDTO
    
    var body: some View {
        ZStack {
            ThemeBlackBackgroundGradient().ignoresSafeArea()
            GeometryReader { geo in
                VStack (alignment: .center) {
                    Text("mainthrough_title".localized())
                        .font(Font.Theme.sfProDisplay(size: 24))
                        .foregroundColor(.white)
                        .padding(.top, 24)
                    PageControl(pagesCount: 3, currentPage: viewModelDTO.currentPageIndex)
                        .padding(.top, 24)
                    Image(viewModelDTO.itemModel.imgName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.4)
                        .padding(.horizontal, -15)
                        .padding(.top, 33)
                    Text(viewModelDTO.itemModel.mainText)
                        .font(Font.Theme.sfProDisplay(size: 20))
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text(viewModelDTO.itemModel.subText)
                        .font(Font.Theme.sfProText(size: 17))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 16)
                    Spacer()
                    if $viewModelDTO.currentPageIndex.wrappedValue == 2 {
                        HStack {
                            Button(action: {}, label: {
                                Text("mainthrough_letsGoButtonTitle".localized())
                                    .font(Font.Theme.sfProTextSemibold(size: 17))
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .foregroundColor(.white)
                            })
                            .buttonStyle(ZABlueButtonStyle())
                        }
                        .padding(.bottom, 24)
                    } else {
                        HStack (spacing: 10) {
                            Button(action: {viewModelDTO.currentPageIndex = 2}, label: {
                                Text("mainthrough_skipButtonTitle".localized())
                                    .font(Font.Theme.sfProTextSemibold(size: 17))
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .foregroundColor(.white)
                            })
                            .buttonStyle(ZASkipButtonStyle())
                            
                            Button(action: {viewModelDTO.currentPageIndex += 1}, label: {
                                Text("mainthrough_continueButtonTitle".localized())
                                    .font(Font.Theme.sfProTextSemibold(size: 17))
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .foregroundColor(.white)
                            })
                            .buttonStyle(ZABlueButtonStyle())
                        }
                        .padding(.bottom, 24)
                    }
                }.padding(.horizontal, 15)
            }
        }
    }
}
