//
//  GameView.swift
//  Deal Or No Deal
//
//  Created by Daksh Nakra on 12/6/22.
//

import SwiftUI

struct GameView: View {
    let cases : [Double]
    var numberOfTurns = 0
    var numberOfCasesToPick = 0
    var body: some View {
        NavigationView {
            VStack {
                CustomText(text: "Pick \(numberOfCasesToPick) Cases:")
                // Imported from Tic-Tac-Toe
                LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15), count: 2), spacing: 15) {
                    ForEach(0..<26){ index in
                        ZStack {
                            Color.purple
                        /*Color.gray
                         .opacity(moves[index] == "" ? 1 : 0)
                         Text(moves[index])
                         .font(.system(size: 90))
                         .fontWeight(.heavy)*/
                    }
                    /*.frame(width: 120, height: 120, alignment: .center)
                     .cornerRadius(30)
                     .onTapGesture {
                     withAnimation(.default) {
                     if moves[index] == "" {
                     moves[index] = xTurn ? "X" : "O"
                     xTurn.toggle()
                     }
                     }
                     }*/
                    /*.rotation3DEffect(
                     .init(degrees: moves[index] != "" ? 180 : 0),
                     axis: (x: 0.0, y: 1.0, z: 0.0)
                     )*/
                    }
                }
                NavigationLink("See Scoreboard", destination: ScoreView(remainingCases: cases))
            }
        }
    }
    func shuffleCases() {
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(cases: [0.01,
                         1, 5,
                         10, 25, 50, 75,
                         100, 200, 300, 400, 500, 750,
                         1000, 5000,
                         10000, 25000, 50000, 75000,
                         100000, 200000, 300000, 400000, 500000, 750000,
                         1000000])
    }
}
