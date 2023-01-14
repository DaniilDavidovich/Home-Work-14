
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        
        if #available(iOS 15.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
    
    func setupTabBarViewControllers() {
        let firstViewController = LibraryTabBarItem()
        let firstIcon = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.on.rectangle"), selectedImage: UIImage(systemName: "photo.on.rectangle"))
        firstViewController.tabBarItem = firstIcon
        
        let secondViewController = ForYouTabBarItem()
        let secondItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square.fill"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
        secondViewController.tabBarItem = secondItem
        
        let thirdViewController = AlbumsTabBorItem()
        let thirdIcon = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        thirdViewController.tabBarItem = thirdIcon
        
        let fourViewController = SearchTabBarItem()
        let fourtIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        fourViewController.tabBarItem = fourtIcon
        
        let conrollers = [firstViewController, secondViewController, thirdViewController, fourViewController]
        self.setViewControllers(conrollers, animated: true)
    }
    
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        print("Будет выбран контроллер - \(viewController.title ?? "")")
//        return true
//
//    }
    
}
