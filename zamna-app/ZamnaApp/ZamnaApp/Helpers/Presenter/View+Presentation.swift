import SwiftUI

private struct PresentationModifier<Destination>: ViewModifier where Destination: View {
    
    @Binding var isPresented: Bool
    var transitionType: AnyTransition
    var destination: () -> Destination
    
    func body(content: Self.Content) -> some View {
        Check($isPresented) {
            ZStack {
                content
                self.destination()
                    .transition(transitionType)
            }
        } failure: {
            content
        }
    }
}

extension View {
    func present<Destination: View>(isPresented: Binding<Bool>,
                                    transitionType: AnyTransition,
                                    destination: @escaping () -> Destination) -> some View {
        self.modifier(PresentationModifier(isPresented: isPresented,
                                           transitionType: transitionType,
                                           destination: destination))
    }
}
