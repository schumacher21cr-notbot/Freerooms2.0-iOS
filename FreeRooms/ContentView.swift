import SwiftUI
import UIKit

struct ContentView: View {
    @State private var toques = 0

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "camera.aperture")
                .font(.system(size: 72))
            Text("Hola, FreeRooms")
                .font(.largeTitle.bold())
            Text("Etapa 1: prueba de instalación")
                .foregroundStyle(.secondary)
            Text("iOS \(UIDevice.current.systemVersion)")
                .font(.headline)
            Button("Tócame (\(toques))") {
                toques += 1
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
