//
//  MediAndUtilitiesCell.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 13.01.23.
//

import UIKit

class MediAndUtilitiesCell: UICollectionViewCell {
    
    static let identifier = "MediAndUtilities"
    
    // MARK: - Outlets

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
        contentView.addSubview(image)
        contentView.addSubview(mainTitleLable)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
        
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
//            image.topAnchor.constraint(equalTo: contentView.topAnchor),
//            image.bottomAnchor.constraint(equalTo: featuredTitle.topAnchor, constant: 10),
            image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 10),
            image.widthAnchor.constraint(equalToConstant: 10),
            
            mainTitleLable.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            mainTitleLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 100)
            
        ])
    }
    
    // MARK: - Configuration
    
    func configuration(model: AlbumsModel) {
        self.mainTitleLable.text = model.mainTitle
        self.image.image = UIImage(systemName: model.image ?? "")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
