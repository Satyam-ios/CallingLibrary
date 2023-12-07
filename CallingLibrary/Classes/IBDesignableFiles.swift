//
//  IBDesignableFiles.swift
//  CallingLibrary
//
//  Created by V Group Inc on 30/11/23.
//

import Foundation
import UIKit

@IBDesignable class ViewDesign: UIView {
    
    @IBInspectable var borderWid : CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.borderWid
        }
    }
    
    @IBInspectable var borderColor : UIColor = .clear {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    @IBInspectable var shodow : CGFloat = 0 {
        didSet {
            self.layer.shadowColor = UIColor.lightGray.cgColor
            self.layer.shadowOffset = CGSize(width: 3, height: 3)
            self.layer.masksToBounds = false
            self.layer.shadowOpacity = 0.5
            self.layer.shadowRadius = 4
            self.layer.rasterizationScale = UIScreen.main.scale
            self.layer.shouldRasterize = true
        }
    }
}

@IBDesignable class RoundView: UIView {
    
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.borderWidth
            self.clipsToBounds = true
        }
    }
   
    
}

//@IBDesignable class RoundImage: UIImageView {
//
//    @IBInspectable var borderWid : CGFloat = 0.0 {
//        didSet {
//            self.layer.cornerRadius = self.borderWid
//            self.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
//            self.clipsToBounds = true
//        }
//    }
//}

@IBDesignable class CallingIcons: UIButton {
    
    @IBInspectable var cournerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = self.cournerRadius
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            self.layer.shadowOpacity = 0.2
            self.layer.shadowRadius = 4.0
            
        }
    }
    @IBInspectable var SetCustomIcon:UIImage? {
        didSet {
            self.setImage(SetCustomIcon, for: .normal)
            self.contentMode = .scaleAspectFit
           // self.layer.cornerRadius = self.layer.frame.size.width/2
            self.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        }
    }
    @objc func buttonAction(sender: UIButton!) {
      print("Button Call tapped")
    }
}
@IBDesignable class CallViewIcons: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCallIcon()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setCallIcon()
    }
    
    override func prepareForInterfaceBuilder() {
        setCallIcon()
    }
    func setCallIcon() {
        let image = Constant.getImage(named: "phone-call")?.withRenderingMode(.alwaysOriginal)
        self.setBackgroundImage(image, for: .normal)
        self.contentMode = .scaleAspectFit
       // self.addTarget(self, action: #selector(smsbtnAction), for: .touchUpInside)
    }
    
//    @objc func smsbtnAction(sender: UIButton!) {
//      print("Button Call tapped")
//    }
}

@IBDesignable class SmsViewIcons: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setSmsIcon()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setSmsIcon()
    }
    
    override func prepareForInterfaceBuilder() {
        setSmsIcon()
    }
    func setSmsIcon() {
        let image = Constant.getImage(named: "messenger")?.withRenderingMode(.alwaysOriginal)
        self.setBackgroundImage(image, for: .normal)
        self.contentMode = .scaleAspectFit
        //self.addTarget(self, action: #selector(smsbtnAction), for: .touchUpInside)
    }
    
//    @objc func smsbtnAction(sender: UIButton!) {
//      print("Button SMS tapped")
//        let controller = SMSViewController()
//        prese
//
//    }
}

@IBDesignable class EmailViewIcons: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setEmailIcon()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setEmailIcon()
    }
    
    override func prepareForInterfaceBuilder() {
        setEmailIcon()
    }
    
    func setEmailIcon() {
        let image = Constant.getImage(named: "envelope")?.withRenderingMode(.alwaysOriginal)
        self.setBackgroundImage(image, for: .normal)
        self.contentMode = .scaleAspectFit
        //self.addTarget(self, action: #selector(smsbtnAction), for: .touchUpInside)
    }
    
//    @objc func smsbtnAction(sender: UIButton!) {
//      print("Button Email tapped")
//    }
}



@IBDesignable class TextFieldDesign: UITextField {
    
