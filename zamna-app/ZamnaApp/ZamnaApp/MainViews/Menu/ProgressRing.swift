import SwiftUI

struct ProgressRing: SwiftUI.Shape {
    var percentage: Double
    
    func path(in rect: CGRect) -> Path {
        let start: Double = 90
        let end = (360 * percentage) + 90
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.size.width / 2, y: rect.size.height / 2),
                    radius: rect.size.width / 2,
                    startAngle: .degrees(start),
                    endAngle: .degrees(end),
                    clockwise: false)
        return path
    }
}
