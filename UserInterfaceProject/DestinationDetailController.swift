//
//  DestinationDetailController.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 27/07/24.
//

import Foundation
import UIKit
class DestinationDetailController: UIViewController {
    lazy var imageContainer: UIImageView = {
        let imageContainer = UIImageView()
        imageContainer.image = UIImage(named: "placeImage")
        imageContainer.contentMode = .scaleAspectFill
        imageContainer.clipsToBounds = true
        imageContainer.layer.cornerRadius = 26
        imageContainer.layer.masksToBounds = true
        return imageContainer
    }()
    lazy var backButtonContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 0.40)
        view.layer.cornerRadius = 22
        view.layer.masksToBounds = true
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(backButtonPressed)))
        return view
    }()
    lazy var backButtonImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "back_button_image")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    lazy var archiveButton: UIView = {
        let archiveButtonView = UIView()
        archiveButtonView.backgroundColor =  UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 0.40)
        archiveButtonView.layer.cornerRadius = 22
        archiveButtonView.layer.masksToBounds = true
        archiveButtonView.isUserInteractionEnabled = true
        archiveButtonView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(archiveButtonPressed)))
        return archiveButtonView
    }()
    lazy var archiveButtonImage: UIImageView = {
        let archiveButtonImage = UIImageView()
        archiveButtonImage.image = UIImage(named: "Archive")
        archiveButtonImage.contentMode = .scaleAspectFit
        return archiveButtonImage
    }()
    lazy var topViewContainer: UIView = {
        let viewContainer = UIView()
        viewContainer.backgroundColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 0.30)
        viewContainer.layer.cornerRadius = 15
        viewContainer.layer.masksToBounds = true
        return viewContainer
    }()
    lazy var placeNameLabel: UILabel = {
        let placeNameLabel = UILabel()
        placeNameLabel.text = "Andes Mountain"
        placeNameLabel.font = UIFont(name: "Inter-Regular", size: 24)
        placeNameLabel.textColor = .white
        return placeNameLabel
    }()
    lazy var overViewTxt: UILabel = {
        let overViewText = UILabel()
        overViewText.font = UIFont(name: "Inter-Regular", size: 22)
        overViewText.text = "Overview"
        overViewText.textColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 1.00)
        return overViewText
    }()
    lazy var detail: UILabel = {
        let details = UILabel()
        details.text = "Details"
        details.font = UIFont(name: "Inter-Regular", size: 16)
        details.textColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 0.62)
        return details
    }()
    lazy var clockBackGroundcolor: UIView = {
        let clockBackGound = UIView()
        clockBackGound.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        clockBackGound.layer.cornerRadius = 6
        clockBackGound.layer.masksToBounds = true
        return clockBackGound
    }()
    lazy var clockImageCenter: UIImageView = {
        let clockImage = UIImageView()
        clockImage.image = UIImage(named: "clock")
        return clockImage
    }()
    lazy var cloudBackgroundColor: UIView = {
        let cloudBackgroundColor = UIView()
        cloudBackgroundColor.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        cloudBackgroundColor.layer.cornerRadius = 6
        cloudBackgroundColor.layer.masksToBounds = true
        return cloudBackgroundColor
    }()
    lazy var cloudImageCenter: UIImageView = {
        let cloudImageCenter = UIImageView()
        cloudImageCenter.image = UIImage(named: "cloud")
        cloudImageCenter.layer.masksToBounds = true
        return cloudImageCenter
    }()
    lazy var time:UILabel = {
        let time = UILabel()
        time.text = "8 hours"
        time.textColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1.00)
        time.font = UIFont(name: "Roboto-Light", size: 18)
        return time
    }()
    lazy var titleContainer: UIVisualEffectView = {
        let view = UIVisualEffectView(effect: blurEffect)
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    lazy var blurEffect: UIBlurEffect = {
        let blur = UIBlurEffect(style: .dark)
        return blur
    }()
    lazy var locationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "location")
        imageView.clipsToBounds = true
        return imageView
    }()
    lazy var locationName: UILabel = {
        let locationName = UILabel()
        locationName.text = "South, America"
        locationName.font = UIFont(name: "Roboto-Light", size: 18)
        locationName.textColor = UIColor(red: 0.79, green: 0.78, blue: 0.78, alpha: 1.00)
        return locationName
    }()
    lazy var priceView: UILabel = {
        let price = UILabel()
        price.text = "Price"
        price.font = UIFont(name: "Roboto-Light", size: 16)
        price.textColor = UIColor(red: 0.79, green: 0.78, blue: 0.78, alpha: 1.00)
        return price
    }()
    lazy var tripTotalCost: UILabel = {
        let totalCost = UILabel()
        totalCost.text = "$230"
        totalCost.font = UIFont(name: "Roboto-Light", size: 20)
        totalCost.textColor = UIColor(red: 0.79, green: 0.78, blue: 0.78, alpha: 1.00)
        return totalCost
    }()
    lazy var weatherStatus: UILabel = {
        let weatherStatus = UILabel()
        weatherStatus.text = "16C"
        weatherStatus.textColor = UIColor(red: 0.49, green: 0.49, blue: 0.49, alpha: 1.00)
        weatherStatus.font = UIFont(name: "Roboto-Light", size: 18)
        return weatherStatus
    }()
    lazy var starBackGround: UIView = {
        let starBackGround = UIView()
        starBackGround.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        starBackGround.layer.cornerRadius = 6
        starBackGround.layer.masksToBounds = true
        return starBackGround
    }()
    lazy var starRatingImage: UIImageView = {
        let starRatingImage = UIImageView()
        starRatingImage.image = UIImage(named: "star")
        starRatingImage.clipsToBounds = true
        return starRatingImage
    }()
    lazy var ratingLabel: UILabel = {
        let ratingLabel = UILabel()
        ratingLabel.text = "4.5"
        ratingLabel.font = UIFont(name: "Roboto-Light", size: 18)
        return ratingLabel
    }()
    lazy var descriptionAboutPlace: UILabel = {
        let descriptionAboutPlace = UILabel()
        descriptionAboutPlace.text = "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to "
        descriptionAboutPlace.font = UIFont(name: "Roboto-Medium", size: 18)
        descriptionAboutPlace.numberOfLines = 0
        descriptionAboutPlace.textAlignment = .justified
        return descriptionAboutPlace
    }()
    lazy var bookNowButton: UIView = {
        let bookNowButton = UIView()
        bookNowButton.layer.cornerRadius = 20
        bookNowButton.backgroundColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 1.00)
        bookNowButton.layer.masksToBounds = true
        bookNowButton.isUserInteractionEnabled = true
        bookNowButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(booked)))
        return bookNowButton
    }()
    lazy var buttonImage: UIImageView = {
        let buttonImage = UIImageView()
        buttonImage.image = UIImage(named: "send")
        return buttonImage
    }()
    let buttonLabel: UILabel = {
        let buttonLabel = UILabel()
        buttonLabel.text = "Book Now"
        buttonLabel.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        buttonLabel.font = UIFont(name: "Roboto-Light", size: 20)
        return buttonLabel
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
}
