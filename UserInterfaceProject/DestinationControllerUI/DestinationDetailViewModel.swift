//
//  DestinationDetailViewModel.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 08/08/24.
//

import Foundation
import UIKit
protocol DestinationDetailViewModelProtocol {
    func getPlaceName() -> String
    func getLocationString() -> String
    func getImage() -> UIImage
    func getRating() -> Double
    func getTime() -> String
    func getweather() -> String
    func getAbout() -> String
    func getPrice() -> String
}
class DestinationDetailViewModel {
    var placeModel: PlaceModel!
    init(placeModel: PlaceModel!) {
        self.placeModel = placeModel
    }
}
extension DestinationDetailViewModel: DestinationDetailViewModelProtocol {
    func getPrice() -> String {
        placeModel.price ?? ""
    }
    
    func getTime() -> String {
        placeModel.time ?? ""
    }
    
    func getweather() -> String {
        placeModel.weather ?? ""
    }
    
    func getAbout() -> String {
        placeModel.about ?? ""
    }
    
    func getPlaceName() -> String {
        placeModel.placeName ?? ""
    }
    
    func getLocationString() -> String {
        (placeModel.city ?? "") + ", " + (placeModel.country ?? "")
    }
    
    func getImage() -> UIImage {
        if let image = UIImage(named: placeModel.placeImage ?? "") {
            return image
        } else {
            return UIImage()
        }
    }
    
    func getRating() -> Double {
        placeModel.rating ?? 0
    }
    
    
}
//class Dota: DestinationDetailViewModelProtocol {
//    func getPlaceName() -> String {
//        return "hi"
//    }
//    
//    func getLocationString() -> String {
//        return "hello"
//    }
//    
//    func getImage() -> UIImage {
//        return UIImage()
//    }
//    
//    func getRating() -> Double {
//        return 20
//    }
//    
//    
//}
