//
//  AlbumCellHeaderCollectionReusableView.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 12.01.23.
//

import UIKit

class AlbumCellHeader: UICollectionReusableView {
      
    static let identifier = "AlbumCellHeader"
    
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        addSubview(title)
    }
    
    private func setupLayout() {
        
//        title.snp.makeConstraints { make in
//            make.bottom.equalTo(self)
//            make.left.equalTo(self)
//        }
        
        NSLayoutConstraint.activate([
            title.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
