import SwiftUI

struct DocumentPreviewView: View {
    @StateObject var viewModelDTO: DocumentViewModelDTO
    
    var body: some View {
        VStack {
            VStack(spacing: 24) {
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
                
                HStack(alignment: .bottom, spacing: 10) {
                    Text(viewModelDTO.user.fullName)
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProDisplayMedium(size: 24))
                    Spacer()
                    Text(viewModelDTO.getVerifiedText())
                        .foregroundColor(.white)
                        .font(Font.Theme.sfProText(size: 12))
                        .frame(width: 106)
                }
                
                HStack(spacing: 10) {
                    Group {
                        Text("No  ")
                            .foregroundColor(Color.Theme.gray6.opacity(0.5))
                            .font(Font.Theme.sfProText(size: 16)) +
                        Text(viewModelDTO.number)
                            .foregroundColor(.white)
                            .font(Font.Theme.sfProText(size: 16))
                    }
                    
                    Spacer()
                    
                    Group {
                        Text("Expires  ")
                            .foregroundColor(Color.Theme.gray6.opacity(0.5))
                            .font(Font.Theme.sfProText(size: 16)) +
                        Text(viewModelDTO.expirationDate)
                            .foregroundColor(.white)
                            .font(Font.Theme.sfProText(size: 16))
                    }
                }
            }
            .padding(24)
            .background(DocumentBackgroundGradient(color: viewModelDTO.bgColor))
            .cornerRadius(12)
        }
    }
}
