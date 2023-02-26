/* ContentView.swift --> DiceeUI. Created by Miguel Torres on 26/02/23. */

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("DiceeBack")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            VStack {
                Image("Las Vegas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 200)
                Text("¡Presiona el botón para lanzar los dados!")
                HStack {
                    Image("Cara 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                    Image("Cara 2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100.0, height: 100.0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
