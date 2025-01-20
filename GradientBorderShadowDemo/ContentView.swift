//
//  ContentView.swift
//  GradientBorderShadowDemo
//
//  Created by Weerawut Chaiyasomboon on 20/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .padding()
            .gradientBorderAndShadow(gradient: LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing), borderWidth: 3)
    }
}

#Preview {
    ContentView()
}

struct RoundedCornerGradientShadow: ViewModifier {
    let radius: CGFloat
    let gradient: LinearGradient
    let shadowColor: Color
    let shadowRadius: CGFloat
    let borderWidth: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay {
                RoundedRectangle(cornerRadius: radius)
                    .stroke(gradient, lineWidth: borderWidth)
            }
            .shadow(color: shadowColor, radius: shadowRadius)
    }
}

extension View {
    func gradientBorderAndShadow(gradient: LinearGradient, borderWidth: CGFloat) -> some View {
        self.modifier(RoundedCornerGradientShadow(radius: 12, gradient: gradient, shadowColor: .gray.opacity(0.5), shadowRadius: 6, borderWidth: borderWidth))
    }
}
