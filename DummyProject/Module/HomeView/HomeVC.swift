//
//  HomeViewController.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 20/01/22.
//

import UIKit

class HomeVC: UIViewController {
    
    // MARK: PROPERTIES -
    
    let cellId = "cellId"
    let homeHeaderSectionId = "HomeSectionHeaderCollectionReusableView"
    
    lazy var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.dataSource = self
        cv.delegate = self
        cv.showsVerticalScrollIndicator = false
        cv.register(TopBannerCollectionViewCell.self, forCellWithReuseIdentifier: "TopBannerCollectionViewCell")
        cv.register(AppInfoCollectionViewCell.self, forCellWithReuseIdentifier: "AppInfoCollectionViewCell")
        cv.register(TopTenCollectionViewCell.self, forCellWithReuseIdentifier: "TopTenCollectionViewCell")
        cv.register(AppInfoTwoCollectionViewCell.self, forCellWithReuseIdentifier: "AppInfoTwoCollectionViewCell")
        cv.register(PaidAppPreviewCollectionViewCell.self, forCellWithReuseIdentifier: "PaidAppPreviewCollectionViewCell")
        
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        cv.register(HomeSectionHeaderCollectionReusableView.self, forSupplementaryViewOfKind: homeHeaderSectionId, withReuseIdentifier: homeHeaderSectionId)
        cv.register(EventBannerCollectionViewCell.self, forCellWithReuseIdentifier: "EventBannerCollectionViewCell")
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        return cv
    }()
    
    // MARK: MAIN -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigation()
        setUpViews()
        setUpContraints()
    }
    
    // MARK: FUNCTIONS -
    
    func setUpNavigation(){
        navigationItem.title = "App Store Layout"
    }
    
    func setUpViews(){
        view.addSubview(collectionView)
        configureCompositionalLayout()
    }
    
    func setUpContraints(){
        collectionView.pin(to: view)
    }
    
    func configureCompositionalLayout(){

        let layout = UICollectionViewCompositionalLayout { sectionNumber, env in

            if sectionNumber == 0 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)

                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(350)), subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                return section
            } else if sectionNumber == 1 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))

                let innerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/3)), subitems: [item])

                let outerGroup = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(240)), subitems: [innerGroup])

                let section = NSCollectionLayoutSection(group: outerGroup)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets.bottom = 15

                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(35)), elementKind: self.homeHeaderSectionId, alignment: .top)
                ]

                return section
            } else if sectionNumber == 2 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)

                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(350)), subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets.bottom = 15

                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(35)), elementKind: self.homeHeaderSectionId, alignment: .top)
                ]

                return section
            } else if sectionNumber == 3 {

                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.6), heightDimension: .absolute(180)), subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                section.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 30, trailing: 10)

                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(0.98), heightDimension: .absolute(35)), elementKind: self.homeHeaderSectionId, alignment: .top)
                ]

                return section

            } else if sectionNumber == 4 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))

                let innerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5)), subitems: [item])

                let outerGroup = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(240)), subitems: [innerGroup])

                let section = NSCollectionLayoutSection(group: outerGroup)
                section.orthogonalScrollingBehavior = .groupPagingCentered
                section.contentInsets.bottom = 15

                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(35)), elementKind: self.homeHeaderSectionId, alignment: .top)
                ]

                return section
            } else {

                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)

                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(350)), subitems: [item])

                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPagingCentered

                section.boundarySupplementaryItems = [
                    .init(layoutSize: .init(widthDimension: .fractionalWidth(0.93), heightDimension: .absolute(35)), elementKind: self.homeHeaderSectionId, alignment: .top)
                ]

                return section

            }
        }

        collectionView.setCollectionViewLayout(layout, animated: true)
    }
    

    
}
