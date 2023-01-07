//
//  HomeView.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 07/01/23.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    ZStack {
      BackgroundView(topColor: .blue, bottomColor: .white)
      VStack {
        CityTextView(cityName: "Pune, India")
        WeatherView(imageName: "cloud.sun.fill", temprature: 20)
        Spacer()
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView()
    }
}
