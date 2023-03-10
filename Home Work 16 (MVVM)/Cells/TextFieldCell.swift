//
//  TextFieldCell.swift
//  Home Work 16 (MVVM)
//
//  Created by Daniil Davidovich on 23.01.23.
//

import UIKit

class TextFieldCell: UICollectionViewCell {
    
    static var identifier = "TextFieldCell"
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder = NSAttributedString(string: "Type something", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        let image = UIImage(systemName: "magnifyingglass")
        textField.setLeftIcon(image!)
        textField.backgroundColor = .white
        textField.textAlignment = .left
        textField.layer.cornerRadius = 25
        textField.isUserInteractionEnabled = false
        textField.tintColor = .gray
        return textField
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }
    
    //MARK: - Setups
    
    private func setupHierarhy() {
        contentView.addSubview(textField)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            textField.topAnchor.constraint(equalTo: contentView.topAnchor),
            textField.heightAnchor.constraint(equalToConstant: 50),
            textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}


extension UITextField {
    
    func setLeftIcon(_ image: UIImage) {
        
        let iconView = UIImageView(frame: CGRect(x: 25, y: 5, width: 30, height: 25))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 70, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}


