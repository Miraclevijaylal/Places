//
//  SectionCollectionView.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 06/08/24.
//

import Foundation
import UIKit
class SectionCollectionViewCell: UICollectionViewCell {
    var selection: Bool? {
        didSet {
            if selection ?? false {
                headingLabel.textColor = .white
                containerView.setColorToBaseView(color: UIColor(red: 0.18, green: 0.18, blue: 0.18, alpha: 1.00))
            } else {
                headingLabel.textColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 1.00)
                containerView.setColorToBaseView(color: UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00))
            }
        }
    }
    var model: SectionHeadingModel?  {
        didSet {
            headingLabel.text = model?.heading ?? ""
        }
    }
    lazy var containerView: BaseView = {
        let view = BaseView(with: UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00), circular: false, shadow: false, borderColor: nil, borderThickness: nil)
//        view.setColorToBaseView(color: .red)
        return view
    }()
    lazy var headingLabel: UILabel = {
        let label = UILabel()
        label.text = "Most Viewed"
        label.textColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.lineBreakMode = .byWordWrapping
        label.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension SectionCollectionViewCell {
    private func initViews() {
//        self.backgroundColor = .blue
        self.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        [containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
         containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
         containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
         containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        containerView.addSubview(headingLabel)
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        [headingLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
         headingLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
         headingLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 21),
         headingLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -21)
        ].forEach({ $0.isActive = true })
    }
}
