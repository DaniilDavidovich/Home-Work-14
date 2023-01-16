//
//  PeopleCell.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 13.01.23.
//

import UIKit

class PeopleCell: UICollectionViewCell {
    
    static let identifier = "PeopleCell"
    
    // MARK: - Outlets
    
    private lazy var valueOfPhoto: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var mainTitleLable: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imageOne: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let imageTwo: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let imageThree: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let imageFour: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 40
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

        contentView.addSubview(imageOne)
        contentView.addSubview(imageTwo)
        contentView.addSubview(imageThree)
        contentView.addSubview(imageFour)
        contentView.addSubview(mainTitleLable)
        contentView.addSubview(valueOfPhoto)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            imageOne.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3.5),
            imageOne.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageOne.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -128),
            imageOne.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -90),
            
            imageTwo.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageTwo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -3.5),
            imageTwo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -128),
            imageTwo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 90),
            
            imageThree.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3.5),
            imageThree.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 5),
            imageThree.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -41.5),
            imageThree.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -90),
            
            imageFour.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -3.5),
            imageFour.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 90),
            imageFour.topAnchor.constraint(equalTo: imageTwo.bottomAnchor, constant: 5),
            imageFour.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -41.5),
            
            valueOfPhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            valueOfPhoto.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            mainTitleLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainTitleLable.bottomAnchor.constraint(equalTo: valueOfPhoto.topAnchor)
        ])
    }
    
    // MARK: - Configuration
    
    func configuration(model: AlbumsModel) {
        self.mainTitleLable.text = model.mainTitle
        self.valueOfPhoto.text = model.valueOfPhoto
        self.imageOne.image = UIImage(named: AlbumsModel.people[0])
        self.imageTwo.image = UIImage(named: AlbumsModel.people[1])
        self.imageThree.image = UIImage(named: AlbumsModel.people[2])
        self.imageFour.image = UIImage(named: AlbumsModel.people[3])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.mainTitleLable.text = nil
        self.valueOfPhoto.text = nil
        self.imageOne.image = nil
        self.imageTwo.image = nil
        self.imageThree.image = nil
        self.imageFour.image = nil
    }
}
