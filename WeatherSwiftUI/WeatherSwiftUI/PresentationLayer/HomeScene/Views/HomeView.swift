//
//  HomeView.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 07/01/23.
//

import SwiftUI

struct HomeView: View {
  
  @State private var isNight = false
  
  var body: some View {
    ZStack {
      BackgroundView(topColor: isNight ? .black : .blue,
                     bottomColor: isNight ? .gray : Color("LightBlue"))
      VStack {
        CityTextView(cityName: "Pune, India")
        WeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temprature: 20)
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
          WeatherDayView(dayOfWeek: "SUN",
                         imageName: "cloud.sun.fill",
                         temperature: 17)
        }
        Spacer()
        
        Button {
          isNight.toggle()
        } label: {
          WeatherButton(title: "Change Day Time",
                        textColor: .blue,
                        backgroundColor: .white)
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
