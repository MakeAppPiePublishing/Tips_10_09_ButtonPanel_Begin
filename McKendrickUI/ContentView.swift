//
//  ContentView.swift
//  McKendrickUI
//
//  Created by Steven Lipton on 3/6/20.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

let buttonTitles = ["Comms","Jackets","Spacer Handbook","Ship Functions","News" ]

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
        VStack{
            TitleView(subtitle: "Functional")
            .foregroundColor(.gold)
            .padding([.bottom],10)
            .padding(.top,40)
            HStack{
                ZStack{ //Content
                    //BusinessNewsView()
                    EnvironmentalView()
                } //Zstack
                    .frame(width:geometry.size.width * 0.75)
                    .foregroundColor(.gold)
                GeometryReader{ geometery in
                    VStack { //buttons
                        Spacer()
                        ButtonSelectionView(buttonTitles:buttonTitles)
                    .frame(height:geometery.size.height * (4/5) )
                }//vstack
                }//geometery
            }//Hstack
            Spacer()
            FootNoteView()
                .padding([.leading,.trailing], 10)
                .frame(height:geometry.size.height * 0.1)
        }
        .background(Color.darkGreen)
        
        
        }//Geometryreader

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
