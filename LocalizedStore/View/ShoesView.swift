//
//  ShoesView.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import SwiftUI

struct ShoesView: View {
    var body: some View {
        // Your code for displaying a list of shoes here
        VStack{
            NavigationView{
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 1) {
                        Divider()
                        CouponsView()
                        
                        SaleView()
                        
                        CreditCardOfferView()
                    }
                }
                .toolbar(content: {
                    Image(systemName: "bag")
                })
            }
        }
        
    }
    
    
}

#Preview {
    ShoesView()
}
