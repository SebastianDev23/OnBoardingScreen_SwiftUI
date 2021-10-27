//
//  CardModel.swift
//  OnBoardingScreen_SwiftUI
//
//  Created by Sebastian Kl

import SwiftUI


struct CardModel: View {
    
    var testData: Card
    
    var body: some View {
        
        VStack(spacing: 10) {
            Spacer()
            Image(testData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            HStack {
                Text(testData.title)
                    .multilineTextAlignment(.leading)
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Spacer()
            }
            HStack {
                Text(testData.description)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
        .padding()
        
    }
}
struct CardModel_Previews: PreviewProvider {
    static var previews: some View {
        CardModel(testData: Card.init(image: "1", title: "Test 1", description: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam"))
    }
}
