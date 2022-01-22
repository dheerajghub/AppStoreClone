//
//  PaidAppPreviewCollectionViewCell.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class PaidAppPreviewCollectionViewCell: UICollectionViewCell {
    
    // MARK: PROPERTIES -
    
    let cardTitle: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Relive a classic adventure"
        l.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return l
    }()
    
    let bannerMedia: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 5
        img.backgroundColor = .red
        img.clipsToBounds = true
        return img
    }()
    
    let appInfoCard: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let appIconImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerCurve = .continuous
        img.layer.cornerRadius = 15
        img.backgroundColor = .red
        return img
    }()
    
    let getBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        btn.setTitleColor(UIColor.link, for: .normal)
        btn.setTitle("₹449", for: .normal)
        btn.layer.cornerRadius = 15
        btn.layer.cornerCurve = .continuous
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return btn
    }()
    
    let infoLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.numberOfLines = 0
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
        addSubview(cardTitle)
        addSubview(bannerMedia)
        addSubview(appInfoCard)
        appInfoCard.addSubview(appIconImage)
        appInfoCard.addSubview(getBtn)
        appInfoCard.addSubview(infoLabel)
        
        infoLabel.attributedText = setAttributedTitle("Day of Tentacle\nRemastered", "Adventure")
        
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            cardTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            cardTitle.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cardTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            bannerMedia.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            bannerMedia.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            bannerMedia.topAnchor.constraint(equalTo: cardTitle.bottomAnchor, constant: 10),
            bannerMedia.bottomAnchor.constraint(equalTo: appInfoCard.topAnchor, constant: -10),
            
            appInfoCard.leadingAnchor.constraint(equalTo: leadingAnchor),
            appInfoCard.trailingAnchor.constraint(equalTo: trailingAnchor),
            appInfoCard.bottomAnchor.constraint(equalTo: bottomAnchor),
            appInfoCard.heightAnchor.constraint(equalToConstant: 80),
            
            appIconImage.leadingAnchor.constraint(equalTo: appInfoCard.leadingAnchor, constant: 5),
            appIconImage.widthAnchor.constraint(equalToConstant: 65),
            appIconImage.heightAnchor.constraint(equalToConstant: 65),
            appIconImage.centerYAnchor.constraint(equalTo: appInfoCard.centerYAnchor),
            
            getBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            getBtn.centerYAnchor.constraint(equalTo: appInfoCard.centerYAnchor),
            getBtn.widthAnchor.constraint(equalToConstant: 75),
            getBtn.heightAnchor.constraint(equalToConstant: 30),
            
            infoLabel.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            infoLabel.trailingAnchor.constraint(equalTo: getBtn.leadingAnchor, constant: -5),
            infoLabel.centerYAnchor.constraint(equalTo: appInfoCard.centerYAnchor)
        ])
    }
    
    func setAttributedTitle(_ title: String , _ subtitle: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .regular)]))
        attributedText.append(NSAttributedString(string: "\n\(subtitle)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13, weight: .regular) , NSAttributedString.Key.foregroundColor: UIColor.gray]))
        return attributedText
    }
    
}
