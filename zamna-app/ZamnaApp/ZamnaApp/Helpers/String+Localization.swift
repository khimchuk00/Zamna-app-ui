import Foundation

extension String {
    func localized() -> String {
        NSLocalizedString(self, comment: "")
    }
    
    func localized(parameters: CVarArg...) -> String {
        String(format: localized(), arguments: parameters)
    }
}
