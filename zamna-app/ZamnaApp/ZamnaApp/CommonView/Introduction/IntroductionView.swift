import SwiftUI

struct IntroductionView: View {
    
    var body: some View {
        ZStack {
            Color.black
            .ignoresSafeArea()
            GeometryReader { geo in
                VStack (alignment: .leading, spacing: 25) {
                    Image(uiImage: UIImage(named: "ZamnaIntroduction") ?? UIImage())
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width * 0.35, height: 43.0)
                        .padding(.top, 72)
                        .padding(.leading, 30)
                    Image(uiImage: UIImage(named: "IntroductionViewImage") ?? UIImage())
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width * 0.9, height: geo.size.height * 0.4)
                        .padding([.top, .bottom], -25)
                    Text("introduction_title".localized())
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProDisplaySemibold(size: 24))
                        .padding(.bottom, -12)
                    Text("introduction_mainText".localized())
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProText(size: 17))
                        .padding(.bottom, 2)
                    ZABlueButton(title: "introduction_buttonTitle".localized())
                    .padding(.bottom, 7)
                    Group {
                        Text("introduction_terms_1_text".localized())
                            .foregroundColor(Color(.white.withAlphaComponent(0.54))) +
                        Text("introduction_terms_2_text".localized())
                            .foregroundColor(.white) +
                        Text("introduction_terms_3_text".localized())
                            .foregroundColor(Color(.white.withAlphaComponent(0.54))) +
                        Text("introduction_terms_4_text".localized())
                            .foregroundColor(.white)
                    }
                }.padding([.leading, .trailing], 15)
            }
        }
    }
}
