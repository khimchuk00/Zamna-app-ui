import SwiftUI

extension Color {
    struct Theme {
        private init() {}
        
        //MARK: - Black
        static var alertBacgroundBlack: Color {
            Color(hex: "1E1E1E")
        }
        
        static var backgroundBlackBottom: Color {
            Color(hex: "010001")
        }
        
        static var backgroundBlackTop: Color {
            Color(hex: "1F1F1F")
        }
        
        //MARK: - Gray
        static var textFieldBorderGray: Color {
            Color(hex: "262626")
        }
        
        static var gray5: Color {
            Color(hex: "F5F5F5")
        }
        
        static var gray6: Color {
            Color(hex: "BFBFBF")
        }
        
        
        static var backgroundLightGray: Color {
            Color(hex: "C4C4C4", opacity: 0.05)
        }
        
        //MARK: - Blue
        static var blue: Color {
            Color(hex: "8E95F8")
        }
        
        static var alertBlue: Color {
            Color(hex: "378DDC")
        }
        
        static var alertButtonBlue: Color {
            Color(hex: "319CFF")
        }
        
        //MARK: - Red
        static var alertRed: Color {
            Color(hex: "D12D2D")
        }
        
        static var alertButtonRed: Color {
            Color(hex: "EB5757")
        }
        
        static var lightRed: Color {
            Color(hex: "EB4250")
        }
        
        
        //MARK: - Documents colors
        static var orangeDocument: Color {
            Color(hex: "FF6600")
        }
        
        static var greenDocument: Color {
            Color(hex: "1FCB3B")
        }
        
        static var tifanyDocument: Color {
            Color(hex: "39F7D5")
        }
        
        static var oceanDocument: Color {
            Color(hex: "1EAEFF")
        }
        
        static var lightBlueDocument: Color {
            Color(hex: "004980")
        }
        
        static var blueDocument: Color {
            Color(hex: "2560F8")
        }
        
        static var defaultBlueDocument: Color {
            Color(hex: "153689")
        }
        
        static var purpleDocument: Color {
            Color(hex: "9A36FE")
        }
        
        static var pinkDocument: Color {
            Color(hex: "FF46CB")
        }
        
        static var crimsonDocument: Color {
            Color(hex: "F41349")
        }
        
        static var burgundyDocument: Color {
            Color(hex: "713333")
        }
        
        
        //New Colors
        static var gray7: Color {
            Color(hex: "8C8C8C")
        }
        
        static var preferencesBordersGray: Color {
            Color(hex: "595959")
        }
        
        static var preferencesButtonBordersGray: Color {
            Color(hex: "252525")
        }
        
        static var blueButtonTop: Color {
            Color(hex: "436BF9")
        }
        
        static var blueButtonBot: Color {
            Color(hex: "4A38B9")
        }
        
        static var blueButtonBorderBot: Color {
            Color(hex: "403970", opacity: 0.1)
        }
        
        static var skipButtonBorder: Color {
            Color(hex: "8EA9F8", opacity: 0.5)
        }
        
        static var menuStrokeBlue: Color {
            Color(hex: "2475EE")
        }
        
        static var preferencesButtonBordersBlue: Color {
            Color(hex: "8E95F8")
        }
        
        static var menuStrokeGreen: Color {
            Color(hex: "4BB34B")
        }
    }
}
