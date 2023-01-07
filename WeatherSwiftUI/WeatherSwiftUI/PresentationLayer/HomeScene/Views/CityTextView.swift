//
//  CityTextView.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 07/01/23.
//

import SwiftUI

struct CityTextView: View {
  
  var cityName: String
  
  var body: some View {
    Text(cityName)
      .font(.system(size: 32, weight: .medium, design: .default))
      .foregroundColor(.white)
      .padding()
  }
  
}
