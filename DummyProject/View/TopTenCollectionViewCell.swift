//
//  TopTenCollectionViewCell.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class TopTenCollectionViewCell: UICollectionViewCell {
    
    // MARK: PROPERTIES -
    
    let bannerImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.layer.cornerRadius = 5
        img.backgroundColor = .red
        return img
    }()
    
    let bannerLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Our top 10 retro games"
        l.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return l
    }()
    
    // MARK: MAIN -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        addSubview(bannerImageView)
        addSubview(bannerLabel)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            bannerImageView.topAnchor.constraint(equalTo: topAnchor),
            bannerImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bannerImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            bannerImageView.bottomAnchor.constraint(equalTo: bannerLabel.topAnchor , constant: -10),
            
            bannerLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            bannerLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            bannerLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            bannerLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
}
