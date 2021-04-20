//
//  ContentView.swift
//  SwiftUI Custom Tab Bar
//
//  Created by elhajjaji on 20/4/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        
        ZStack {
            Color("SPB").edgesIgnoringSafeArea(.all)

            VStack {
                TabView(selection: $selection) {
                    HomeView()
                        .tag(0)
                    SearchView()
                        .tag(1)
                    PlaylistView()
                        .tag(2)
                }
                
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                Divider()
                TabBarView(selection: $selection)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
