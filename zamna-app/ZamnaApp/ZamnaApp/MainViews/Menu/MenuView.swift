import SwiftUI

struct MenuView: View {
    
    @StateObject var viewModelDTO: MenuViewModelDTO
    
    @State private var toggle = true
    
    var body: some View {
        ZStack {
            ThemeBlackBackgroundGradient().ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack(spacing: 16) {
                    Image("profile_img")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .overlay(ProgressRing(percentage: viewModelDTO.profileCompletionPercentage)
                                    .stroke(AngularGradient(
                                                gradient: Gradient(colors: [Color.Theme.menuStrokeBlue, Color.Theme.menuStrokeGreen]),
                                                center: .center,
                                                startAngle: .degrees(90),
                                                endAngle: .degrees(360 * viewModelDTO.profileCompletionPercentage)), lineWidth: 2)
                                    .frame(width: 73, height: 73))
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text(viewModelDTO.name)
                            .font(Font.Theme.sfProDisplaySemibold(size: 20))
                            .foregroundColor(.white)
                        
                        Group {
                            let formatted = String(format: "%.0f", viewModelDTO.profileCompletionPercentage * 100)
                            Text("\(formatted)% ")
                                .foregroundColor(.white)
                                .font(Font.Theme.sfProDisplaySemibold(size: 15)) +
                                Text("menu_completion".localized())
                                .foregroundColor(.white)
                                .font(Font.Theme.sfProText(size: 15))
                        }
                    }
                    Spacer()
                }
                .padding(.top, 36)
                .padding(.bottom, 21)
                
                ScrollView {
                    VStack (alignment: .leading, spacing: 24) {
                        ZAMenuButton(action: {}, title: "menu_wallet", imgName: "wallet_img")
                        ZAMenuButton(action: {}, title: "menu_preferances", imgName: "preferences_img")
                        
                        Divider()
                            .background(Color.white.opacity(0.08))
                            .padding(.horizontal, -6)
                        
                        ZAMenuButton(action: {}, title: "menu_how_it_works", imgName: "how_it_works_img")
                        ZAMenuButton(action: {}, title: "menu_faq", imgName: "faq_img")
                        ZAMenuButton(action: {}, title: "menu_contact", imgName: "contact_us_img")
                        
                        Divider()
                            .background(Color.white.opacity(0.08))
                            .padding(.horizontal, -6)
                        
                        ZAMenuButton(action: {}, title: "menu_share" , imgName: "share_img")
                        
                        Divider()
                            .background(Color.white.opacity(0.08))
                            .padding(.horizontal, -6)
                    }
                    
                    VStack(alignment: .center) {
                        Text("menu_dev_settings".localized())
                            .font(Font.Theme.sfProText(size: 13))
                            .foregroundColor(Color.Theme.gray7)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.vertical, 16)
                    
                    VStack(alignment: .leading, spacing: 24) {
                        HStack {
                            ZAMenuButton(action: {}, title: "menu_data_options", imgName: "data_option_img")
                            
                            Spacer()
                            Toggle("", isOn: $toggle)
                                .labelsHidden()
                                .padding(.trailing, 2)
                        }
                        
                        ZAMenuButton(action: {}, title: "menu_settings", imgName: "settings_img")
                    }
                }
            }
            .padding(.horizontal, 21)
        }
    }
}
