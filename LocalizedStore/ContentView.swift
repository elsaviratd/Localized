//
//  ContentView.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var selectedTab: Tab?
    
    var body: some View {
        
        NavigationView{
            TabView {
                ShoesView()
                    .tabItem {
                        Image(systemName: "tag")
                        Text("Offers")
                    }
                    .tag(Tab.offers)
                
                CategoryView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Category")
                    }
                    .tag(Tab.category)
                
                WishListView()
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Wishlist")
                    }
                    .tag(Tab.wishlist)
                AccountView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
                    .tag(Tab.wishlist)
            }
            .frame(
                width: UIScreen.main.bounds.width ,
                height: UIScreen.main.bounds.height
            )
        }
        
    }
}


#Preview {
        ContentView(selectedTab: .constant(.offers))
            .previewDevice("iPhone 14 Pro")
}
