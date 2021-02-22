import SwiftUI

struct Check<SuccessContent, FailueContent>: View where SuccessContent: View, FailueContent: View {
    @Binding private var condition: Bool
    private let contentSuccessProvider: () -> SuccessContent
    private let contentFailureProvider: () -> FailueContent
    
    init(_ value: Binding<Bool>,
         @ViewBuilder success: @escaping () -> SuccessContent,
         @ViewBuilder failure: @escaping () -> FailueContent) {
        self.contentSuccessProvider = success
        self.contentFailureProvider = failure
        self._condition = value
    }
    
    var body: some View {
        if condition {
            contentSuccessProvider()
        } else {
            contentFailureProvider()
        }
    }
}
