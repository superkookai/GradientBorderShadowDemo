//
//  LeftCenterRightDemo.swift
//  GradientBorderShadowDemo
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct LeftCenterRightDemo: View {
    var body: some View {
        VStack {
            Text("LEFT")
                .leftAlign()
            Text("CENTER")
                .centerAlign()
            Text("RIGHT")
                .rightAlign()
        }
        .padding()
        .font(.largeTitle)
    }
}

#Preview {
    LeftCenterRightDemo()
}

struct TextAlignment: ViewModifier {
    let alignment: Alignment
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: alignment)
    }
}

extension View {
    func leftAlign() -> some View {
        self.modifier(TextAlignment(alignment: .leading))
    }
    
    func centerAlign() -> some View {
        self.modifier(TextAlignment(alignment: .center))
    }
    
    func rightAlign() -> some View {
        self.modifier(TextAlignment(alignment: .trailing))
    }
}
