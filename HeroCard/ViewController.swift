import UIKit
import Hero
import Anchorage

class ViewController: UIViewController {
    let card = Card()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(card)
        card.sizeAnchors == CGSize(width: 100, height: 200)
        card.leadingAnchor == view.leadingAnchor + 24
        card.topAnchor == view.topAnchor + 250
        card.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap)))
        hero.isEnabled = true
        HeroAutolayoutFixPlugin.enable()
    }
    
    @objc func tap() {
        present(DetailViewController(), animated: true, completion: nil)
    }
}
