//
//  RotatedBadgeSymbols.swift
//  SwiftUITutorials
//
//  Created by student on 19/04/24.
//

import SwiftUI

struct RotatedBadgeSymbols: View {
    let angle : Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbols(angle: Angle(degrees: 5))
}
