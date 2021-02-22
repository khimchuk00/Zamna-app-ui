import SwiftUI

struct HowItWorksView: View {
    
    var viewModelDTO: HowItWorksViewModelDTO
    
    var body: some View {
        NavigationView{
            ZStack {
                ThemeBlackBackgroundGradient().ignoresSafeArea()
                
                VStack {
                    Image("how_it_works_header_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    GeometryReader { container in
                        ScrollView(showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 16) {
                                Text(viewModelDTO.mainText)
                                    .multilineTextAlignment(.leading)
                                    .font(Font.Theme.sfProTextSemibold(size: 17))
                                    .foregroundColor(.white)
                                    .fixedSize(horizontal: false, vertical: true)
                                
                                Unwrap(viewModelDTO.subText) { value in
                                    Text(value)
                                        .font(Font.Theme.sfProText(size: 16))
                                        .foregroundColor(Color.Theme.gray6)
                                        .fixedSize(horizontal: false, vertical: true)
                                        .padding(.top, 8)
                                }
                                
                                Spacer().frame(height: 16)
                                
                                ForEach(viewModelDTO.items, id: \.self) { item in
                                    HStack(alignment: .top, spacing: 15) {
                                        Image(item.imgName)
                                            .frame(width: 48, height: 48, alignment: .center)
                                            .background(Color.white.opacity(0.05))
                                            .cornerRadius(12)
                                        Text(item.text)
                                            .font(Font.Theme.sfProText(size: 16))
                                            .foregroundColor(Color.Theme.gray6)
                                            .frame(maxWidth: .infinity)
                                            .fixedSize(horizontal: false, vertical: true)
                                    }
                                    .padding(16)
                                    .frame(width: container.size.width)
                                    .background(Color.Theme.backgroundLightGray)
                                    .cornerRadius(12)
                                }
                            }.padding(.top, 48)
                        }
                    }.padding([.leading, .trailing, .bottom], 16)
                }.ignoresSafeArea(.all, edges: .top)
            }
            .navigationBarTitle(viewModelDTO.title, displayMode: .inline)
        }.themeStyle()
    }
}
