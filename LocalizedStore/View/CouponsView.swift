//
//  CouponsView.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import SwiftUI

struct CouponsView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Special Coupons For You")
                    .font(.custom("SF Pro", size: 26, relativeTo: .headline))
                Spacer()
            }
                    
            Image("ses")
                .resizable()
                .frame(maxHeight: 144)
                .scaledToFill()
                .background(.cyan)
                .cornerRadius(8)
        }.padding()
    }
}

#Preview {
    CouponsView()
}
