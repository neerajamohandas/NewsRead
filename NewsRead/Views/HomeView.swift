//
//  HomeView.swift
//  NewsRead
//
//  Created by Anand on 26/08/21.
//

import UIKit

class HomeView: SuperView {

   
    @IBOutlet var view_data: UIView!
    @IBOutlet var lbl_fullName: UILabel!
    @IBOutlet var lbl_username: UILabel!
    @IBOutlet var lbl_email: UILabel!
    @IBOutlet var lbl_dob: UILabel!
    @IBOutlet var lbl_mobileNo: UILabel!
    
    required init(frame: CGRect){
        super.init(frame: frame)
        setUPView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUPView()
    }
    
    func setUPView(){
        
        view_data.layer.shadowColor = UIColor(named: "color_primary_dark")?.cgColor
        view_data.layer.shadowOpacity = 0.9
        view_data.layer.shadowOffset = CGSize.zero
        view_data.layer.shadowRadius = 5.0
        view_data.layer.cornerRadius = 10.0
        //view_data.backgroundColor = UIColor.red
        
    }
    
    

}
