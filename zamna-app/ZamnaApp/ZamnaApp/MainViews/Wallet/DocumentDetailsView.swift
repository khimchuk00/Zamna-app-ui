import SwiftUI

struct DocumentDetailsView: View {
    
    var viewModelDTO: DocumentViewModelDTO
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.Theme.backgroundBlackBottom.ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 21) {
                        VStack(alignment: .leading, spacing: 24) {
                            HStack(alignment: .top, spacing: 8) {
                                viewModelDTO.type.img
                                Text(viewModelDTO.documentName)
                                    .foregroundColor(.white)
                                    .font(Font.Theme.sfProTextSemibold(size: 17))
                                Spacer()
                                viewModelDTO.country.flagImage
                                    .resizable()
                                    .frame(width: 32, height: 20)
                            }
                            
                            HStack(alignment: .bottom, spacing: 20) {
                                
                                Text(viewModelDTO.user.fullName)
                                    .foregroundColor(.white)
                                    .font(Font.Theme.sfProDisplayMedium(size: 24))
                                
                                Spacer()
                                
                                HStack {
                                    Spacer()
                                    Text(viewModelDTO.getVerifiedText())
                                        .foregroundColor(.white)
                                        .font(Font.Theme.sfProText(size: 12))
                                        .frame(width: 106)
                                }
                            }
                            
                            DocumentColumnsDataView(model: DocumentColumntDataModel(
                                firstItem: DocumentColumnDataModelItem(
                                    title: "No",
                                    text: viewModelDTO.number),
                                secondItem: DocumentColumnDataModelItem(
                                    title: "Expires",
                                    text: viewModelDTO.expirationDate)
                            ))
                            
                            DocumentColumnsDataView(style: .multiLine,
                                                    model: DocumentColumntDataModel(
                                                        firstItem: DocumentColumnDataModelItem(
                                                            title: "Date of birth",
                                                            text: viewModelDTO.user.dateOfBirth),
                                                        secondItem: nil)
                            )
                            
                            DocumentColumnsDataView(style: .multiLine,
                                                    model: DocumentColumntDataModel(
                                                        firstItem: DocumentColumnDataModelItem(
                                                            title: "Nationality",
                                                            text: viewModelDTO.user.nationality),
                                                        secondItem: DocumentColumnDataModelItem(
                                                            title: "Sex",
                                                            text: viewModelDTO.user.sex.rawValue)
                                                    ))
                            
                            DocumentColumnsDataView(style: .multiLine,
                                                    model: DocumentColumntDataModel(
                                                        firstItem: DocumentColumnDataModelItem(
                                                            title: "Date of issue",
                                                            text: viewModelDTO.dateOfIssue),
                                                        secondItem: DocumentColumnDataModelItem(
                                                            title: "Date of expiry",
                                                            text: viewModelDTO.dateOfExpiry)
                                                    ))
                            
                            Divider()
                                .background(Color.white.opacity(0.5))
                            HStack {
                                Spacer()
                                Text("We have not verified your identity with this passport")
                                    .foregroundColor(.white)
                                    .font(Font.Theme.sfProDisplayMedium(size: 14))
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                        }
                        .padding(24)
                        .background(DocumentBackgroundGradient(color: viewModelDTO.bgColor))
                        .cornerRadius(12)
                        
                        Button {
                            
                        } label: {
                            Text("REMOVE DOCUMENT")
                                .foregroundColor(.white)
                                .font(Font.Theme.sfProDisplayMedium(size: 15))
                                .padding(15)
                        }.overlay(
                            Rectangle()
                                .stroke(LinearGradient(gradient: Gradient(colors: [
                                    Color.Theme.lightRed.opacity(0.1),
                                    Color.Theme.lightRed,
                                    Color.Theme.lightRed.opacity(0.1)
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing),
                                lineWidth: 1)
                            
                        ).cornerRadius(12)
                        
                        Spacer()
                    }
                }.padding(.horizontal, 16)
            }
            .navigationBarTitle(viewModelDTO.documentName, displayMode: .inline)
        }.themeStyle()
    }
}
