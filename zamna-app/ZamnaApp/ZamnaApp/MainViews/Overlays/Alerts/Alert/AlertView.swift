import SwiftUI

private struct AlertView<Content: View>: View {
    
    @Binding var isPresented: Bool
    let alertViewModel: AlertViewModel
    let contentProvider: () -> Content
    
    private let popupViewWidth: CGFloat = 280
    
    var body: some View {
        ZStack {
            ThemeBlackBackgroundGradient()
                .blur(radius: 200, opaque: true)
                .opacity(0.9)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 10) {
                VStack(spacing: 10) {
                    Unwrap(alertViewModel.image) { image in
                        image
                            .padding(.top, 10)
                    }
                    
                    Text(alertViewModel.title)
                        .font(Font.Theme.sfProDisplaySemibold(size: 17))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                }
                
                contentProvider()
                
                Divider()
                    .background(Color.white.opacity(0.3))
                    .padding(.top, 10)
                
                HStack(spacing: 10) {
                    Apply(alertViewModel.leftButton) { btn in
                        Button(action: {
                            isPresented = false
                            btn.action?()
                        }) {
                            btn.generateText()
                                .padding(12)
                        }
                        .frame(maxWidth: .infinity)
                        .background(btn.getColor())
                        .cornerRadius(8)
                    }
                    
                    Unwrap(alertViewModel.rightButton) { btn in
                        Button(action: {
                            isPresented = false
                            btn.action?()
                        }) {
                            btn.generateText()
                                .padding(12)
                        }
                        .frame(maxWidth: .infinity)
                        .background(btn.getColor())
                        .cornerRadius(8)
                    }
                }
                
            }
            .padding(10)
            .frame(width: popupViewWidth)
            .background(Color.Theme.alertBacgroundBlack.opacity(0.75))
            .cornerRadius(14)
        }
    }
}

extension View {
    func customAlert<Content: View>(isPresented: Binding<Bool>, alertModel: AlertViewModel, @ViewBuilder content: @escaping () -> Content) -> some View {
        present(isPresented: isPresented, transitionType: .opacity) {
            AlertView(isPresented: isPresented, alertViewModel: alertModel, contentProvider: content)
        }
    }
}
