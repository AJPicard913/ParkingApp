//
//  ContentView.swift
//  Shared
//
//  Created by AJ Picard on 3/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopView()
            BottomView()
        }
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.1764490306, green: 0.1764856577, blue: 0.1764442325, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Header: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.backward")
                .font(.system(size: 24))
            Spacer()
            VStack (spacing: 4) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 20, height: 4)
                    .foregroundColor(Color(#colorLiteral(red: 0.9650059342, green: 0.818136692, blue: 0.2263202071, alpha: 1)))
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 20, height: 4)
                    .foregroundColor(Color(#colorLiteral(red: 0.9650059342, green: 0.818136692, blue: 0.2263202071, alpha: 1)))
            }
            .frame(width: 44, height: 44)
            .background(Color(#colorLiteral(red: 0.2587943673, green: 0.2588439882, blue: 0.2587878108, alpha: 1)))
            .clipShape(Circle())
        }
        .padding(.horizontal, 25)
    }
}

struct TopView: View {
    var body: some View {
        VStack {
            Header()
                .padding(.top, 60)
            ZStack {
                Image("Tesla")
                    .resizable()
                    .frame(width: 280, height: 240)
            }
            HStack {
                Text("Safe Park 2")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Text("$5/hr")
                    .font(.title3)
            }
            .padding(.leading, 50)
            .padding(.trailing, 30)
            .padding(.bottom, 20)
        }
        .background(Color(#colorLiteral(red: 0.9746207595, green: 0.8422674537, blue: 0.2301233113, alpha: 1)))
    }
}

struct BottomView: View {
    var body: some View {
        VStack {
            
            // End Time Text
            HStack {
                Text("End Time")
                    .foregroundColor(Color(#colorLiteral(red: 0.7521788478, green: 0.7523065209, blue: 0.7521620989, alpha: 1)))
                Spacer()
            }
            .padding(.leading, 50)
            Spacer().frame(height: 25)
            
            // Buttons
            HStack {
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Today")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .frame(width: 120, height: 38)
                .background(Color(#colorLiteral(red: 0.9746207595, green: 0.8422674537, blue: 0.2301233113, alpha: 1)))
                .cornerRadius(20)
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Tomorrow")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(width: 100, height: 38)
                .background(Color(#colorLiteral(red: 0.1764490306, green: 0.1764856577, blue: 0.1764442325, alpha: 1)))
                .cornerRadius(20)
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Later")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(width: 80, height: 38)
                .background(Color(#colorLiteral(red: 0.1764490306, green: 0.1764856577, blue: 0.1764442325, alpha: 1)))
                .cornerRadius(20)
            }
            Spacer().frame(height: 20)
            
            // Time
            HStack {
                Text("10:40 pm")
                    .font(.system(size: 48))
                    .bold()
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.leading, 50)
            Spacer().frame(height: 34)
            
            // Alert
            HStack {
                Circle()
                    .frame(width: 12, height: 12)
                    .foregroundColor(Color(#colorLiteral(red: 0.9746207595, green: 0.8422674537, blue: 0.2301233113, alpha: 1)))
                Text("Alert me 15 minutes before")
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.leading, 54)
            Spacer().frame(height: 30)
            
            // Slider
            HStack {
                VStack {
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 22))
                }
                .frame(width: 54, height: 54)
                .background(Color(#colorLiteral(red: 0.9699562192, green: 0.8424608111, blue: 0.2305725813, alpha: 1)))
                .clipShape(Circle())
                .padding(.leading, 8)
                Spacer().frame(width: 40)
                Text("Slide to park")
                    .foregroundColor(Color(#colorLiteral(red: 0.541121006, green: 0.5412153006, blue: 0.5411086082, alpha: 1)))
                    .bold()
                Spacer()
            }
            .frame(height: 64)
            .background(Color(#colorLiteral(red: 0.2587943673, green: 0.2588439882, blue: 0.2587878108, alpha: 1)))
            .cornerRadius(27)
            .padding(.horizontal, 40)
            
            
        }
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.1764490306, green: 0.1764856577, blue: 0.1764442325, alpha: 1)))
    }
}
