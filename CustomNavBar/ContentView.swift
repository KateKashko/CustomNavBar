//
//  ContentView.swift
//  CustomNavBar
//
//  Created by Kate Kashko on 5.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var filteredItems = apps
    
    var body: some View {
       CustomNavigationView(
        view: AnyView(HomeView(filteredItems: $filteredItems)),
        placeHolder: "Search",
        largeTitle: true,
        title: "CustomNavBar",
        onSearch: { (txt) in
            if txt != ""{
                self.filteredItems = apps.filter{$0.name.lowercased().contains(txt.lowercased())}
            } else{ self.filteredItems = apps
            }
        }, onCancel: {
            print("from chanceled")
        })
        .ignoresSafeArea() // NavBar заполняет верх
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
