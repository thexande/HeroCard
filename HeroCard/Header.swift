import UIKit
import Anchorage
import Hero

final class Header: UIView {
    let card = Card()
    var parentViewController: UIViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(pan(gr:))))
        backgroundColor = .green
        addSubview(card)
        card.edgeAnchors == edgeAnchors
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func pan(gr: UIPanGestureRecognizer) {
        let translation = gr.translation(in: self)
        switch gr.state {
        case .began:
            parentViewController?.dismiss(animated: true, completion: nil)
        case .changed:
            Hero.shared.update(translation.y / bounds.height)
        default:
            let velocity = gr.velocity(in: self)
            if ((translation.y + velocity.y) / bounds.height) > 0.5 {
                Hero.shared.finish()
            } else {
                Hero.shared.cancel()
            }
        }
    }
}
