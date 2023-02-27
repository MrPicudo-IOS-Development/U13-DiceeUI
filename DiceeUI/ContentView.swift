/* ContentView.swift --> DiceeUI. Created by Miguel Torres on 26/02/23. */

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 3
    @State var rightDiceNumber = 5
    
    var body: some View {
        ZStack {
            Image("DiceeBack")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                Image("Las Vegas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 200)
                Text("¡Presiona el botón para lanzar los dados!")
                Spacer()
                HStack {
                    Dado(n: leftDiceNumber)
                    Dado(n: rightDiceNumber)
                }
                Spacer()
                Button("Lanzar dados") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white) // Text color
                    .buttonStyle(.borderedProminent) // Ajusta el padding del texto dentro del botón y da forma ovalada al contorno.
                    .tint(.black) // Color of bordered button
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Dado: View {
    let n: Int
    var body: some View {
        Image("Cara \(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all, 30.0)
    }
}
