//
//  AppInfoCollectionViewCell.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class AppInfoCollectionViewCell: UICollectionViewCell {
    
    // MARK: PROPERTIES -
    
    let appIconImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 15
        img.clipsToBounds = true
        img.backgroundColor = .red
        img.layer.cornerCurve = .continuous
        return img
    }()
    
    let bottomDividerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .gray.withAlphaComponent(0.2)
        return v
    }()
    
    let infoLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.numberOfLines = 3
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
        setUpContraints()
        //infoLabel.attributedText = setAttributedTitle("Garena Free Fire - Illuminate", "10-minute Survival shooter!")
        infoLabel.attributedText = setAttributedTitle("Zooba: Zooba Battle\nRoyale Games", "10-minute Survival shooter!")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        addSubview(appIconImage)
        addSubview(bottomDividerView)
        addSubview(infoLabel)
        addSubview(getBtn)
    }
    
    func setUpContraints(){
        NSLayoutConstraint.activate([
            appIconImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            appIconImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            appIconImage.widthAnchor.constraint(equalToConstant: 65),
            appIconImage.heightAnchor.constraint(equalToConstant: 65),
            
            bottomDividerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomDividerView.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            bottomDividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            bottomDividerView.heightAnchor.constraint(equalToConstant: 1),
            
            infoLabel.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            infoLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            infoLabel.trailingAnchor.constraint(equalTo: getBtn.leadingAnchor, constant: -5),
            
            getBtn.centerYAnchor.constraint(equalTo: centerYAnchor),
            getBtn.widthAnchor.constraint(equalToConstant: 75),
            getBtn.heightAnchor.constraint(equalToConstant: 30),
            getBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    func setAttributedTitle(_ title: String , _ subtitle: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .regular)]))
        attributedText.append(NSAttributedString(string: "\n\(subtitle)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13, weight: .regular) , NSAttributedString.Key.foregroundColor: UIColor.gray]))
        return attributedText
    }
    
}
