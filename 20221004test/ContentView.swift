//
//  ContentView.swift
//  20221004test
//
//  Created by 森川柏旭 on 2022/10/04.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput:String = ""
    @State private var message:String = ""
    @State private var isPlaying = false
    var body: some View {
        VStack {
            NewView()
            Text("MY APP")
                .font(.largeTitle)
            TextField("用戶名", text: self.$textInput)
            HStack {
                
                
                Button("Text") {
                    self.isPlaying.toggle()
                }
                Image(systemName:  isPlaying ? "stop.circle.fill":"play.circle.fill")
                    .font(.system(size: 150))
                
                
                Button("確定") {
                    self.message = self.textInput
                }.padding(20)
                    .background(Color.green)
                    .foregroundColor(.white)
                .font(.system(size: 24))
                
                
                Button("取消") {
                    self.message = ""
                    self.textInput = ""
                }.padding(20)
                    .background(Color.green)
                    .foregroundColor(.white)
                .font(.system(size: 24))
            }
            Text(self.message)
                .font(.title)
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
