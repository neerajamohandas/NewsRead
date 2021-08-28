//
//  SignUPView.swift
//  NewsRead
//
//  Created by Anand on 27/08/21.
//

import UIKit

class SignUPView: SuperView {
    
    @IBOutlet var mdtxtf_fullName: MDTextFieldView!
    @IBOutlet var mdtxtf_username: MDTextFieldView!
    @IBOutlet var mdtxtf_email: MDTextFieldView!
    @IBOutlet var mdtxtf_dob: MDTextFieldView!
    @IBOutlet var mdtxtf_mobno: MDTextFieldView!
    @IBOutlet var mdtxtf_password: MDTextFieldView!
    @IBOutlet var mdtxtf_confirmPassword: MDTextFieldView!
    @IBOutlet var btn_Signup: UIButton!
    
    required init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView(){
        
        btn_Signup.layer.cornerRadius = 5.0
        
    }
    
    @IBAction func btn_Signup_Clicked(_ sender: UIButton) {
    }
}
