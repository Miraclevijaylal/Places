//
//  PlaceCollectionViewCell.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 07/08/24.
//

import Foundation
import UIKit
class PlaceCollectionViewCell: UICollectionViewCell {
    lazy var placeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    lazy var ViewBackgroundContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 0.40)
        view.layer.cornerRadius = 22
        view.layer.masksToBounds = true
        view.isUserInteractionEnabled = true
        return view
    }()
    lazy var likeIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "heart")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    lazy var detailContainer: UIVisualEffectView = {
        let view = UIVisualEffectView(effect: blurEffect)
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    lazy var blurEffect: UIBlurEffect = {
        let blur = UIBlurEffect(style: .dark)
        return blur
    }()
    lazy var placeName: UILabel = {
        let label = UILabel()
        label.text = "Mount Fuji, Tokyo"
        label.textColor = UIColor(red: 0.79, green: 0.78, blue: 0.78, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    lazy var locationIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "location_marker")
        return imageView
    }()
    lazy var countryDetail: UILabel = {
        let label = UILabel()
        label.text = "Tokyo, Japan"
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        label.textColor = UIColor(red: 0.79, green: 0.78, blue: 0.78, alpha: 1.00)
        return label
    }()
    lazy var starIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "star")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    lazy var ratingPoint: UILabel = {
        let label = UILabel()
        label.text = "4.8"
        label.textColor = UIColor(red: 0.79, green: 0.78, blue: 0.78, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
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
extension PlaceCollectionViewCell {
    func initViews() {
        self.addSubview(placeImageView)
        placeImageView.translatesAutoresizingMaskIntoConstraints = false
        [placeImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
         placeImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
         placeImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
         placeImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
         placeImageView.heightAnchor.constraint(equalToConstant: 405),
         placeImageView.widthAnchor.constraint(equalToConstant: 270)
        ].forEach({ $0.isActive = true })
        self.addSubview(ViewBackgroundContainer)
        ViewBackgroundContainer.translatesAutoresizingMaskIntoConstraints = false
        [ViewBackgroundContainer.topAnchor.constraint(equalTo: self.topAnchor, constant: 14),
         ViewBackgroundContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -17),
         ViewBackgroundContainer.heightAnchor.constraint(equalToConstant: 44),
         ViewBackgroundContainer.widthAnchor.constraint(equalToConstant: 44)
        ].forEach({ $0.isActive = true })
        ViewBackgroundContainer.addSubview(likeIconImage)
        likeIconImage.translatesAutoresizingMaskIntoConstraints = false
        [likeIconImage.centerXAnchor.constraint(equalTo: ViewBackgroundContainer.centerXAnchor, constant: 0),
         likeIconImage.centerYAnchor.constraint(equalTo: ViewBackgroundContainer.centerYAnchor, constant: 0),
         likeIconImage.heightAnchor.constraint(equalToConstant: 20),
         likeIconImage.widthAnchor.constraint(equalToConstant: 22)
        ].forEach({ $0.isActive = true })
        self.addSubview(detailContainer)
        detailContainer.translatesAutoresizingMaskIntoConstraints = false
        [detailContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
         detailContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -26),
         detailContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -25),
         detailContainer.heightAnchor.constraint(equalToConstant: 75)
        ].forEach({ $0.isActive = true })
        detailContainer.contentView.addSubview(placeName)
        placeName.translatesAutoresizingMaskIntoConstraints = false
        [placeName.topAnchor.constraint(equalTo: detailContainer.topAnchor, constant: 11),
         placeName.leadingAnchor.constraint(equalTo: detailContainer.leadingAnchor, constant: 16)
        ].forEach({ $0.isActive = true })
        detailContainer.contentView.addSubview(locationIcon)
        locationIcon.translatesAutoresizingMaskIntoConstraints = false
        [locationIcon.topAnchor.constraint(equalTo: placeName.bottomAnchor, constant: 13),
         locationIcon.leadingAnchor.constraint(equalTo: detailContainer.leadingAnchor, constant: 14),
         locationIcon.heightAnchor.constraint(equalToConstant: 16),
         locationIcon.widthAnchor.constraint(equalToConstant: 16)
        ].forEach({ $0.isActive = true })
        detailContainer.contentView.addSubview(countryDetail)
        countryDetail.translatesAutoresizingMaskIntoConstraints = false
        [countryDetail.centerYAnchor.constraint(equalTo: locationIcon.centerYAnchor, constant: 0),
         countryDetail.leadingAnchor.constraint(equalTo: locationIcon.trailingAnchor, constant: 12)
        ].forEach({ $0.isActive = true })
        detailContainer.contentView.addSubview(ratingPoint)
        ratingPoint.translatesAutoresizingMaskIntoConstraints = false
        [ratingPoint.bottomAnchor.constraint(equalTo: detailContainer.bottomAnchor, constant: -16),
         ratingPoint.trailingAnchor.constraint(equalTo: detailContainer.trailingAnchor, constant: -12)
        ].forEach({ $0.isActive = true })
        detailContainer.contentView.addSubview(starIcon)
        starIcon.translatesAutoresizingMaskIntoConstraints = false
        [starIcon.trailingAnchor.constraint(equalTo: ratingPoint.leadingAnchor, constant: -6),
         starIcon.centerYAnchor.constraint(equalTo: ratingPoint.centerYAnchor, constant: 0),
         starIcon.heightAnchor.constraint(equalToConstant: 12),
         starIcon.widthAnchor.constraint(equalToConstant: 12)
        ].forEach({ $0.isActive = true })
    }
}
