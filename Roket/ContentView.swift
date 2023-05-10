//
//  ContentView.swift
//  Roket
//
//  Created by Can Balaman on 10.05.2023.
//

import SwiftUI


struct ContentView: View {
        var body: some View {
            VStack {
                RocketBody()
                RocketCone()
            }
            .padding()
            .frame(width: 200, height: 300)
            .background(Color.black)
        }
    }

    struct RocketBody: View {
        var body: some View {
            Rectangle()
                .fill(Color.white)
                .frame(width: 100, height: 200)
                .cornerRadius(10)
        }
    }

    struct RocketCone: View {
        var body: some View {
            Path { path in
                path.move(to: CGPoint(x: 50, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 100))
                path.addLine(to: CGPoint(x: 100, y: 100))
                path.addLine(to: CGPoint(x: 50, y: 0))
            }
            .fill(Color.red)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
