//
//  WeatherDayView.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 07/01/23.
//

import SwiftUI

struct WeatherDayView: View {
  
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack {
      Text(dayOfWeek)
        .font(.system(size: 16, weight: .medium, design: .default))
        .foregroundColor(.white)
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
      Text(String(temperature))
        .font(.system(size: 28, weight: .medium))
        .foregroundColor(.white)
    }
  }
}
