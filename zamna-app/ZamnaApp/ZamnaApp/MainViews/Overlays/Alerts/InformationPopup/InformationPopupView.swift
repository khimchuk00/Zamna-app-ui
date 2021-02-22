import SwiftUI

private struct InformationPopupView: View {
    
    @Binding var isPresented: Bool
    var model: InformationPopupViewModel
    
    private let popupViewWidth: CGFloat = 280
    
    var body: some View {
        ZStack {
            ThemeBlackBackgroundGradient()
                .blur(radius: 200, opaque: true)
                .opacity(0.9)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                VStack(spacing: 10) {
                    ZStack {
                        model.image
                            .resizable()
                            .frame(height: 32)
                            .aspectRatio(contentMode: .fit)
                        
                        HStack(alignment: .top) {
                            Spacer()
                                .frame(maxWidth: .infinity)
                            Button {
                                isPresented = false
                            } label: {
                                Image("circle_cross_image")
                            }
                        }
                    }
                    
                    Text(model.title)
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProTextSemibold(size: 17))
                        .multilineTextAlignment(.center)
                    
                    Text(model.text)
                        .foregroundColor(Color.Theme.gray6)
                        .font(Font.Theme.sfProText(size: 14))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                                        
                }.padding(16)
                
                Divider()
                    .background(Color.white.opacity(0.3))
                
                VStack(spacing: 10) {
                    Text("Did you know")
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProTextSemibold(size: 17))
                        .multilineTextAlignment(.center)
                    
                    Text(model.tipText)
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProText(size: 14))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(16)
                .background(model.type.tipsGradient)
                
                Button {
                    
                } label: {
                    Text("Learn more")
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProTextSemibold(size: 17))
                        .padding(12)
                }
                .frame(maxWidth: .infinity)
                .background(model.type.buttonColor)

            }
            .frame(width: popupViewWidth)
            .background(Color.Theme.alertBacgroundBlack.opacity(0.75))
            .cornerRadius(14)
        }
    }
}

extension View {
    func infoPopup(isPresented: Binding<Bool>, infoModel: InformationPopupViewModel) -> some View {
        present(isPresented: isPresented, transitionType: .opacity) {
            InformationPopupView(isPresented: isPresented, model: infoModel)
        }
    }
}
