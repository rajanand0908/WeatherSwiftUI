//
//  Weather.swift
//  WeatherSwiftUI
//
//  Created by Raj Anand on 09/01/23.
//

enum Weather: CaseIterable {
  case tue, wed, thur, fri, sat, sun
  
  var dayName: String {
    switch self {
    case .tue:
      return "TUE"
    case .wed:
      return "WED"
    case .thur:
      return "THUR"
    case .fri:
      return "FRI"
    case .sat:
      return "SAT"
    case .sun:
      return "SUN"
    }
  }
  
  var imageName: String {
    switch self {
    case .tue:
      return "cloud.sun.fill"
    case .wed:
      return "sun.max.fill"
    case .thur:
      return "cloud.sun.rain.fill"
    case .fri:
      return "cloud.sun.bolt.fill"
    case .sat:
      return "snowflake"
    case .sun:
      return "cloud.sun.fill"
    }
  }
  
  var temprature: Int {
    switch self {
    case .tue:
      return 22
    case .wed:
      return 25
    case .thur:
      return 19
    case .fri:
      return 18
    case .sat:
      return 14
    case .sun:
      return 17
    }
  }
  
}
