//
//  HomeRecommdTableViewCell.swift
//  SwiftNewer
//
//  Created by lsp's mac pro on 2018/11/1.
//  Copyright © 2018 lsp's mac pro. All rights reserved.
//

import UIKit

class HomeRecommdTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    

//    let Identified
    var collectionView : UICollectionView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUi()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUi(){
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 5, left: 5, bottom: 5, right: 5)
        

        
        collectionView = UICollectionView.init(frame: CGRect(x:0, y:64, width:ScreenWidth, height:400), collectionViewLayout: layout)
        collectionView?.backgroundColor = UIColor.white
        collectionView?.delegate = self
        collectionView?.dataSource = self
        self.contentView.addSubview(collectionView!)
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1;
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let indentifier = "RecommendCollectCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: indentifier, for: indexPath) as! RecommendCollectCell
        cell.titleLabel?.text = String(format:"%ditem",indexPath.row)
        return cell

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
