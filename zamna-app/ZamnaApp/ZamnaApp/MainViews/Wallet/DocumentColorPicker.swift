import SwiftUI

struct DocumentColorPicker: View {
    
    @Binding var selectedColor: Color
    
    private let availableColors = [
        Color.Theme.orangeDocument,
        Color.Theme.greenDocument,
        Color.Theme.tifanyDocument,
        Color.Theme.oceanDocument,
        Color.Theme.blueDocument,
        Color.Theme.lightBlueDocument,
        Color.Theme.defaultBlueDocument,
        Color.Theme.purpleDocument,
        Color.Theme.pinkDocument,
        Color.Theme.crimsonDocument,
        Color.Theme.burgundyDocument
    ]
    
    init(selectedColor: Binding<Color>) {
        self._selectedColor = selectedColor
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(availableColors, id: \.self) { color in
                    Rectangle()
                        .fill(color)
                        .frame(width: 32, height: 32)
                        .cornerRadius(8)
                        .onTapGesture {
                            selectedColor = color
                        }
                }
            }
        }
    }
}
