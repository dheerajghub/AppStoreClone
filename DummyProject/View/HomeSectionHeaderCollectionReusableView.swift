//
//  HomeSectionHeaderCollectionReusableView.swift
//  DummyProject
//
//  Created by Dheeraj Kumar Sharma on 21/01/22.
//

import UIKit

class HomeSectionHeaderCollectionReusableView: UICollectionReusableView {
    
    // MARK: PROPERTIES -
    
    let title: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "What We're Playing"
        l.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return l
    }()
    
    let actionBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("See All", for: .normal)
        btn.setTitleColor(UIColor.link, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return btn
    }()
    
    // MARK: MAIN -
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: FUNCTIONS -
    
    func setUpViews(){
        addSubview(title)
        addSubview(actionBtn)
    }
    
    func setUpContraints(){
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            actionBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            actionBtn.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
