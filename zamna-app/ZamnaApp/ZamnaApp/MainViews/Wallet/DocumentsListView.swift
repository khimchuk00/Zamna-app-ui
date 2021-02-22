import SwiftUI

struct DocumentsListView: View {
    
    let documentsModelDTO: [DocumentViewModelDTO]
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 16) {
                    ForEach(documentsModelDTO, id: \.self) { documentDTO in
                        DocumentPreviewView(viewModelDTO: documentDTO)
                    }
                }
            }.padding(.horizontal, 16)
            .navigationBarTitle("Wallet", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .background(Color.Theme.backgroundBlackBottom.ignoresSafeArea())
        }
        .themeStyle()
    }
}
