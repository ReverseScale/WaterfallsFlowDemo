//
//  ViewController.swift
//  WaterfallsFlowDemo
//
//  Created by WhatsXie on 2017/9/15.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let shopID : String = "shopID"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        //布局
        let layout = RSCollectionView()
        
        //创建collectionView
        let collectionView = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: layout)
        view.addSubview(collectionView)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.white
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: shopID)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: shopID, for: indexPath)
        
        cell.backgroundColor = UIColor.red
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
}


