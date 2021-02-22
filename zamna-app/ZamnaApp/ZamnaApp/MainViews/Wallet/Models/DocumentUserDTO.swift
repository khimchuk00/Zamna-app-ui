import Foundation

class DocumentUserDTO {
    enum Sex: String {
        case man = "M"
        case woman = "W"
    }
    
    var fullName: String
    var dateOfBirth: String
    var nationality: String
    var sex: Sex
    
    init(fullName: String, dateOfBirth: String, nationality: String, sex: Sex) {
        self.fullName = fullName
        self.dateOfBirth = dateOfBirth
        self.nationality = nationality
        self.sex = sex
    }
}
