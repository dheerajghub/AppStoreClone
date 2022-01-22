//
//  HomeVC+Delegates.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 20/01/22.
//

import UIKit

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopBannerCollectionViewCell", for: indexPath) as! TopBannerCollectionViewCell
            return cell
        } else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppInfoCollectionViewCell", for: indexPath) as! AppInfoCollectionViewCell
            cell.bottomDividerView.isHidden =  (indexPath.row + 1) % 3 == 0 ? true : false
            return cell
        } else if indexPath.section == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventBannerCollectionViewCell", for: indexPath) as! EventBannerCollectionViewCell
            return cell
        } else if indexPath.section == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopTenCollectionViewCell", for: indexPath) as! TopTenCollectionViewCell
            return cell
        } else if indexPath.section == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppInfoTwoCollectionViewCell", for: indexPath) as! AppInfoTwoCollectionViewCell
            cell.bottomDividerView.isHidden =  (indexPath.row + 1) % 2 == 0 ? true : false
            return cell
        } else if indexPath.section == 5 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaidAppPreviewCollectionViewCell", for: indexPath) as! PaidAppPreviewCollectionViewCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
            cell.backgroundColor = .random()
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: homeHeaderSectionId, for: indexPath) as! HomeSectionHeaderCollectionReusableView
        if indexPath.section == 1 {
            header.title.text = "What We're Playing"
            header.actionBtn.isHidden = false
        } else if indexPath.section == 2 {
            header.title.text = "Don't Miss These Events"
            header.actionBtn.isHidden = true
        } else if indexPath.section == 3 {
            header.title.text = "Our Top Ten..."
            header.actionBtn.isHidden = true
        } else if indexPath.section == 4 {
            header.title.text = "Games Kids Will Love"
            header.actionBtn.isHidden = false
        } else if indexPath.section == 5 {
            header.title.text = "Retro Reload"
            header.actionBtn.isHidden = false
        }
        return header
    }
    
}
