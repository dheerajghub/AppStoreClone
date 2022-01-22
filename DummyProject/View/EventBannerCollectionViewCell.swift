//
//  EventBannerCollectionViewCell.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class EventBannerCollectionViewCell: UICollectionViewCell {
    
    // MARK: PROPERTIES -
    
    let statusLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Now Available".uppercased()
        l.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        l.textColor = UIColor.link
        return l
    }()
    
    let cardView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 8
        v.backgroundColor = .red
        v.layer.masksToBounds = true
        return v
    }()
    
    let cardStatusLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "New Season".uppercased()
        l.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return l
    }()
    
    let cardInfoLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.numberOfLines = 2
        return l
    }()
    
    let appInfoView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor(red: 28/255, green: 29/255, blue: 30/255, alpha: 1)
        return v
    }()
    
    let appIconImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerCurve = .continuous
        img.layer.cornerRadius = 12
        img.backgroundColor = .white
        img.clipsToBounds = true
        return img
    }()
    
    let infoLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.numberOfLines = 2
        return l
    }()
    
    let getBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        btn.setTitleColor(UIColor.link, for: .normal)
        btn.setTitle("GET", for: .normal)
        btn.layer.cornerRadius = 15
        btn.layer.cornerCurve = .continuous
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return btn
    }()
    
    // MARK: MAIN -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
        
        infoLabel.attributedText = setAttributedTitle("SimCity BuildIt", "Build your extraordinary city.")
        cardInfoLabel.attributedText = setAttributedTitle("People of the Land", "Mayor's Pass Season: Maori has arrived!", titleSize: 18, subtitleColor: .white)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        addSubview(statusLabel)
        addSubview(cardView)
        cardView.addSubview(appInfoView)
        appInfoView.addSubview(appIconImage)
        appInfoView.addSubview(getBtn)
        appInfoView.addSubview(infoLabel)
        addSubview(cardInfoLabel)
        addSubview(cardStatusLabel)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            statusLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            statusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            statusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            cardView.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
            
            appInfoView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            appInfoView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            appInfoView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor),
            appInfoView.heightAnchor.constraint(equalToConstant: 70),
            
            appIconImage.leadingAnchor.constraint(equalTo: appInfoView.leadingAnchor, constant: 17),
            appIconImage.centerYAnchor.constraint(equalTo: appInfoView.centerYAnchor),
            appIconImage.heightAnchor.constraint(equalToConstant: 45),
            appIconImage.widthAnchor.constraint(equalToConstant: 45),
            
            getBtn.centerYAnchor.constraint(equalTo: appInfoView.centerYAnchor),
            getBtn.widthAnchor.constraint(equalToConstant: 75),
            getBtn.heightAnchor.constraint(equalToConstant: 30),
            getBtn.trailingAnchor.constraint(equalTo: appInfoView.trailingAnchor, constant: -17),
            
            infoLabel.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            infoLabel.trailingAnchor.constraint(equalTo: getBtn.leadingAnchor, constant: -5),
            infoLabel.centerYAnchor.constraint(equalTo: appInfoView.centerYAnchor),
            
            cardInfoLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 17),
            cardInfoLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -17),
            cardInfoLabel.bottomAnchor.constraint(equalTo: appInfoView.topAnchor, constant: -10),
            
            cardStatusLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 17),
            cardStatusLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -17),
            cardStatusLabel.bottomAnchor.constraint(equalTo: cardInfoLabel.topAnchor, constant: -2)
        ])
    }
    
    func setAttributedTitle(_ title: String , _ subtitle: String , titleSize: CGFloat = 16 , subtitleColor: UIColor = .gray) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: titleSize, weight: .regular)]))
        attributedText.append(NSAttributedString(string: "\n\(subtitle)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular) , NSAttributedString.Key.foregroundColor: subtitleColor]))
        return attributedText
    }
    
}
