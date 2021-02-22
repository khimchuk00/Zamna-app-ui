import Foundation

struct HowItWorksViewModelDTO {
    
    struct Item: Hashable {
        var imgName: String
        var text: String
    }
    
    var title: String
    var mainText: String
    var subText: String?
    var items: [Item]
}
