import Foundation

struct ItemViewModelDTO {
    var imgName: String
    var mainText: String
    var subText: String
}

class WalkthroughViewModelDTO: ObservableObject {
    var itemModel: ItemViewModelDTO
    @Published var currentPageIndex: Int {
        didSet {
            switch currentPageIndex {
            case 0:
                itemModel = WalkthroughViewModelGenerator.generateModel(for: .step1)
            case 1:
                itemModel = WalkthroughViewModelGenerator.generateModel(for: .step2)
            case 2:
                itemModel = WalkthroughViewModelGenerator.generateModel(for: .step3)
            default:
                itemModel = WalkthroughViewModelGenerator.generateModel(for: .step1)
            }
        }
    }
    
    init(currentPageIndex: Int) {
        itemModel = WalkthroughViewModelGenerator.generateModel(for: .step1)
        self.currentPageIndex = currentPageIndex
    }
}
