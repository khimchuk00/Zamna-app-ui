import Foundation

class HowItWorksModelGenerator {
    enum ViewType {
        case sharingData
        case checkIn
        case biometrics
        case identity
        
        private enum ItemImage: String {
            case shield
            case key
            case checkmark
            case fingerprint
            case lightling
            case click
            
            var name: String {
                switch self {
                case .shield:
                    return "shield_checkmark_outline_img"
                case .key:
                    return "key_img"
                case .checkmark:
                    return "checkmark_outline_img"
                case .fingerprint:
                    return "fingerprint_img"
                case .lightling:
                    return "lightning_img"
                case .click:
                    return "click_img"
                }
            }
        }
    }
    
    static func generateModel(for type: ViewType) -> HowItWorksViewModelDTO {
        HowItWorksViewModelDTO(title: type.title,
                               mainText: type.mainText,
                               subText: type.subText,
                               items: type.generateItems())
    }
}


extension HowItWorksModelGenerator.ViewType {
    var title: String {
        switch self {
        case .sharingData:
            return "sharingData_title".localized()
        case .checkIn:
            return "checkIn_title".localized()
        case .biometrics:
            return "biometrics_title".localized()
        case .identity:
            return "identity_title".localized()
        }
    }
    
    var mainText: String {
        switch self {
        case .sharingData:
            return "sharingData_mainText".localized()
        case .checkIn:
            return "checkIn_mainText".localized()
        case .biometrics:
            return "biometrics_mainText".localized()
        case .identity:
            return "identity_mainText".localized()
        }
    }
    
    var subText: String? {
        switch self {
        case .sharingData:
            return nil
        case .checkIn:
            return "checkIn_subText".localized()
        case .biometrics:
            return "biometrics_subText".localized()
        case .identity:
            return "identity_subText".localized()
        }
    }
    
    func generateItems() -> [HowItWorksViewModelDTO.Item] {
        typealias Item = HowItWorksViewModelDTO.Item
        switch self {
        case .sharingData:
            return [
                Item(imgName: ItemImage.shield.name, text: "sharingData_item_1_text".localized()),
                Item(imgName: ItemImage.key.name, text: "sharingData_item_2_text".localized()),
                Item(imgName: ItemImage.checkmark.name, text: "sharingData_item_3_text".localized()),
                Item(imgName: ItemImage.fingerprint.name, text: "sharingData_item_4_text".localized())
            ]
        case .checkIn:
            return [
                Item(imgName: ItemImage.shield.name, text: "checkIn_item_1_text".localized()),
                Item(imgName: ItemImage.key.name, text: "checkIn_item_2_text".localized()),
                Item(imgName: ItemImage.checkmark.name, text: "checkIn_item_3_text".localized()),
                Item(imgName: ItemImage.fingerprint.name, text: "checkIn_item_4_text".localized())
            ]
        case .biometrics:
            return [
                Item(imgName: ItemImage.shield.name, text: "biometrics_item_1_text".localized()),
                Item(imgName: ItemImage.key.name, text: "biometrics_item_2_text".localized()),
                Item(imgName: ItemImage.checkmark.name, text: "biometrics_item_3_text".localized()),
                Item(imgName: ItemImage.fingerprint.name, text: "biometrics_item_4_text".localized())
            ]
        case .identity:
            return [
                Item(imgName: ItemImage.shield.name, text: "identity_item_1_text".localized()),
                Item(imgName: ItemImage.lightling.name, text: "identity_item_2_text".localized()),
                Item(imgName: ItemImage.click.name, text: "identity_item_3_text".localized())
            ]
        }
    }
}
