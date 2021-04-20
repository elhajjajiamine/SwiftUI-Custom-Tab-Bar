//
//  TabBarView.swift
//  SwiftUI Custom Tab Bar
//
//  Created by elhajjaji on 20/4/2021.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selection : Int
    @Namespace private var currentTab
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(tabs.indices){ index in
                GeometryReader { geometry in
                    VStack(spacing:4) {
                        if selection == index {
                            Color(.green)
                                .frame(height: 2)
                                .offset(y: -8)
                                .matchedGeometryEffect(id: "currentTab" , in: currentTab)
                        }
                        if tabs[selection].label == "Playlist" &&
                            tabs[index].label == "Playlist" {
                            Image(systemName: tabs[index].image)
                                .frame(height:20)
//                                .rotationEffect(.degrees(25))
                        }else {
                            Image(systemName: tabs[index].image)
                                .frame(height:20)
                                .rotationEffect(.degrees(0))
                        }
                        Text(tabs[index].label)
                            .font(.caption)
                            .fixedSize()
                    }
                    .fixedSize(horizontal: false, vertical : true)
                    .frame(width:geometry.size.width / 2, height : 44,alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selection == index ? Color(.green) : Color("SPBL"))
                    .onTapGesture {
                        withAnimation{
                            selection = index
                        }
                    }
                }
                .frame(height:44, alignment: .bottom)
            }
        }
        .background(Color("SPB"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selection: Binding.constant(0))
            .previewLayout(.sizeThatFits)
    }
}
struct Tab {
    let image : String
    let label : String
}
let tabs = [Tab(image: "music.note.house", label: "Home"),
            Tab(image: "magnifyingglass", label: "Search"),
            Tab(image: "tray.full", label: "Your Library")
]
