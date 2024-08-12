//
//  File.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 05/08/24.
//

import Foundation
extension HomeController {
   internal func initViews() {
        let guide = view.safeAreaLayoutGuide
        view.addSubview(topLabel)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        [topLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 8),
         topLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 26),
        ].forEach({ $0.isActive = true })
        view.addSubview(exploreLabel)
        exploreLabel.translatesAutoresizingMaskIntoConstraints = false
        [exploreLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 9),
         exploreLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 26)
        ].forEach({ $0.isActive = true })
        view.addSubview(pictureDisplay)
        pictureDisplay.translatesAutoresizingMaskIntoConstraints = false
        [pictureDisplay.topAnchor.constraint(equalTo: guide.topAnchor, constant: 28),
         pictureDisplay.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -14),
         pictureDisplay.heightAnchor.constraint(equalToConstant: 50),
         pictureDisplay.widthAnchor.constraint(equalToConstant: 50)
        ].forEach({ $0.isActive = true })
        view.addSubview(inputFieldContainer)
        inputFieldContainer.translatesAutoresizingMaskIntoConstraints = false
        [inputFieldContainer.topAnchor.constraint(equalTo: exploreLabel.bottomAnchor, constant: 38),
         inputFieldContainer.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 28),
         inputFieldContainer.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -28),
         inputFieldContainer.heightAnchor.constraint(equalToConstant: 58)
        ].forEach({ $0.isActive = true })
        inputFieldContainer.addSubview(inputField)
        inputField.translatesAutoresizingMaskIntoConstraints = false
        [inputField.centerYAnchor.constraint(equalTo: inputFieldContainer.centerYAnchor, constant: 0),
         inputField.leadingAnchor.constraint(equalTo: inputFieldContainer.leadingAnchor, constant: 31),
         inputField.trailingAnchor.constraint(equalTo: inputFieldContainer.trailingAnchor, constant: -93)
        ].forEach({ $0.isActive = true })
        inputFieldContainer.addSubview(verticalLine)
        verticalLine.translatesAutoresizingMaskIntoConstraints = false
        [verticalLine.centerYAnchor.constraint(equalTo: inputFieldContainer.centerYAnchor, constant: 0),
         verticalLine.trailingAnchor.constraint(equalTo: inputFieldContainer.trailingAnchor, constant: -84),
         verticalLine.heightAnchor.constraint(equalToConstant: 32),
         verticalLine.widthAnchor.constraint(equalToConstant: 1)
        ].forEach({ $0.isActive = true })
        inputFieldContainer.addSubview(filterImageView)
        filterImageView.translatesAutoresizingMaskIntoConstraints = false
        [filterImageView.widthAnchor.constraint(equalToConstant: 24),
         filterImageView.heightAnchor.constraint(equalToConstant: 24),
         filterImageView.centerYAnchor.constraint(equalTo: inputFieldContainer.centerYAnchor, constant: 0),
         filterImageView.leadingAnchor.constraint(equalTo: verticalLine.trailingAnchor, constant: 28)
        ].forEach({ $0.isActive = true })
        view.addSubview(popularplace)
        popularplace.translatesAutoresizingMaskIntoConstraints = false
        [popularplace.topAnchor.constraint(equalTo: inputField.bottomAnchor, constant: 42),
         popularplace.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 26)
        ].forEach({ $0.isActive = true })
        view.addSubview(viewall)
        viewall.translatesAutoresizingMaskIntoConstraints = false
        [viewall.centerYAnchor.constraint(equalTo: popularplace.centerYAnchor, constant: 0),
         viewall.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -27)
        ].forEach({ $0.isActive = true })
        view.addSubview(sectionCollectionView)
        sectionCollectionView.translatesAutoresizingMaskIntoConstraints = false
        [sectionCollectionView.topAnchor.constraint(equalTo: popularplace.bottomAnchor, constant: 39),
         sectionCollectionView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 0),
         sectionCollectionView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: 0),
         sectionCollectionView.heightAnchor.constraint(equalToConstant: 56)
        ].forEach({ $0.isActive = true })
       view.addSubview(placesCollectionView)
       placesCollectionView.translatesAutoresizingMaskIntoConstraints = false
       [placesCollectionView.topAnchor.constraint(equalTo: sectionCollectionView.bottomAnchor, constant: 45),
        placesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
        placesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        placesCollectionView.heightAnchor.constraint(equalToConstant: 407)
       ].forEach({ $0.isActive = true })
    }
}
