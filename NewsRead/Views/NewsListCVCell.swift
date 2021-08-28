//
//  NewsListCVCell.swift
//  NewsRead
//
//  Created by Anand on 28/08/21.
//

import UIKit

class NewsListCVCell: UICollectionViewCell {
    
    @IBOutlet var imgView_picture: UIImageView!
    @IBOutlet var lbl_headline: UILabel!
    @IBOutlet var lbl_author: UILabel!
    @IBOutlet var lbl_publishedAt: UILabel!
    @IBOutlet var lbl_urlToNews: UILabel!
    @IBOutlet var lbl_description: UILabel!
    @IBOutlet var view_allContent: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        view_allContent.layer.shadowColor = UIColor(named: "color_secondary_light")?.cgColor
        view_allContent.layer.shadowOpacity = 0.8
        view_allContent.layer.shadowOffset = CGSize.zero
        view_allContent.layer.shadowRadius = 3.0
        view_allContent.layer.cornerRadius = 8.0


    }

}
