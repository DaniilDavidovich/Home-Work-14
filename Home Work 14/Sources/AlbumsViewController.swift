//
//  ViewController.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 12.01.23.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    //MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collection.delegate = self
        collection.dataSource = self
        collection.register(AlbumsCell.self, forCellWithReuseIdentifier: AlbumsCell.identifier)
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        return collection
    }()
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarhy()
        setupLayout()
    }
    
    //MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .black
        title = "Albums"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupHierarhy() {
        view.addSubview(collectionView)
        
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
        
    }
    
    //MARK: - Layout setup
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            
            switch sectionIndex {
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2), // width items
                                                       heightDimension: .fractionalWidth(1 / 1.8 * 2)) // hight items
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .groupPaging
                
                return layoutSection
            case 1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2), // width items
                                                       heightDimension: .fractionalWidth(1 / 1.8 )) // hight items
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 1)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .groupPaging
                
                return layoutSection
            
            case 2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2), // width items
                                                       heightDimension: .fractionalWidth(1 / 1.8)) // hight items
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 1)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0)
                layoutSection.orthogonalScrollingBehavior = .groupPaging
                
                return layoutSection
             default:
                
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                       heightDimension: .absolute(44))
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])

                let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
                layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 30, trailing: 10)

                return layoutSection
            }
        }
    }
}
        
    
    //MARK: - Extension

extension AlbumsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 6
        case 1:
            return 2
        case 2:
            return 2
        case 3:
            return 11
        case 4:
            return 3
        default:
            return 0 
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.identifier, for: indexPath)
            cell.backgroundColor = .systemGreen
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.identifier, for: indexPath)
            cell.backgroundColor = .systemBlue
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.identifier, for: indexPath)
            cell.backgroundColor = .systemRed
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.identifier, for: indexPath)
            cell.backgroundColor = .systemPink
            return cell
        case 4:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.identifier, for: indexPath)
            cell.backgroundColor = .systemGray
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AlbumsCell.identifier, for: indexPath)
            cell.backgroundColor = .systemGray
            return cell
        }
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//
//    }
    
}


