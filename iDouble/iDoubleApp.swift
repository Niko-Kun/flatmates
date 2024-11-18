//
//  iDoubleApp.swift
//  iDouble
//
//  Created by Nicolò Amabile on 04/11/24.
//

import SwiftUI

@main
struct iDoubleApp: App {
    init() {
            UIView.appearance().overrideUserInterfaceStyle = .light
        }
    
    var body: some Scene {
        WindowGroup {
            BoardingView()
        }
    }
}
