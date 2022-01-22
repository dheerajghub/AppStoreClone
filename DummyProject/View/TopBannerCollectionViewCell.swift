//
//  TopBannerCollectionViewCell.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class TopBannerCollectionViewCell: UICollectionViewCell {
    
    // MARK: PROPERTIES -
    
    let topDividerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .gray.withAlphaComponent(0.2)
        return v
    }()
    
    let bottomDividerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .gray.withAlphaComponent(0.2)
        return v
    }()
    
    let categoryLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Incredible Indie".uppercased()
        l.textColor = UIColor.link
        l.font = UIFont.systemFont(ofSize: 11, weight: .semibold)
        return l
    }()
    
    let titleLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "In My Shadow"
        l.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        return l
    }()
    
    let subtitleLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "The answer are in the shadows"
        l.textColor = UIColor.gray
        l.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        return l
    }()
    
    let previewBannerImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 5
        img.backgroundColor = .red
        img.clipsToBounds = true
        return img
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
        addSubview(topDividerView)
        addSubview(categoryLabel)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(previewBannerImage)
        addSubview(bottomDividerView)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            topDividerView.topAnchor.constraint(equalTo: topAnchor),
            topDividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            topDividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            topDividerView.heightAnchor.constraint(equalToConstant: 1),
            
            categoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            categoryLabel.topAnchor.constraint(equalTo: topDividerView.bottomAnchor, constant: 10),
            categoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            titleLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 2),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            
            previewBannerImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            previewBannerImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            previewBannerImage.bottomAnchor.constraint(equalTo: bottomDividerView.topAnchor, constant: -30),
            previewBannerImage.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 8),
            
            bottomDividerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomDividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            bottomDividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            bottomDividerView.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
}
