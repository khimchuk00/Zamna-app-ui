import SwiftUI

@main
struct ZamnaAppApp: App {
    let modelDTO = HowItWorksModelGenerator.generateModel(for: .checkIn)
    let modelWalkthrough = WalkthroughViewModelDTO(currentPageIndex: 0)
    @State var current = 1
    let model = DocumentViewModelDTO(documentName: "British passport",
                                     number: "1223356",
                                     expirationDate: "Jul 2029",
                                     dateOfIssue: "23.03.2006",
                                     dateOfExpiry: "23.03.2050",
                                     country: CountryModelDTO(name: "GB", flagImage: Image("flag_uk")),
                                     type: .passport,
                                     isVerified: false,
                                     bgColor: Color.Theme.defaultBlueDocument,
                                     user: DocumentUserDTO(fullName: "Andrew Michelle R.",
                                                           dateOfBirth: "12.03.1998",
                                                           nationality: "British Citizen",
                                                           sex: .man)
    )
    
    
    var body: some Scene {
        WindowGroup {
            WalkthroughView(viewModelDTO: modelWalkthrough)
        }
    }
}
