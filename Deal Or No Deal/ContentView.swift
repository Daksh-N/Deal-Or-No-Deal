//
//  ContentView.swift
//  Deal Or No Deal
//
//  Created by Daksh Nakra on 11/22/22, deleted and revived on 12/1/22.
//

import SwiftUI
struct ContentView: View {
    @State private var caseNumbers = [0.01,
                                1, 5,
                                10, 25, 50, 75,
                                100, 200, 300, 400, 500, 750,
                                1000, 5000,
                                10000, 25000, 50000, 75000,
                                100000, 200000, 300000, 400000, 500000, 750000,
                                1000000]
    var body: some View {
        NavigationView {
            VStack {
                CustomText(text: "Deal Or No Deal")
                .padding(25)
                Spacer()
                NavigationLink("Need Help on how to play? Click here!", destination: InstructionsView())
                    .padding(100)
                NavigationLink("To Game", destination: GameView(cases: caseNumbers))
            }
        }
    }
}

//inherited from "Pig"
struct CustomText: View {
    let text: String
    var body: some View {
        Text(text).font(.custom("Eurostile Extended", size: 36))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 citations:
 - Leo Lai
 - Dhanush Tipparaju
 */
