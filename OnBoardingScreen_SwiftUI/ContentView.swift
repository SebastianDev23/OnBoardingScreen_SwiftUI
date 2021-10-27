//
//  ContentView.swift
//  OnBoardingScreen_SwiftUI
//
//  Created by Sebastian KL
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var selectedPage = 0
    
    var body: some View {
        VStack {
            
            TabView(selection: $selectedPage) {
                ForEach(0 ..< testData.count) { index in
                    CardModel(testData: testData[index]).tag(index)
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
            
            HStack {
                
                Spacer()
                Button(action: {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        selectedPage = (selectedPage + 1)
                        if selectedPage == 3 {
                            selectedPage = 0
                        }
                    }
                }) {
                    
                    Image(systemName: "arrow.right")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Circle().fill(Color.blue))
                }
            }
            .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
