import SwiftUI

struct PersonalPreferenceView: View {
    
    @State private var name: String = ""
    @State var selected = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ThemeBlackBackgroundGradient().ignoresSafeArea()
                VStack {
                    VStack {
                        Text("preferences_title".localized())
                            .font(Font.Theme.sfProText(size: 14))
                            .foregroundColor(Color.Theme.gray7)
                    }
                    .padding(.top, 8)
                    .padding(.bottom, 40)
                    
                    VStack (alignment: .leading, spacing: 8) {
                        Text("preferences_name".localized())
                            .makePreferencesHeaderText()
                        TextField("", text: $name)
                            .textFieldStyle(ZACustomTextField())
                    }
                    
                    
                    HStack {
                        Text("preferences_seating".localized())
                            .makePreferencesHeaderText()
                        Spacer()
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 8)
                    
                    VStack(spacing: 16) {
                        HStack(spacing: 10) {
                            createButton(title: "preferences_front")
                            createButton(title: "preferences_rear")
                        }
                        
                        HStack(spacing: 10) {
                            createButton(title: "preferences_window")
                            createButton(title: "preferences_aisle")
                        }
                    }
                    
                    HStack {
                        Text("preferences_dietary".localized())
                            .makePreferencesHeaderText()
                        Spacer()
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 8)
                    
                    VStack(spacing: 16) {
                        HStack(spacing: 10) {
                            createButton(title: "preferences_noPreferance")
                            createButton(title: "preferences_vegan")
                        }
                        
                        HStack(spacing: 10) {
                            createButton(title: "preferences_halal")
                            createButton(title: "preferences_vegetarian")
                        }
                    }
                    
                    Spacer()
                    Button(action: {}, label: {
                        Text("preferences_save".localized())
                    })
                    .buttonStyle(ZABlueButtonStyle())
                    .padding(.bottom, 24)
                    
                }
                .padding(.horizontal, 15)
            }
        }
    }
    
    func createButton(title: String) -> some View {
        Button(action: {
            self.$selected.wrappedValue.toggle()
        }, label: {
            Text(title.localized())
                .font(Font.Theme.sfProText(size: 15))
                .background(Color.clear)
                .foregroundColor(.white)
        })
        .frame(height: 48)
        .frame(maxWidth: .infinity)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(selected ? Color.Theme.preferencesButtonBordersGray : Color.Theme.preferencesButtonBordersBlue, lineWidth: selected ? 1 : 2))
    }
}

