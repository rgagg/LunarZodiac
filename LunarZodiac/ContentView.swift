//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Richard Gagg on 1/2/2025.
//

import SwiftUI

struct ContentView: View {
  
  @State private var year: Int = 2025
  @State private var imageNimber: Int = 5
  
  var body: some View {
    VStack {
      Text("\(year)")
        .font(.largeTitle)
        .fontWeight(.black)
        .foregroundStyle(.red)
      
      Spacer()
      
      Image("image\(imageNimber)")
        .resizable()
        .scaledToFit()
      
      Spacer()
      
      HStack {
        Button {
          year -= 1
          imageNimber -= 1
          
          if imageNimber < 0 {
            year = 2032
            imageNimber = 11
          }

        } label: {
          Image(systemName: "chevron.left")
        }
        
        Spacer()
        
        Button {
          year += 1
          imageNimber += 1

          if imageNimber > 11 {
            year = 2020
            imageNimber = 0
          }
          
        } label: {
          Image(systemName: "chevron.right")
        }
      }
      .buttonStyle(.borderedProminent)
      .tint(.red)
      .foregroundStyle(.white)
      .font(.largeTitle)
      .fontWeight(.black)
      .padding(.horizontal)
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
