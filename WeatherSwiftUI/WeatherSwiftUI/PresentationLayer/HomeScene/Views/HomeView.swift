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
      BackgroundView(isNight: $isNight)
      VStack {
        CityTextView(cityName: "Pune, India")
        WeatherView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temprature: 20)
        HStack(spacing: 25) {
          ForEach(Weather.allCases, id: \.self) {
            WeatherDayView(
              dayOfWeek: $0.dayName,
              imageName: $0.imageName,
              temperature: $0.temprature)
          }
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
