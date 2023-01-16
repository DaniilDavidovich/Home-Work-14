
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    // MARK: - Setup
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        
        // for transmitions to tabBarController
        if #available(iOS 15.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
    
    func setupTabBarViewControllers() {
        let firstViewController = UINavigationController(rootViewController: LibraryTabBarItem())
        let firstIcon = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.on.rectangle"), selectedImage: UIImage(systemName: "photo.on.rectangle"))
        firstViewController.tabBarItem = firstIcon
        
        let secondViewController = UINavigationController(rootViewController:ForYouTabBarItem())
        let secondItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square.fill"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
        secondViewController.tabBarItem = secondItem
        
        let thirdViewController = UINavigationController(rootViewController: AlbumsTabBorItem())
        let thirdIcon = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        thirdViewController.tabBarItem = thirdIcon
        
        let fourViewController = UINavigationController(rootViewController:SearchTabBarItem())
        let fourtIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        fourViewController.tabBarItem = fourtIcon
        
        let conrollers = [firstViewController, secondViewController, thirdViewController, fourViewController]
        self.setViewControllers(conrollers, animated: true)
    }
}