    @IBInspectable var borderWidt : CGFloat = 0.0 {
        didSet {
               layer.borderWidth = borderWidt
           }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var cournerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = self.cournerRadius
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            self.layer.shadowOpacity = 0.2
            self.layer.shadowRadius = 4.0
            
        }
    }
    
    @IBInspectable var rightSideImage:UIImage? {
        didSet {
            updateRightView()
        }
    }
    
    @IBInspectable var leftSideImage:UIImage? {
        didSet {
            updateleftView()
        }
    }
    
    func updateRightView() {
        //for right Image
        if let image = rightSideImage {
            let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
            let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 18, height: 18))
            imageView.image = image
            imageContainerView.addSubview(imageView)
            rightView = imageContainerView
            rightViewMode = .always
        } else {
            rightViewMode = .never
        }
    }
    
    func updateleftView() {
        //for left Image
        if let image = leftSideImage {
            let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 22))
            let imageView = UIImageView(frame: CGRect(x: 20, y: 0, width: 18, height: 20))
            imageView.image = image
            imageContainerView.addSubview(imageView)
            leftView = imageContainerView
            leftViewMode = .always
            self.tintColor = .lightGray
        } else {
            leftViewMode = .never
        }
    }
    
}
extension UITextField{
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }

    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default

        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))

        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()

        self.inputAccessoryView = doneToolbar
    }

    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}

extension UITextView{
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }

    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default

        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))

        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()

        self.inputAccessoryView = doneToolbar
    }

    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}

extension UIViewController {

    public func DoneKeyboard(dismissOnTap:Bool) {
        // Setup Keyboard observers
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillShowNotification , object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        
        // Setup Tap Gesture to dismiss keyboard on tap
        if dismissOnTap {
            let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
            self.view.addGestureRecognizer(tap)
        }
        
    }
    
    // Handle Tap Gesture
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    @objc func keyboardWillChange(notification: Notification) {
        var location: CGFloat = 0
        var tfvHeight: CGFloat = 0
        
        // Get current firstResponder and check if it is a TextField
        if let activeTextField = UIResponder.currentFirstResponder as? UITextField {
            
            // Get the height of the Text Field
            tfvHeight = activeTextField.frame.size.height
            
            // Check if we can get its origin w.r.t. screen
            if let globalPoint = activeTextField.superview?.convert(activeTextField.frame.origin, to: nil) {
                
                // Set the y coordinate in location
                location = globalPoint.y
            }
        } else {
            
            // Get current firstResponder and check if it is a TextView
            if let activeTextView = UIResponder.currentFirstResponder as? UITextView {
                
                // Get the height of the Text View
                tfvHeight = activeTextView.frame.size.height
                
                // Check if we can get its origin w.r.t. screen
                if let globalPoint = activeTextView.superview?.convert(activeTextView.frame.origin, to: nil) {
                    
                    // Set the y coordinate in location
                    location = globalPoint.y
                }
            }
        }
        
        // Calculate keyboard size
        
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
               return
           }
        if notification.name == UIResponder.keyboardWillShowNotification ||
            notification.name == UIResponder.keyboardWillChangeFrameNotification {
            
            // Check if location is > (ViewHeight - KeyboardHeight - TextFieldOrViewHeight - Margin8)
            if(location > (self.view.frame.height - keyboardSize.height - tfvHeight - 8) ) {
                
                // Pull the screen up by location + TextFieldOrViewHeight + Margin8 - (ViewHeight - KeyboardHeight)
                let pullUp = location + tfvHeight + 8 - (self.view.frame.height - keyboardSize.height)
                
                // Pull the screen frame up by the calculated value
                view.frame.origin.y = CGFloat(-pullUp)
            }
        } else {
            
            // Reset the frame
            view.frame.origin.y = 0
        }
    }
}

extension UIResponder {

    private static weak var _currentFirstResponder: UIResponder?

    static var currentFirstResponder: UIResponder? {
        _currentFirstResponder = nil
        UIApplication.shared.sendAction(#selector(UIResponder.findFirstResponder(_:)), to: nil, from: nil, for: nil)

        return _currentFirstResponder
    }

    @objc func findFirstResponder(_ sender: Any) {
        UIResponder._currentFirstResponder = self
    }
}
