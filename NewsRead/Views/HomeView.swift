//
//  HomeView.swift
//  NewsRead
//
//  Created by Anand on 26/08/21.
//

import UIKit

class HomeView: UIView {
    
    var view_add : UIView!

   
    required override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }
    
    private func nibSetup(){
        
        view_add = loadViewFromNib_()
        view_add.frame = bounds
        view_add.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view_add.translatesAutoresizingMaskIntoConstraints = true
        addSubview(view_add)
        
    }
    
    private func loadViewFromNib_() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
    }

    
    

}
