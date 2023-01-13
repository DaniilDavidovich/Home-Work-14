//
//  MyAlbumViewCell.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 12.01.23.
//

import UIKit

class MyAlbumViewCell: UICollectionViewCell {
    
    static let identifier = "MyAlbumCell"
    
    // MARK: - Outlets
    
    private lazy var valueOfPhoto: UILabel = {
        let label = UILabel()
//        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var mainTitleLable: UILabel = {
        let label = UILabel()
//        label.font = UIFont.preferredFont(forTextStyle: .title2)
        label.font = .systemFont(ofSize: 13, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
//    lazy var stack: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.translatesAutoresizingMaskIntoConstraints = false
//        return stack
//    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
//        contentView.addSubview(stack)
//        stack.addArrangedSubview(image)
//        stack.addArrangedSubview(featuredTitle)
//        stack.addArrangedSubview(descriptionLabel)
        
        contentView.addSubview(image)
        contentView.addSubview(mainTitleLable)
        contentView.addSubview(valueOfPhoto)
    }
    
    private func setupLayout() {
//        stack.snp.makeConstraints { make in
//            make.left.top.right.bottom.equalTo(contentView)
//        }
//
//        stack.setCustomSpacing(10, after: descriptionLabel)
        
        NSLayoutConstraint.activate([
        
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.rightAnchor.constraint(equalTo: contentView.rightAnchor),
//            image.bottomAnchor.constraint(equalTo: featuredTitle.topAnchor, constant: 10),
            image.topAnchor.constraint(equalTo: contentView.topAnchor),

            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -40),
            
            valueOfPhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            valueOfPhoto.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            mainTitleLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainTitleLable.bottomAnchor.constraint(equalTo: valueOfPhoto.topAnchor)
            
        ])
        
//        stack.setCustomSpacing(50, after: image)
//        stack.isBaselineRelativeArrangement = true
    }
    
    // MARK: - Configuration
    
    func configuration(model: AlbumsModel) {
        self.mainTitleLable.text = model.mainTitle
        self.valueOfPhoto.text = model.valueOfPhoto
        self.image.image = UIImage(named: model.image ?? "")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
