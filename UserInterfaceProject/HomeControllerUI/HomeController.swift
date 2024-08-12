//
//  HomeController.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 04/08/24.
//

import Foundation
import UIKit
class HomeController: UIViewController {
    lazy var placesArray: [PlaceModel] = {
        [PlaceModel.init(placeName: "Mount Fuji, Tokyo", placeImage: "Fuji", city: "Tokyo", country: "Japan", rating: 4.8, isLiked: false, time: "10 hours", weather: "12°C", about: "Mount Fuji is the tallest mountain in Japan and is known for its graceful conical form. It is the country's sacred symbol, and temples and shrines are located around and on the volcano", price: "350$"),
         PlaceModel.init(placeName: "Andes Mountain", placeImage: "placeImage", city: "South", country: "America", rating: 4.5, isLiked: false, time: "8 hours", weather: "16°C", about: "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ", price: "230$")]
    }()
    lazy var customView: BaseView = {
        BaseView(with: .white, circular: true, shadow: true, borderColor: .lightGray, borderThickness: 1)
    }()
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.text = "HI,DAVID 👋"
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        label.textColor = .black
        return label
    }()
    lazy var exploreLabel: UILabel = {
        let label = UILabel()
        label.text = "Explore the World"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = UIColor(red: 0.53, green: 0.53, blue: 0.53, alpha: 1.00)
        return label
    }()
    lazy var pictureDisplay: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "manphoto")
        image.layer.cornerRadius = 25
        image.layer.masksToBounds = true
        return image
    }()
    lazy var inputField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Search places"
        textField.borderStyle = .none
        return textField
    }()
    lazy var inputFieldContainer: BaseView = {
        BaseView(with: .white, circular: false, shadow: false, borderColor: UIColor(red: 0.82, green: 0.82, blue: 0.82, alpha: 1.00), borderThickness: 2)
    }()
    lazy var detailButton: UIButton = {
        let button = UIButton()
        button.setTitle("click here", for: .normal)
        button.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        return button
    }()
    lazy var verticalLine: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 0.82, green: 0.82, blue: 0.82, alpha: 1.00)
        return line
    }()
    lazy var filterImageView: UIImageView = {
        let filter = UIImageView()
        filter.image = UIImage(named: "filter_icon")
        filter.contentMode = .scaleAspectFit
        return filter
    }()
    lazy var popularplace: UILabel = {
        let label = UILabel()
        label.text = "Popular places"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    lazy var viewall: UIButton = {
        let button = UIButton()
        button.setTitle("View all", for: .normal)
        button.setTitleColor(UIColor(red: 0.53, green: 0.53, blue: 0.53, alpha: 1.00), for: .normal)
        return button
    }()
    lazy var flowLayout: UICollectionViewFlowLayout = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize      // use estimatedItemSize as zero ,if collectionViewCell needs to resize according to content
        flowLayout.minimumInteritemSpacing = 25
        flowLayout.minimumLineSpacing = 25
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 28, bottom: 0, right: 28)
        return flowLayout
    }()
    lazy var sectionCollectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        view.dataSource = self
        view.delegate = self
        view.showsHorizontalScrollIndicator = false
        view.register(SectionCollectionViewCell.self,forCellWithReuseIdentifier: "SectionCollectionViewCell")
        view.allowsMultipleSelection = false
        view.tag = 1
        return view
    }()
    lazy var placesLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 22
        layout.minimumInteritemSpacing = 22
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.sectionInset = UIEdgeInsets(top: 0, left: 28, bottom: 0, right: 0)
        return layout
    }()
    lazy var placesCollectionView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: placesLayout)
        view.dataSource = self
        view.delegate = self
        view.allowsMultipleSelection = false
        view.showsHorizontalScrollIndicator = false
        view.register(PlaceCollectionViewCell.self, forCellWithReuseIdentifier: "PlaceCollectionViewCell")
        view.tag = 2
        return view
    }()
    let nameArray: [SectionHeadingModel] = [
    SectionHeadingModel(selected: true, heading: "Most Viewed"),
    SectionHeadingModel(selected: false, heading: "Nearby"),
    SectionHeadingModel(selected: false, heading: "Latest")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
//        sectionCollectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .left)
    }
}
extension HomeController {
    @objc func goToNextPage() {
    }
}
extension HomeController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1 { return nameArray.count } else { return placesArray.count }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SectionCollectionViewCell", for: indexPath) as! SectionCollectionViewCell
            cell.headingLabel.text = nameArray[indexPath.row].heading
            cell.selection = nameArray[indexPath.row].selected ?? false
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlaceCollectionViewCell", for: indexPath) as! PlaceCollectionViewCell
            cell.placeImageView.image = UIImage(named: placesArray[indexPath.row].placeImage ?? "")
            cell.placeName.text = placesArray[indexPath.row].placeName ?? ""
            cell.countryDetail.text = (placesArray[indexPath.row].city ?? "") + ", " + (placesArray[indexPath.row].country ?? "")
            cell.ratingPoint.text = "\(placesArray[indexPath.row].rating ?? 0)"
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 1 {
            nameArray.forEach({ $0.selected = false })
            nameArray[indexPath.row].selected = true
            collectionView.reloadData()
        } else {
            let vc = DestinationDetailController()
            let viewModel = DestinationDetailViewModel(placeModel: placesArray[indexPath.row])
            vc.viewModel = viewModel
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
class SectionHeadingModel {
    var selected: Bool?
    var heading: String?
    init(selected: Bool? = nil, heading: String? = nil) {
        self.selected = selected
        self.heading = heading
    }
}
