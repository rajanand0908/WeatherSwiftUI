//
//  WeatherView.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 07/01/23.
//

import SwiftUI

struct WeatherView: View {
  
  var imageName: String
  var temprature: Int
  
  var body: some View {
    VStack(spacing: 8) {
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 180, height: 180)
      Text("\(temprature)°")
        .font(.system(size: 70, weight: .medium))
        .foregroundColor(.white)
    }
    .padding(.bottom, 60)
  }
  
}
