//
//  ScoreView.swift
//  Deal Or No Deal
//
//  Created by Daksh Nakra on 12/7/22.
//

import SwiftUI

struct ScoreView: View {
    let remainingCases : [Double]
    var body: some View {
        VStack {
            CustomText(text: "W.I.P.")
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(remainingCases: [0.01,
                                   1, 5,
                                   10, 25, 50, 75,
                                   100, 200, 300, 400, 500, 750,
                                   1000, 5000,
                                   10000, 25000, 50000, 75000,
                                   100000, 200000, 300000, 400000, 500000, 750000,
                                   1000000])
    }
}
