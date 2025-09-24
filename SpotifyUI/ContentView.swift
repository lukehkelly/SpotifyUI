//
//  ContentView.swift
//  SpotifyUI
//
//  Created by Luke Kelly on 9/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue: Double = 30
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.down")
                    .resizable()
                    .frame(width: 20, height: 13)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                Spacer()
                Text("gtfl dead")
                    .bold()
                    .font(.subheadline)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "ellipsis")
                    .resizable()
                    .frame(width: 20, height: 5)
                    .padding(.horizontal)
                    .foregroundStyle(.white)
            }
            Spacer()
            Image("cover")
                .resizable()
                .frame(width: 350, height: 350)
                .padding(.bottom, 50)
            HStack {
                VStack(alignment: .leading){
                    Text("Deal")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(.white)
                    Text("Grateful Dead")
                        .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                }
                .padding(.leading, 25)
                Spacer()
                Image(systemName: "heart")
                    .font(.title)
                    .padding(.trailing, 23)
                    .foregroundStyle(.white)
            }
            Slider(value: $sliderValue, in: 0...100)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 25)
                .disabled(true)
                .accentColor(.gray)
            HStack {
                Text("2:21")
                    .padding(.leading, 25)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                Spacer()
                Text("-3:49")
                    .padding(.trailing, 25)
                    .font(.subheadline)
                    .foregroundStyle(Color(red: 0.8, green: 0.8, blue: 0.8))
            }
            HStack {
                Image(systemName: "shuffle")
                    .font(.title)
                    .foregroundStyle(.green)
                    .padding(.leading, 25)
                Spacer()
                Image(systemName: "backward.end.fill")
                    .font(.title)
                    .foregroundStyle(.white)
                    // change color
                Spacer()
                Image(systemName: "pause.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    // change color
                Spacer()
                Image(systemName: "forward.end.fill")
                    .font(.title)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "repeat.1")
                    .font(.title)
                    .foregroundStyle(.green)
                    .padding(.trailing, 25)
            }
            .padding(.top, 10)
            HStack {
                Image(systemName: "tv.and.hifispeaker.fill")
                    .foregroundStyle(.white)
                    .padding(.leading, 25)
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .padding(.trailing, 25)
                    .foregroundStyle(.white)
                Image(systemName: "text.line.first.and.arrowtriangle.forward")
                    .padding(.trailing, 25)
                    .foregroundStyle(.white)
            }
            .padding(.vertical, 30)
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("top_green"), Color("bottom_green"), ]), startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    ContentView()
}
