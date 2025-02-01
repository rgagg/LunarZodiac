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
          if year <= 2021 {
            year = 2032
            imageNimber = 11
          } else {
            year -= 1
            imageNimber -= 1
          }
          year -= 1
          imageNimber -= 1
        } label: {
          Image(systemName: "chevron.left.square.fill")
        }
        
        Spacer()
        
        Button {
          if year >= 2032 {
            year = 2020
            imageNimber = 0
          } else {
            year += 1
            imageNimber += 1
          }
        } label: {
          Image(systemName: "chevron.right.square.fill")
        }
      }
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundStyle(.red)
      .padding(.horizontal)
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
