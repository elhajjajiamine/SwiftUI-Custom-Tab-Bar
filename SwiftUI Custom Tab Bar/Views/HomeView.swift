//
//  HomeView.swift
//  SwiftUI Custom Tab Bar
//
//  Created by elhajjaji on 20/4/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("SPB").edgesIgnoringSafeArea(.all)
            Text("HomeView")
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
