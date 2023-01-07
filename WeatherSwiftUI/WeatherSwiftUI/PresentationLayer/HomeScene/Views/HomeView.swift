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
        HStack(spacing: 25) {
          WeatherDayView(dayOfWeek: "TUE",
                         imageName: "cloud.sun.fill",
                         temperature: 22)
          WeatherDayView(dayOfWeek: "WED",
                         imageName: "sun.max.fill",
                         temperature: 25)
          WeatherDayView(dayOfWeek: "THUR",
                         imageName: "cloud.sun.rain.fill",
                         temperature: 19)
          WeatherDayView(dayOfWeek: "FRI",
                         imageName: "cloud.sun.bolt.fill",
                         temperature: 18)
          WeatherDayView(dayOfWeek: "SAT",
                         imageName: "snowflake",
                         temperature: 12)
        }
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
