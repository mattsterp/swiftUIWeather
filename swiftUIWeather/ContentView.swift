//
//  ContentView.swift
//  swiftUIWeather
//
//  Created by Matthew Peters on 4/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue,.white]),                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
             .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Cupertino, Ca")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                HStack {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.sun.fill", temperature: 74)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
            Text("\(temperature)")
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
