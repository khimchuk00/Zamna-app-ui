import SwiftUI

fileprivate struct PageControlItem: View {
    let style: PageControl.Style
    let isHighlited: Bool
    
    var body: some View {
        switch style {
        case .circle:
            Circle()
                .fill(getColor(isHighlited))
                .frame(width: 10, height: 10)
        case .rectancle:
            Rectangle()
                .fill(getColor(isHighlited))
                .cornerRadius(4)
                .frame(width: 65, height: 3)
        }
    }
    
    func getColor(_ isHighlited: Bool) -> Color {
        switch style {
        case .circle:
            return Color.white.opacity(isHighlited ? 1 : 0.5)
        case .rectancle:
            return isHighlited ? Color.Theme.blue : Color.white.opacity(0.5)
        }
    }
}

struct PageControl: View {
    enum Style: String {
        case circle
        case rectancle
    }
    
    private let pagesCount: Int
    private var currentPage: Int
    private var style: Style
    
    init(pagesCount: Int, currentPage: Int, style: Style = .circle) {
        self.pagesCount = pagesCount
        self.currentPage = currentPage
        self.style = style
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            ForEach(0..<pagesCount) { index in
                PageControlItem(style: style, isHighlited: index == currentPage)
            }
        }
    }
}
