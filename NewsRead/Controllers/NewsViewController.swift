//
//  NewsViewController.swift
//  NewsRead
//
//  Created by Anand on 28/08/21.
//

import UIKit

class NewsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView_newsList: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView_newsList.register(UINib(nibName: "NewsListCVCell", bundle: nil), forCellWithReuseIdentifier: "NewsListCVCell")
        collectionView_newsList.dataSource = self
        collectionView_newsList.delegate = self
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.width), height: (UIScreen.main.bounds.height) * 0.7)
        layout.minimumInteritemSpacing = 5
       // layout.minimumLineSpacing = 10
        collectionView_newsList.collectionViewLayout = layout
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsListCVCell", for: indexPath) as! NewsListCVCell
        return cell
    }

}
