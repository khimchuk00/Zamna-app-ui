import SwiftUI

class MenuViewModelDTO: ObservableObject {
    
    var name: String
    var profileCompletionPercentage: Double
    
    init(name: String, profileCompletionPercentage: Double) {
        self.name = name
        self.profileCompletionPercentage = profileCompletionPercentage
    }
}
