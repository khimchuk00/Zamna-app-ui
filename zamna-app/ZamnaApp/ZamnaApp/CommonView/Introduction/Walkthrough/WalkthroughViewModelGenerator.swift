import Foundation

class WalkthroughViewModelGenerator {
    enum ViewType {
        case step1
        case step2
        case step3
    }
    
    static func generateModel(for type: ViewType) -> ItemViewModelDTO {
        ItemViewModelDTO(imgName: type.imgName,
                                mainText: type.mainText,
                                subText: type.subText)
    }
}


extension WalkthroughViewModelGenerator.ViewType {
    var imgName: String {
        switch self {
        case .step1:
            return "Walkthrough1Image"
        case .step2:
            return "Walkthrough2Image"
        case .step3:
            return "Walkthrough3Image"
        }
    }
    
    var mainText: String {
        switch self {
        case .step1:
            return "mainthrough_1_mainText".localized()
        case .step2:
            return "mainthrough_2_mainText".localized()
        case .step3:
            return "mainthrough_3_mainText".localized()

        }
    }
    
    var subText: String {
        switch self {
        case .step1:
            return  "mainthrough_1_subText".localized()
        case .step2:
            return  "mainthrough_2_subText".localized()
        case .step3:
            return  "mainthrough_3_subText".localized()
        }
    }
}
