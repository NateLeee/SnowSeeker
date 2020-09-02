//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Nate Lee on 9/1/20.
//  Copyright © 2020 Nate Lee. All rights reserved.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna, Arya, and Toby")
        }
    }
}

struct ContentView: View {
    // @Environment()
    @State private var layoutVertically = false
    
    var body: some View {
        Group {
            if layoutVertically {
                VStack {
                    UserView()
                }
            } else {
                HStack {
                    UserView()
                }
            }
        }
        .onTapGesture {
            self.layoutVertically.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
