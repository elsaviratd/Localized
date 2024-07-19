//
//  LocalizedStoreApp.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import SwiftUI

@main
struct LocalizedStoreApp: App {
    @State private var selectedTab: Tab? = Tab.offers
        
        var body: some Scene {
            WindowGroup {
                ContentView(selectedTab: $selectedTab)
                    .frame(minWidth: 800, idealWidth: 1000, maxWidth: .infinity, minHeight: 600, idealHeight: 800, maxHeight: .infinity)
            }
        }
}
