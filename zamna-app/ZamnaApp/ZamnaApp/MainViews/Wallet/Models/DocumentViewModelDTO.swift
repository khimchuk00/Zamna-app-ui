import SwiftUI

class DocumentViewModelDTO: ObservableObject {
    @Published var documentName: String
    var number: String
    var expirationDate: String
    var dateOfIssue: String
    var dateOfExpiry: String
    var user: DocumentUserDTO
    var country: CountryModelDTO
    var type: DocumentType
    var isVerified: Bool
    @Published var bgColor: Color
    
    init(documentName: String,
         number: String,
         expirationDate: String,
         dateOfIssue: String,
         dateOfExpiry: String,
         country: CountryModelDTO,
         type: DocumentType,
         isVerified: Bool,
         bgColor: Color,
         user: DocumentUserDTO) {
        
        self.documentName = documentName
        self.number = number
        self.expirationDate = expirationDate
        self.dateOfIssue = dateOfIssue
        self.dateOfExpiry = dateOfExpiry
        self.country = country
        self.type = type
        self.isVerified = isVerified
        self.bgColor = bgColor
        self.user = user
    }
    
    func getVerifiedText() -> String {
        isVerified ? "Save & verified" : "Saved but not yet verified"
    }
}

extension DocumentViewModelDTO {
    enum DocumentType {
        case passport
        case health
        
        var img: Image {
            switch self {
            case .passport:
                return Image("passport_img")
            case .health:
                return Image("health_img")
            }
        }
    }
}

extension DocumentViewModelDTO: Hashable {
    static func == (lhs: DocumentViewModelDTO, rhs: DocumentViewModelDTO) -> Bool {
        lhs.documentName == rhs.documentName
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(documentName)
    }
}
