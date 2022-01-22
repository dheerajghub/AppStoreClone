//
//  AppInfoTwoCollectionViewCell.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class AppInfoTwoCollectionViewCell: UICollectionViewCell {
    
    // MARK: PROPERTIES -
    
    let appIconImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerCurve = .continuous
        img.layer.cornerRadius = 25
        img.backgroundColor = .red
        return img
    }()
    
    let bottomDividerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .gray.withAlphaComponent(0.2)
        return v
    }()
    
    let getBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        btn.setTitleColor(UIColor.link, for: .normal)
        btn.setTitle("₹340", for: .normal)
        btn.layer.cornerRadius = 15
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
        
        infoLabel.attributedText = setAttributedTitle("Blaze & the Monster Machines", "Truck racing games for kids!")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        addSubview(appIconImage)
        addSubview(bottomDividerView)
        addSubview(getBtn)
        addSubview(infoLabel)
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            appIconImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            appIconImage.widthAnchor.constraint(equalToConstant: 100),
            appIconImage.heightAnchor.constraint(equalToConstant: 100),
            appIconImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            bottomDividerView.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            bottomDividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            bottomDividerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomDividerView.heightAnchor.constraint(equalToConstant: 1),
            
            getBtn.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            getBtn.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            getBtn.widthAnchor.constraint(equalToConstant: 75),
            getBtn.heightAnchor.constraint(equalToConstant: 30),
            
            infoLabel.leadingAnchor.constraint(equalTo: appIconImage.trailingAnchor, constant: 10),
            infoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            infoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15)
        ])
    }
    
    func setAttributedTitle(_ title: String , _ subtitle: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(attributedString: NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 17, weight: .regular)]))
        attributedText.append(NSAttributedString(string: "\n\(subtitle)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13, weight: .regular) , NSAttributedString.Key.foregroundColor: UIColor.gray]))
        return attributedText
    }
    
}
