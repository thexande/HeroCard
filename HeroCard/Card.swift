import UIKit
import Anchorage
import Hero

final class Card: UIView {
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 12
        clipsToBounds = true
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 24
        layer.shadowOpacity = 0.25
        layer.shadowOffset = CGSize(width: 0, height: 8)
        backgroundColor = .green
        
        hero.modifiers = [
            .fade,
            .useNoSnapshot,
            .spring(stiffness: 250, damping: 25),
            .autolayout
        ]
        
        hero.id = "card"
        addSubview(label)
        label.edgeAnchors == edgeAnchors + 12
        label.hero.id = "label"
        label.hero.isEnabled = true
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent neque est, hendrerit vitae nibh ultrices, accumsan elementum ante. Phasellus fringilla sapien non lorem consectetur, in ullamcorper tortor condimentum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent neque est, hendrerit vitae nibh ultrices, accumsan elementum ante. Phasellus fringilla sapien non lorem consectetur, in ullamcorper tortor condimentum Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent neque est, hendrerit vitae nibh ultrices, accumsan elementum ante. Phasellus fringilla sapien non lorem consectetur, in ullamcorper tortor condimentum"
        label.numberOfLines = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
