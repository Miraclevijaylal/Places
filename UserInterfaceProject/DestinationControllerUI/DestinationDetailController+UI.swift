//
//  DestinationDetailController+UI.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 28/07/24.
//

import Foundation
extension DestinationDetailController {
    func setValues() {
        if let unwrappedViewModel = self.viewModel {
            imageContainer.image = unwrappedViewModel.getImage()
            placeNameLabel.text = unwrappedViewModel.getPlaceName()
            locationName.text = unwrappedViewModel.getLocationString()
            ratingLabel.text = "\(unwrappedViewModel.getRating())"
            time.text = unwrappedViewModel.getTime()
            weatherStatus.text = unwrappedViewModel.getweather()
            descriptionAboutPlace.text = unwrappedViewModel.getAbout()
            tripTotalCost.text = unwrappedViewModel.getPrice()
        }
    }
     func initViews() {
        let guide = view.safeAreaLayoutGuide
        view.backgroundColor = .white
        view.addSubview(imageContainer)
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        [imageContainer.topAnchor.constraint(equalTo: guide.topAnchor, constant: 10),
         imageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
         imageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
         imageContainer.heightAnchor.constraint(equalToConstant: 350)
        ].forEach({ $0.isActive = true })
        view.addSubview(backButtonContainer)
        backButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        [backButtonContainer.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 18),
         backButtonContainer.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor, constant: 21),
         backButtonContainer.heightAnchor.constraint(equalToConstant: 44),
         backButtonContainer.widthAnchor.constraint(equalToConstant: 44)
        ].forEach({ $0.isActive = true })
        backButtonContainer.addSubview(backButtonImage)
        backButtonImage.translatesAutoresizingMaskIntoConstraints = false
        [backButtonImage.heightAnchor.constraint(equalToConstant: 12),
         backButtonImage.widthAnchor.constraint(equalToConstant: 12),
         backButtonImage.centerXAnchor.constraint(equalTo: backButtonContainer.centerXAnchor, constant: 0),
         backButtonImage.centerYAnchor.constraint(equalTo: backButtonContainer.centerYAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        view.addSubview(archiveButton)
        archiveButton.translatesAutoresizingMaskIntoConstraints = false
        [archiveButton.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 18),
         archiveButton.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: -19),
         archiveButton.heightAnchor.constraint(equalToConstant: 44),
         archiveButton.widthAnchor.constraint(equalToConstant: 44)
        ].forEach({ $0.isActive = true })
        archiveButton.addSubview(archiveButtonImage)
        archiveButtonImage.translatesAutoresizingMaskIntoConstraints = false
        [archiveButtonImage.centerXAnchor.constraint(equalTo: archiveButton.centerXAnchor, constant: 0),
         archiveButtonImage.centerYAnchor.constraint(equalTo: archiveButton.centerYAnchor, constant: 0),
         archiveButtonImage.heightAnchor.constraint(equalToConstant: 24),
         archiveButtonImage.widthAnchor.constraint(equalToConstant: 24)
        ].forEach({ $0.isActive = true })
        view.addSubview(titleContainer)
        titleContainer.translatesAutoresizingMaskIntoConstraints = false
        [titleContainer.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor, constant: 16),
         titleContainer.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: -20),
         titleContainer.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: -16),
         titleContainer.heightAnchor.constraint(equalToConstant: 104)
        ].forEach({ $0.isActive = true })
        titleContainer.contentView.addSubview(topViewContainer)
        topViewContainer.translatesAutoresizingMaskIntoConstraints = false
        [topViewContainer.trailingAnchor.constraint(equalTo: titleContainer.contentView.trailingAnchor, constant: 0),
         topViewContainer.leadingAnchor.constraint(equalTo: titleContainer.contentView.leadingAnchor, constant: 0),
         topViewContainer.bottomAnchor.constraint(equalTo: titleContainer.contentView.bottomAnchor, constant: 0),
         topViewContainer.topAnchor.constraint(equalTo: titleContainer.contentView.topAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        topViewContainer.addSubview(placeNameLabel)
        placeNameLabel.translatesAutoresizingMaskIntoConstraints = false
        [placeNameLabel.topAnchor.constraint(equalTo: titleContainer.topAnchor, constant: 18),
         placeNameLabel.leadingAnchor.constraint(equalTo: titleContainer.leadingAnchor, constant: 15)
        ].forEach({ $0.isActive = true })
        titleContainer.contentView.addSubview(locationImageView)
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        [locationImageView.leadingAnchor.constraint(equalTo: titleContainer.leadingAnchor, constant: 14),
         locationImageView.bottomAnchor.constraint(equalTo: titleContainer.bottomAnchor, constant: -18),
         locationImageView.heightAnchor.constraint(equalToConstant: 22),
         locationImageView.widthAnchor.constraint(equalToConstant: 22)
        ].forEach({ $0.isActive = true })
        titleContainer.contentView.addSubview(locationName)
        locationName.translatesAutoresizingMaskIntoConstraints = false
        [locationName.bottomAnchor.constraint(equalTo: titleContainer.bottomAnchor, constant: -18),
         locationName.leadingAnchor.constraint(equalTo: locationImageView.trailingAnchor, constant: 6)
        ].forEach({ $0.isActive = true })
        titleContainer.contentView.addSubview(priceView)
        priceView.translatesAutoresizingMaskIntoConstraints = false
        [priceView.topAnchor.constraint(equalTo: titleContainer.topAnchor, constant: 26),
         priceView.trailingAnchor.constraint(equalTo: titleContainer.trailingAnchor, constant: -22),
         priceView.leadingAnchor.constraint(equalTo: titleContainer.trailingAnchor, constant: -67)
        ].forEach({ $0.isActive = true })
        titleContainer.contentView.addSubview(tripTotalCost)
        tripTotalCost.translatesAutoresizingMaskIntoConstraints = false
        [tripTotalCost.topAnchor.constraint(equalTo: priceView.bottomAnchor, constant: 13),
         tripTotalCost.trailingAnchor.constraint(equalTo: titleContainer.trailingAnchor, constant: -23)
        ].forEach({ $0.isActive = true })
        view.addSubview(overViewTxt)
        overViewTxt.translatesAutoresizingMaskIntoConstraints = false
        [overViewTxt.topAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: 40),
         overViewTxt.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 28),
        ].forEach({ $0.isActive = true })
        view.addSubview(detail)
        detail.translatesAutoresizingMaskIntoConstraints = false
        [detail.centerYAnchor.constraint(equalTo: overViewTxt.centerYAnchor, constant: 0),
         detail.leadingAnchor.constraint(equalTo: overViewTxt.trailingAnchor, constant: 32),
        ].forEach({ $0.isActive = true })
        view.addSubview(clockBackGroundcolor)
        clockBackGroundcolor.translatesAutoresizingMaskIntoConstraints = false
        [clockBackGroundcolor.topAnchor.constraint(equalTo: overViewTxt.bottomAnchor, constant: 32),
         clockBackGroundcolor.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 28),
         clockBackGroundcolor.heightAnchor.constraint(equalToConstant: 34),
         clockBackGroundcolor.widthAnchor.constraint(equalToConstant: 34)
        ].forEach({ $0.isActive = true })
        clockBackGroundcolor.addSubview(clockImageCenter)
        clockImageCenter.translatesAutoresizingMaskIntoConstraints = false
        [clockImageCenter.centerXAnchor.constraint(equalTo: clockBackGroundcolor.centerXAnchor, constant: 0),
         clockImageCenter.centerYAnchor.constraint(equalTo: clockBackGroundcolor.centerYAnchor, constant: 0),
         clockImageCenter.widthAnchor.constraint(equalToConstant: 16),
         clockImageCenter.heightAnchor.constraint(equalToConstant: 16)
        ].forEach({ $0.isActive = true })
        view.addSubview(cloudBackgroundColor)
        cloudBackgroundColor.translatesAutoresizingMaskIntoConstraints = false
        [cloudBackgroundColor.centerYAnchor.constraint(equalTo: clockBackGroundcolor.centerYAnchor, constant: 0),
         cloudBackgroundColor.centerXAnchor.constraint(equalTo: guide.centerXAnchor, constant: -12),
         cloudBackgroundColor.heightAnchor.constraint(equalToConstant: 34),
         cloudBackgroundColor.widthAnchor.constraint(equalToConstant: 34)
        ].forEach({ $0.isActive = true })
        cloudBackgroundColor.addSubview(cloudImageCenter)
        cloudImageCenter.translatesAutoresizingMaskIntoConstraints = false
        [cloudImageCenter.centerXAnchor.constraint(equalTo: cloudBackgroundColor.centerXAnchor, constant: 0),
         cloudImageCenter.centerYAnchor.constraint(equalTo: cloudBackgroundColor.centerYAnchor, constant: 0),
         cloudImageCenter.widthAnchor.constraint(equalToConstant: 16),
         cloudImageCenter.heightAnchor.constraint(equalToConstant: 16)
        ].forEach({ $0.isActive = true })
        view.addSubview(time)
        time.translatesAutoresizingMaskIntoConstraints = false
        [time.leadingAnchor.constraint(equalTo: clockBackGroundcolor.trailingAnchor, constant: 6),
         time.centerYAnchor.constraint(equalTo: clockBackGroundcolor.centerYAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        view.addSubview(weatherStatus)
        weatherStatus.translatesAutoresizingMaskIntoConstraints = false
        [weatherStatus.centerYAnchor.constraint(equalTo: cloudBackgroundColor.centerYAnchor, constant: 0),
         weatherStatus.leadingAnchor.constraint(equalTo: cloudBackgroundColor.trailingAnchor, constant: 6)
        ].forEach({ $0.isActive = true })
        view.addSubview(starBackGround)
        starBackGround.translatesAutoresizingMaskIntoConstraints = false
        [starBackGround.centerYAnchor.constraint(equalTo: cloudBackgroundColor.centerYAnchor, constant: 0),
         starBackGround.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -64),
         starBackGround.widthAnchor.constraint(equalToConstant: 34),
         starBackGround.heightAnchor.constraint(equalToConstant: 34)
        ].forEach({ $0.isActive = true })
        starBackGround.addSubview(starRatingImage)
        starRatingImage.translatesAutoresizingMaskIntoConstraints = false
        [starRatingImage.centerXAnchor.constraint(equalTo: starBackGround.centerXAnchor, constant: 0),
         starRatingImage.centerYAnchor.constraint(equalTo: starBackGround.centerYAnchor, constant: 0),
         starRatingImage.heightAnchor.constraint(equalToConstant: 16),
         starRatingImage.widthAnchor.constraint(equalToConstant: 16)
        ].forEach({ $0.isActive = true})
        view.addSubview(ratingLabel)
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        [ratingLabel.leadingAnchor.constraint(equalTo: starBackGround.trailingAnchor, constant: 6),
         ratingLabel.centerYAnchor.constraint(equalTo: starBackGround.centerYAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        view.addSubview(descriptionAboutPlace)
        descriptionAboutPlace.translatesAutoresizingMaskIntoConstraints = false
        [descriptionAboutPlace.topAnchor.constraint(equalTo: clockBackGroundcolor.bottomAnchor, constant: 34),
         descriptionAboutPlace.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30),
         descriptionAboutPlace.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30)
        ].forEach({ $0.isActive = true })
        view.addSubview(bookNowButton)
        bookNowButton.translatesAutoresizingMaskIntoConstraints = false
        [bookNowButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 28),
         bookNowButton.topAnchor.constraint(equalTo: descriptionAboutPlace.bottomAnchor, constant: 20),
         bookNowButton.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -10),
         bookNowButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -29),
         bookNowButton.heightAnchor.constraint(equalToConstant: 66)
        ].forEach({ $0.isActive = true })
        bookNowButton.addSubview(buttonLabel)
        buttonLabel.translatesAutoresizingMaskIntoConstraints = false
        [buttonLabel.centerXAnchor.constraint(equalTo: bookNowButton.centerXAnchor, constant: 0),
         buttonLabel.centerYAnchor.constraint(equalTo: bookNowButton.centerYAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        bookNowButton.addSubview(buttonImage)
        buttonImage.translatesAutoresizingMaskIntoConstraints = false
        [buttonImage.leadingAnchor.constraint(equalTo: buttonLabel.trailingAnchor, constant: 20),
         buttonImage.topAnchor.constraint(equalTo: buttonLabel.topAnchor, constant: 0),
         buttonImage.heightAnchor.constraint(equalToConstant: 23),
         buttonImage.widthAnchor.constraint(equalToConstant: 23)
        ].forEach({ $0.isActive = true})
    }
}
