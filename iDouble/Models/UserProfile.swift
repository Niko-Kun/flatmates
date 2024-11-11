//
//  UserProfile.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import Foundation
import PhotosUI

struct UserProfile : Identifiable {
    
    var id : UUID = UUID()
    
    var name: String
    var image: String = "noImage"
    var houseCode: String = "noHouse"
    var ImageUI : UIImage
    
    func convertImageToBase64() -> String {
        if let imageData = self.ImageUI.jpegData(compressionQuality: 1.0) {
            return imageData.base64EncodedString()
        }
        return ""
    }
}
