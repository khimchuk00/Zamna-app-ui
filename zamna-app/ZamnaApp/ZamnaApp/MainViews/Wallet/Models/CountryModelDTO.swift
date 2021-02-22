import SwiftUI

class CountryModelDTO {
    var name: String
    var flagImage: Image
    
    init(name: String, flagImage: Image) {
        self.name = name
        self.flagImage = flagImage
    }
}
