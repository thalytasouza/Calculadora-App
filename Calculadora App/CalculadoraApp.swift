import SwiftUI

@main
struct CalculadoraApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        SplashView()
            .onAppear {
            }
    }
}

struct SplashView: View {
    @State private var opacity: Double = 0.0
    @State private var isSplashPresented = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("pbgm_l3sb_210528")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 2.0)) {
                        self.opacity = 1.0
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            isSplashPresented = true
                        }
                    }
                }
                .fullScreenCover(isPresented: $isSplashPresented) {
                    CalcView()
                }
            
            Spacer()
            
            Text("Calculadora App")
                .font(.largeTitle)
                .foregroundColor(.black)
            
            Spacer()
        }
    }
}
