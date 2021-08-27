//
//  CustomTextField.swift
//  customTextFieldDemo
//
//  Created by Anand on 27/08/21.
//
//

import UIKit

@IBDesignable class MDTextFieldView: SuperView {
    
    @IBOutlet weak var constraint_imgView_leading: NSLayoutConstraint!
    @IBOutlet var view_allcontent: UIView!
    @IBOutlet weak var view_underline: UIView!
    @IBOutlet weak var imgView_icon: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var txtf_enterData: UITextField!
    @IBOutlet weak var constraint_width_imgView: NSLayoutConstraint!
    @IBOutlet weak var view_containsTF: UIView!
    @IBOutlet weak var constraint_tfLeadingtoimgView: NSLayoutConstraint!
    
    var string_placeholder: String = "Enter your text."
    var color_placeholder: UIColor = .white
    var color_inputText = UIColor.white
    var color_title = UIColor.lightGray
    var bgColor_light = UIColor.white
    var bgcolor_dark = UIColor.white
    var font_tf = UIFont.init()
    var font_size = 20.0
    var icon_image = UIImage.init()
    var gradientLayer = CAGradientLayer()
    
    required init(frame: CGRect) {
        super.init(frame: frame)
        setUPView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUPView()
    }
    
    func setUPView(){
        
        view_allcontent.backgroundColor = .clear
        view_containsTF.backgroundColor = .clear
        view_underline.backgroundColor = .clear
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view_underline.frame.size.width, height: view_underline.frame.size.height)
        view_underline.layer.masksToBounds = true
        gradientLayer.colors = [bgcolor_dark.cgColor as Any,bgColor_light.cgColor as Any]
        gradientLayer.startPoint = CGPoint(x: 0.2, y:0.0)
        gradientLayer.endPoint = CGPoint(x: 0.9, y: 0.0)
        view_underline.layer.insertSublayer(gradientLayer, at: 0)
        
        font_tf = UIFont(name: "Helvetica Neue", size: CGFloat(font_size)) ?? UIFont.init()
        txtf_enterData.delegate = self
        txtf_enterData.textColor = color_inputText
        txtf_enterData.font = font_tf
        self.lbl_title.textColor = color_title
        self.lbl_title.text = ""
        
        if(self.icon_image != UIImage.init()){
            self.constraint_width_imgView.constant = 20
            self.constraint_tfLeadingtoimgView.constant = 10
            self.constraint_imgView_leading.constant = 10
            self.imgView_icon.image = icon_image
        }
        else{
            self.constraint_width_imgView.constant = 0
            self.constraint_tfLeadingtoimgView.constant = 0
            self.constraint_imgView_leading.constant = 0
        }
        let placeholder = NSAttributedString(string: string_placeholder, attributes: [NSAttributedString.Key.foregroundColor: color_placeholder])
        self.txtf_enterData.attributedPlaceholder = placeholder
    }
    
}
extension MDTextFieldView: UITextFieldDelegate{
    
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        
        //lbl_title.textColor = UIColor(named: "color_tf_title")
        if (lbl_title.text == ""){
            let animation:CATransition = CATransition()
            animation.timingFunction = CAMediaTimingFunction(name:
                CAMediaTimingFunctionName.linear)
            animation.type = CATransitionType.reveal
            animation.duration = 0.20
            self.lbl_title.text = self.string_placeholder
            self.lbl_title.layer.add(animation, forKey: CATransitionType.push.rawValue)
        }
        
        textField.placeholder = ""
    }
    public func textFieldDidEndEditing(_ textField: UITextField) {
        if(textField.text == ""){
            self.lbl_title.text = ""
            textField.placeholder = string_placeholder
        }
        else{
            //lbl_title.textColor = .lightGray
        }
        
        //self.delegate.textField_StoppedEditing()
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
extension MDTextFieldView{
    
    @IBInspectable var cornerRadius: Double {
         get {
           return Double(self.layer.cornerRadius)
         }set {
           self.layer.cornerRadius = CGFloat(newValue)
         }
    }
    @IBInspectable var borderWidth: Double {
          get {
            return Double(self.layer.borderWidth)
          }
          set {
           self.layer.borderWidth = CGFloat(newValue)
          }
    }
    @IBInspectable var borderColor: UIColor? {
         get {
            return UIColor(cgColor: self.layer.borderColor!)
         }
         set {
            self.layer.borderColor = newValue?.cgColor
         }
    }
    @IBInspectable var shadowColor: UIColor? {
        get {
           return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
           self.layer.shadowColor = newValue?.cgColor
        }
    }
    @IBInspectable var shadowOpacity: Float {
        get {
           return self.layer.shadowOpacity
        }
        set {
           self.layer.shadowOpacity = newValue
       }
    }
    @IBInspectable var shadowOffset: CGSize {
        get {
           return self.layer.shadowOffset
        }
        set {
           self.layer.shadowOffset = newValue
       }
    }
    @IBInspectable var gradientDarkColor: UIColor {
        get {
            return self.bgcolor_dark
        }
        set {
            self.bgcolor_dark = newValue
            setUPView()
       }
    }
    
    @IBInspectable var gradientLightolor: UIColor {
        get {
            return self.bgColor_light
        }
        set {
            self.bgColor_light = newValue
            setUPView()
       }
    }
    @IBInspectable var Icon: UIImage {
        get {
            return self.icon_image
        }
        set {
            self.icon_image = newValue
            setUPView()
       }
    }
    @IBInspectable var Placeholder: String {
        get {
            return self.string_placeholder
        }
        set {
            self.string_placeholder = newValue
            setUPView()
       }
    }
    @IBInspectable var PlaceholderColor: UIColor{
        get {
            return self.color_placeholder
        }
        set {
            self.color_placeholder = newValue
            setUPView()
        }
    }
    @IBInspectable var fontSize: Int {
        get {
            return Int(self.font_size)
        }
        set {
            self.font_size = Double(newValue)
            setUPView()
       }
    }
    @IBInspectable var TextColor: UIColor{
        get {
            return self.color_inputText
        }
        set {
            self.color_inputText = newValue
            setUPView()
        }
    }
    @IBInspectable var TitleColor: UIColor{
        get {
            return self.color_title
        }
        set{
            self.color_title = newValue
            setUPView()
        }
    }
}
