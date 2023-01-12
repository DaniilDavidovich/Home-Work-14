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
    
    private lazy var featuredTitle: UILabel = {
        let label = UILabel()
        label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title2)
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
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
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
        contentView.addSubview(stack)
        stack.addArrangedSubview(featuredTitle)
        stack.addArrangedSubview(descriptionLabel)
        stack.addArrangedSubview(image)
    }
    
    private func setupLayout() {
//        stack.snp.makeConstraints { make in
//            make.left.top.right.bottom.equalTo(contentView)
//        }
//
//        stack.setCustomSpacing(10, after: descriptionLabel)
        
        NSLayoutConstraint.activate([
        
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stack.topAnchor.constraint(equalTo: contentView.topAnchor),
            stack.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
        ])
        
        stack.setCustomSpacing(10, after: descriptionLabel)
    }
    
    // MARK: - Configuration
    
    func configuration(model: AlbumsModel) {
        self.featuredTitle.text = model.mainTitle
        self.descriptionLabel.text = model.description
        self.image.image = UIImage(named: model.image)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
