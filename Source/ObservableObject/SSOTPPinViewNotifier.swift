import SwiftUI

/// An observable object that manages the visual and functional properties of the OTP pin view.
///
/// This class serves as a notifier for changes to properties such as text color, font, and secure text entry settings.
/// It allows for the customization of the OTP pin view's appearance and behavior.
class SSOTPPinViewNotifier: ObservableObject {
    
    // MARK: - Published Variables
    
    /// Determines whether the text entry is secure (hidden).
    ///
    /// When `true`, entered text is obscured, typically shown as dots or asterisks. When `false`, the entered text is displayed normally.
    @Published var isSecureTextEntry: Bool = false
    
    /// The type of secure text visualization to use when text entry is secure.
    ///
    /// This property determines how secure text is displayed, e.g., as dots, asterisks, etc. Default is `.dot`.
    @Published var secureTextType: SecureType = .dot
    
    /// The color of the text in the OTP input field.
    ///
    /// This property determines the color of the characters displayed in the OTP input fields.
    @Published var textColor: Color = .primary
    
    /// The font used for the text in the OTP input field.
    ///
    /// This property determines the typeface of the characters displayed in the OTP input fields.
    @Published var font: Font = .system(size: 28)
    
    /// The weight of the font used for the text in the OTP input field.
    ///
    /// This property determines the boldness or thickness of the characters displayed in the OTP input fields.
    @Published var fontWeight: Font.Weight = .medium
    
    /// The width of the OTP input field.
    ///
    /// This property determines the horizontal size of each OTP input field.
    @Published var strokeWidth: CGFloat = 50
    
    /// The height of the OTP input field.
    ///
    /// This property determines the vertical size of each OTP input field.
    @Published var strokeHeight: CGFloat = 50
    
    /// The width of the lines or borders around the OTP input field.
    ///
    /// This property determines the thickness of the lines or borders surrounding each OTP input field.
    @Published var lineWidth: CGFloat = 1
    
    /// The color of the lines or borders around the OTP input field.
    ///
    /// This property determines the color of the lines or borders surrounding each OTP input field.
    @Published var lineColor: Color = .gray
    
    /// The color of the lines or borders around the currently selected OTP input field.
    ///
    /// This property determines the color of the lines or borders surrounding the currently active OTP input field.
    @Published var selectedLineColor: Color = .blue
    
    /// The background color of the OTP input field.
    ///
    /// This property determines the background fill color for each OTP input field.
    @Published var backgroundColor: Color = .clear
    
    // MARK: - Keyboard Properties
    
    /// The type of keyboard used for entering OTP digits.
    ///
    /// This property determines the keyboard layout presented to the user for input.
    @Published var keyboardType: KeyboardType = .numberPad
    
    /// The background color of the custom keyboard used for OTP input.
    ///
    /// This property determines the background color of the custom keyboard when displayed.
    @Published var keyboardBackgroundColor: Color = Color(UIColor.secondarySystemBackground)
    
    /// The color of the text on the keys of the custom keyboard.
    ///
    /// This property determines the color of the digits or characters shown on the keyboard keys.
    @Published var keyFontColor: Color = .primary
    
    /// The color of the stroke or border around the keys of the custom keyboard.
    ///
    /// This property determines the color of the borders surrounding each key in the custom keyboard.
    @Published var keyStrokeColor: Color = .clear
}
