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
    }
  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView()
    }
}
