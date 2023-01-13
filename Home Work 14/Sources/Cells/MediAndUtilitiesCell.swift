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
    
    let lineLabel: UILabel = {
        let lineLabelRight = UILabel ()
        lineLabelRight.backgroundColor = .systemGray5
        lineLabelRight.layer.cornerRadius = 2
        lineLabelRight.translatesAutoresizingMaskIntoConstraints = false
        return lineLabelRight
    }()

    private lazy var mainTitleLable: UILabel = {
        let label = UILabel()
        
//        label.font = UIFont.preferredFont(forTextStyle: .title2)
        if #available(iOS 16.0, *) {
            label.font = .systemFont(ofSize: 20, weight: .regular, width: .standard)
        } else {
            // Fallback on earlier versions
        }
        
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
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
        contentView.addSubview(lineLabel)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            lineLabel.leadingAnchor.constraint(equalTo: mainTitleLable.leadingAnchor, constant: 0),
            lineLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            lineLabel.heightAnchor.constraint(equalToConstant: 1),
            lineLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -17),
        
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 11),
            image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 5.5),
            image.heightAnchor.constraint(equalToConstant: 26),
            image.widthAnchor.constraint(equalToConstant: 30),
            
            mainTitleLable.centerYAnchor.constraint(equalTo: image.centerYAnchor),
            mainTitleLable.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20)
            
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
