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
                Spacer()
                Text("gtfl dead")
                    .bold()
                    .font(.subheadline)
                    .padding(.horizontal)
                Spacer()
                Image(systemName: "ellipsis")
                    .resizable()
                    .frame(width: 20, height: 5)
                    .padding(.horizontal)
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
                    Text("Grateful Dead")
                        
                }
                .padding(.leading, 25)
                Spacer()
                Image(systemName: "heart")
                    .font(.title)
                    .padding(.trailing, 23)
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
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                Spacer()
                Text("-3:49")
                    .padding(.trailing, 25)
                    .font(.subheadline)
                    .foregroundStyle(Color(red: 0.2, green: 0.2, blue: 0.2))
            }
            HStack {
                Image(systemName: "shuffle")
                    .font(.title)
                    .foregroundStyle(.green)
                Image(systemName: "backward.end.fill")
                    .font(.title)
                    // change color
                Image(systemName: "pause.circle.fill")
                    .font(.title)
                    // change color
                Image(systemName: "forward.end.fill")
                    .font(.title)
            }
                
            
        }
    }
}

#Preview {
    ContentView()
}
