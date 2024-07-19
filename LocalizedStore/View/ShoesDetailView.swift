//
//  ShoesDetailView.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import SwiftUI

struct ShoesDetailView: View {
    var shoes: Shoes
    @State var selectedSize: String = "6"
    let title = String(localized: "Lebaran Sale!")
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                ZStack(alignment: .leading) {
                    Image(shoes.image)
                        .resizable()
                        .frame(maxWidth: .infinity, minHeight: 300)
                        .background(.yellow)
                    
                    VStack{
                        Spacer()
                        HStack{
                            Image(systemName: "tag")
                                .padding(.leading, 18)
                            Text("Lebaran Sale!")
                                .font(.custom("SF Pro", size: 15, relativeTo: .subheadline))
                            
                            Spacer()
                            Text("\(shoes.numOfPromoDays) days left")
                                .font(.custom("SF Pro", size: 15, relativeTo: .subheadline))
                                .padding(.trailing, 18)
                        }.padding(8)
                            .background(.thinMaterial)
                        
                    }
                }
                VStack(alignment: .leading){
                    Text(shoes.type)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text(shoes.series)
                        .font(.title)
                    
                    HStack{
                        Text(shoes.price.formatted())
                            .font(.custom("SF Pro", size: 17, relativeTo: .subheadline))
                            .padding(.top, 8)
                        Text("USD" + (shoes.price * 1.2).formatted())
                            .strikethrough(true, color: .gray)
                            .font(.custom("SF Pro", size: 17, relativeTo: .subheadline))
                            .foregroundColor(.gray)
                            .padding(.top, 8)
                        Text("20% off")
                            .font(.custom("SF Pro", size: 17, relativeTo: .subheadline))
                            .foregroundColor(.red)
                            .padding(.top, 8)
                    }
                    .padding(.bottom, 8)
                    
                    
                    Text(shoes.description)
                        .font(.body)
                    
                    Text("Size")
                        .font(.custom("SF Pro", size: 17, relativeTo: .body))
                        .padding(.top, 16)
                    
                    Picker("What is your size?", selection: $selectedSize) {
                        ForEach(shoes.availableSize, id: \.self){
                            Text($0).tag($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(.bottom, 8)
                    
                    Text("\(shoes.numOfItemLeft) item left")
                        .font(.custom("SF Pro", size: 13, relativeTo: .body))
                        .foregroundColor(.red)
                    Spacer()
                }.padding()
                Divider()
                HStack{
                    Image(systemName: "heart")
                        .foregroundColor(.blue)
                        .padding()
                    Button(action: {
                    }, label: {
                        HStack{
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                            Text("Add to Bag")
                                .foregroundColor(.white)
                        }
                    })
                    .buttonStyle(BorderedButtonStyle())
                    .frame(width: 300, height: 50)
                    .background(.blue)
                    .cornerRadius(16)
                }
                .padding()
            }
        }.toolbar(content: {
            Image(systemName: "bag")
        })
    }
}

#Preview {
    ShoesDetailView(shoes: Shoes(type: "Running Shoes", series: "Shoes 1", brand: "Brand 1", price: 19.99, image: "shoes1", description: "This is shoes 1 description.", availableSize: ["6", "6.5", "7", "7.5", "8"], numOfPromoDays: 1, numOfItemLeft: 2))
}
