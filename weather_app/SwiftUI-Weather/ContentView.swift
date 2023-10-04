//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Shohan's Mac on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight)
            VStack{
                CityView(cityName: "Gulshan, Dhaka")
                MainStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temp: 76)
               
                HStack(spacing: 20){
                    WeatherDayView(dayofWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temp: 76)
                    
                    WeatherDayView(dayofWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temp: 88)
                    
                    WeatherDayView(dayofWeek: "THU",
                                   imageName: "wind.snow",
                                   temp: 55)
                    
                    WeatherDayView(dayofWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temp: 60)
                    
                    WeatherDayView(dayofWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temp: 53)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                } label: {
                    PrimaryButton(btntext: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayofWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack{
            Text(dayofWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image (systemName: imageName)
                .symbolRenderingMode(.multicolor)
 //               .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temp)°")
                .font(.system(size: 24, weight: .bold, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        //        LinearGradient(colors: [isNight ? .black : .blue,
        //                                isNight ? .gray : Color("lightblue")],
        //                       startPoint: .topLeading,
        //                       endPoint: .bottomTrailing)
        //        .ignoresSafeArea()
        
        ContainerRelativeShape ()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainStatusView: View {
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°")
                .font(.system(size: 70, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 48)
    }
}


