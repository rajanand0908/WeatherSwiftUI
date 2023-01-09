//
//  BackgroundView.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 07/01/23.
//

import SwiftUI

struct BackgroundView: View {
  
  @Binding var isNight: Bool
  
  var body: some View {
    LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                               isNight ? .gray : Color("LightBlue")]),
                   startPoint: .topLeading,
                   endPoint: .bottomTrailing)
    .edgesIgnoringSafeArea(.all)
  }
  
}
