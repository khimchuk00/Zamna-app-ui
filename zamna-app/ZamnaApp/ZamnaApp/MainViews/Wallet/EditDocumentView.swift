import SwiftUI

struct EditDocumentView: View {
    
    @StateObject var documentViewModelDTO: DocumentViewModelDTO
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.Theme.backgroundBlackBottom.ignoresSafeArea()
                
                VStack {
                    Text("Сustomize your item")
                        .foregroundColor(Color(hex: "8D8D8D"))
                        .font(Font.Theme.sfProText(size: 15))
                        .padding(.bottom, 20)
                    VStack(alignment: .leading, spacing: 24) {
                        
                        DocumentPreviewView(viewModelDTO: documentViewModelDTO)
                        
                        Divider()
                            .background(Color.white.opacity(0.1))
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Document name")
                                .foregroundColor(Color(hex: "8D8D8D"))
                                .font(Font.Theme.sfProText(size: 13))
                            TextField("", text: $documentViewModelDTO.documentName)
                                .padding(15)
                                .foregroundColor(.white)
                                .font(Font.Theme.sfProText(size: 15))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.Theme.textFieldBorderGray)
                                )
                                .font(Font.Theme.sfProText(size: 15))
                                
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Background color")
                                .foregroundColor(Color(hex: "8D8D8D"))
                                .font(Font.Theme.sfProText(size: 13))
                            DocumentColorPicker(selectedColor: $documentViewModelDTO.bgColor)
                        }
                    }
                    Spacer()
                }.padding(.horizontal, 16)
            }
            .navigationBarTitle("Edit document", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                    }) {
                        Image("info_circle_img")
                            .resizable()
                    }
                }
            }
        }.themeStyle()
    }
}
