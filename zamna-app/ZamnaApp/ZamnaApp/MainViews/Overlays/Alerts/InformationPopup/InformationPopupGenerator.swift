import SwiftUI

class InformationPopupGenerator {
    enum ViewType {
        private enum InfoImage {
            case planet
            case calendarCheckmark
            case calendarCross
            case person
            case passport
            case identityCard
            case cross
            
            func getImg() -> Image {
                switch self {
                case .planet:
                    return Image("globe_world_img")
                case .calendarCheckmark:
                    return Image("calendar_checkmark_img")
                case .calendarCross:
                    return Image("calendar_cross_img")
                case .person:
                    return Image("persona_img")
                case .passport:
                    return Image("passport_info_img")
                case .identityCard:
                    return Image("id_card_img")
                case .cross:
                    return Image("info_cross_img")
                }
            }
        }
        
        case middleName
        case givenName
        case dateOfBirth
        case sex
        case nationality
        case countryOfIssue
        case passportNumber
        case identityCard
        case dateOfIssue
        case dateOfExpiry
        case pleaseCheckData
        
        var image: Image {
            switch self {
            case .middleName:
                return InfoImage.planet.getImg()
            case .givenName:
                return InfoImage.planet.getImg()
            case .dateOfBirth:
                return InfoImage.calendarCheckmark.getImg()
            case .sex:
                return InfoImage.person.getImg()
            case .nationality:
                return InfoImage.planet.getImg()
            case .countryOfIssue:
                return InfoImage.planet.getImg()
            case .passportNumber:
                return InfoImage.passport.getImg()
            case .identityCard:
                return InfoImage.identityCard.getImg()
            case .dateOfIssue:
                return InfoImage.calendarCheckmark.getImg()
            case .dateOfExpiry:
                return InfoImage.calendarCross.getImg()
            case .pleaseCheckData:
                return InfoImage.cross.getImg()
            }
        }
    }
    
    static func generateModel(for type: ViewType) -> InformationPopupViewModel {
        InformationPopupViewModel(type: type.alertType,
                                  image: type.image,
                                  title: type.title,
                                  text: type.text,
                                  tipText: type.tipText)
    }
}

extension InformationPopupGenerator.ViewType {
    
    var alertType: InformationPopupViewModel.AlertType {
        switch self {
        case .pleaseCheckData:
            return .error
        default:
            return.info
        }
    }
    
    var title: String {
        switch self {
        case .middleName: return "middleName_title".localized()
        case .givenName: return "givenName_title".localized()
        case .dateOfBirth: return "dateOfBirth_title".localized()
        case .sex: return "sex_title".localized()
        case .nationality: return "nationality_title".localized()
        case .countryOfIssue: return "countryOfIssue_title".localized()
        case .passportNumber: return "passportNumber_title".localized()
        case .identityCard: return "identityCard_title".localized()
        case .dateOfIssue: return "dateOfIssue_title".localized()
        case .dateOfExpiry: return "dateOfExpiry_title".localized()
        case .pleaseCheckData: return "pleaseCheckData_title".localized()
        }
    }
    
    var text: String {
        switch self {
        case .middleName: return "middleName_text".localized()
        case .givenName: return "givenName_text".localized()
        case .dateOfBirth: return "dateOfBirth_text".localized()
        case .sex: return "sex_text".localized()
        case .nationality: return "nationality_text".localized()
        case .countryOfIssue: return "countryOfIssue_text".localized()
        case .passportNumber: return "passportNumber_text".localized()
        case .identityCard: return "identityCard_text".localized()
        case .dateOfIssue: return "dateOfIssue_text".localized()
        case .dateOfExpiry: return "dateOfExpiry_text".localized()
        case .pleaseCheckData: return "pleaseCheckData_text".localized()
        }
    }
    
    var tipText: String {
        switch self {
        case .middleName: return "middleName_tipText".localized()
        case .givenName: return "givenName_tipText".localized()
        case .dateOfBirth: return "dateOfBirth_tipText".localized()
        case .sex: return "sex_tipText".localized()
        case .nationality: return "nationality_tipText".localized()
        case .countryOfIssue: return "countryOfIssue_tipText".localized()
        case .passportNumber: return "passportNumber_tipText".localized()
        case .identityCard: return "identityCard_tipText".localized()
        case .dateOfIssue: return "dateOfIssue_tipText".localized()
        case .dateOfExpiry: return "dateOfExpiry_tipText".localized()
        case .pleaseCheckData: return "pleaseCheckData_tipText".localized()
        }
    }
}
