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
        AppItem(name: "appstore"),
        AppItem(name: "calculator"),
        AppItem(name: "calendar"),
        AppItem(name: "camera"),
        AppItem(name: "clock"),
        AppItem(name: "applemusic"),
        AppItem(name: "clips"),
        AppItem(name: "contacts"),
        AppItem(name: "iosmessage"),
        AppItem(name: "mail"),
        AppItem(name: "photos")
        ]
    
