//
//  HomeView.swift
//  CustomNavBar
//
//  Created by Kate Kashko on 5.10.2023.
//

import SwiftUI

struct HomeView: View {

        //for search bar
        @State var filteredItems = apps
        var body: some View {
           
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15) {
                    ForEach(filteredItems){ item in
                        CardView(item: item)
                        
                    }
                }
                .padding()
            }
        }
    }


//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
