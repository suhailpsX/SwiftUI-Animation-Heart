//
//  ContentView.swift
//  heart
//
//  Created by SUHAIL  on 28/02/22.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    @State private var fontColor = false
    var body: some View {
        ZStack {
            VStack()
            {
                Image(systemName: "heart.fill")
                    .font(.system(size: 150).bold())
                    .foregroundColor(colorChange ? .red : .yellow)
                    .scaleEffect(sizeChange ? 1.5 : 1)
                    .animation(.default)
                    .onTapGesture {
                        self.colorChange.toggle()
                        self.sizeChange.toggle()
                        self.fontColor.toggle()
                    }
                    .padding(.bottom).padding(12)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("f"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
