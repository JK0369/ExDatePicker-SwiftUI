//
//  ContentView.swift
//  ExDataPicker
//
//  Created by 김종권 on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
  @State var date = Date()
  @State var color = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
  
  var dateRange: ClosedRange<Date> {
    let min = Calendar.current.date(
      byAdding: .year,
      value: -10,
      to: date
    )!
    let max = Calendar.current.date(
      byAdding: .year,
      value: 10,
      to: date
    )!
    return min...max
  }
    
  var body: some View {
//    ScrollView {
//      DatePicker(
//        "DatePicker",
//        selection: $date,
//        in: dateRange,
//        displayedComponents: [.date, .hourAndMinute]
//      )
//        .datePickerStyle(.automatic)
//
//      DatePicker(
//        "DatePicker",
//        selection: $date,
//        in: dateRange,
//        displayedComponents: [.date, .hourAndMinute]
//      )
//        .datePickerStyle(.graphical)
//
//      DatePicker(
//        "DatePicker",
//        selection: $date,
//        in: dateRange,
//        displayedComponents: [.date, .hourAndMinute]
//      )
//        .datePickerStyle(.wheel)
//
//      DatePicker(
//        "DatePicker",
//        selection: $date,
//        in: dateRange,
//        displayedComponents: [.date, .hourAndMinute]
//      )
//        .datePickerStyle(.compact)
//    }
    ColorPicker(
      "ColorPicker",
      selection: $color
    )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

