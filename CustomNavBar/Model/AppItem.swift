//
//  AppItem.swift
//  CustomNavBar
//
//  Created by Kate Kashko on 5.10.2023.
//

import SwiftUI


struct AppItem: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var source: String = "Apple"
}
    var apps = [
        AppItem(name: "AppStore"),
        AppItem(name: "Calculator"),
        AppItem(name: "Calendar"),
        AppItem(name: "Camera"),
        AppItem(name: "Clock"),
        AppItem(name: "Apple Music"),
        AppItem(name: "Clips"),
        AppItem(name: "Contacts"),
        AppItem(name: "Message"),
        AppItem(name: "Mail"),
        AppItem(name: "Photos")
        ]
    
