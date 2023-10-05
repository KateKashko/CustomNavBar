//
//  CustomNavigationView.swift
//  CustomNavBar
//
//  Created by Kate Kashko on 5.10.2023.
//

import SwiftUI

struct CustomNavigationView: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        return CustomNavigationView.Coordinator(parent: self)
    }
    

    
    // Just Change Your View That Requires Search Bar.
    var view: HomeView
    
    //onSearch And OnCancel closures..
    
    var onSearch: (String)-> ()
    var onCancel: ()-> ()
    
    // requre closure on Call..
    
    init(view: HomeView, onSearch: @escaping (String)->() ,onCancel: @escaping ()->()) {
        self.view = view
        self.onSearch = onSearch
        self.onCancel = onCancel
    }
    
    // Integrating UIKit Navigation Controller With SwiftUI View...
    func makeUIViewController(context: Context) -> UINavigationController {
        
        let childView = UIHostingController(rootView: view)
        let controller = UINavigationController(rootViewController: childView)
        
        //new bar data
        controller.navigationBar.topItem?.title = "BlaBla"
        controller.navigationBar.prefersLargeTitles = true
        
        //search bar
        
        let searchController = UISearchController()
        searchController.searchBar.placeholder = "Search..."
        
        // setting delegate...
        searchController.searchBar.delegate = context.coordinator
        
        
        // disabling dim bg..
        searchController.obscuresBackgroundDuringPresentation=false
        
        //setting Search Bar in NavBar
        //disabling hide on scroll
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false
        controller.navigationBar.topItem?.searchController = searchController
        
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
    
    class Coordinator: NSObject, UISearchBarDelegate{
        var parent: CustomNavigationView
        
        init (parent: CustomNavigationView) {
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            // when text changes
            self.parent.onSearch(searchText)
        }
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            //when cancel button is clicked..
            self.parent.onCancel()
        }
    }
}

//struct CustomNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomNavigationView()
//    }
//}
