//
//  CreditCardOfferView.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import SwiftUI

struct CreditCardOfferView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Credit Card Offers")
                    .font(.custom("SF Pro", size: 26, relativeTo: .headline))
                    .padding(.leading, 18)
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15) {
                    Image("ses")
                        .resizable()
                        .frame(width: 250, height: 150)
                        .scaledToFill()
                        .background(.cyan)
                        .cornerRadius(8)

                    Image("ses")
                        .resizable()
                        .frame(width: 250, height: 150)
                        .scaledToFill()
                        .background(.cyan)
                        .cornerRadius(8)
                }
                .offset(x: 18)
            }
        }
    }
}

#Preview {
    CreditCardOfferView()
}
