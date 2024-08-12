//
//  Selectors.swift
//  UserInterfaceProject
//
//  Created by Vijay Lal on 28/07/24.
//

import Foundation
extension DestinationDetailController {
    @objc func booked() {
     print("Booked")
    }
    @objc func backButtonPressed() {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func archiveButtonPressed() {
        print("pressed2")
    }
}
