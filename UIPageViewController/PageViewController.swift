import UIKit

class PageViewController: UIPageViewController {
    
    let presentScreenContent = [
    "Первая страница презентации, рассказывает о том, что наше приложение из себя представляет",
    "Вторая страница презентации, рассказывает о какой-то удобной фишке приложения",
    "Третья страница презентации тоже рассказывает о чем-то очень интересном",
    "Ну и наконец последняя страница презентации с напутствием в добрый путь =)"
    ]
    
    let emojiArray = ["😉", "🤓", "🧐", "👍"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func showViewControllerAtIndex(_ index: Int) -> ContentViewController? {
        
        guard index >= 0 else { return nil }
        guard index < presentScreenContent.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        contentViewController.presentText = presentScreenContent[index]
        contentViewController.emoji = emojiArray[index]
        contentViewController.currentPage = index
        contentViewController.numberOfPages = presentScreenContent.count
        
        return contentViewController
    }
}
