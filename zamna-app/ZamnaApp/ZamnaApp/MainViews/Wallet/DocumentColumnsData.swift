import SwiftUI

struct DocumentColumnDataModelItem {
    var title: String
    var text: String
}

struct DocumentColumntDataModel {
    let firstItem: DocumentColumnDataModelItem
    let secondItem: DocumentColumnDataModelItem?
}

fileprivate struct DocumentColumnsDataViewItem: View {
    let style: DocumentColumnsDataView.Style
    let model: DocumentColumnDataModelItem
    
    var body: some View {
        switch style {
        case .singleLine:
            generateSingleLineView()
        case .multiLine:
            generateMultiLineView()
        }
    }
    
    private func generateSingleLineView() -> some View {
        Group {
            Text(model.title + "  ")
                .foregroundColor(Color.Theme.gray6.opacity(0.5))
                .font(Font.Theme.sfProText(size: 16)) +
            Text(model.text + "  ")
                .foregroundColor(.white)
                .font(Font.Theme.sfProText(size: 16))
        }
    }
    
    private func generateMultiLineView() -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(model.title)
                .foregroundColor(Color.Theme.gray6.opacity(0.5))
                .font(Font.Theme.sfProText(size: 16))
            
            Text(model.text)
                .foregroundColor(.white)
                .font(Font.Theme.sfProText(size: 16))
        }
    }
}

struct DocumentColumnsDataView: View {
    
    enum Style {
        case singleLine
        case multiLine
    }
    
    let style: Style
    let model: DocumentColumntDataModel
    
    init(style: Style = .singleLine, model: DocumentColumntDataModel) {
        self.model = model
        self.style = style
    }
    
    var body: some View {
        HStack(spacing: 40) {
            DocumentColumnsDataViewItem(style: style, model: model.firstItem)
            Unwrap(model.secondItem) { value in
                DocumentColumnsDataViewItem(style: style, model: value)
            }
        }
    }
}
