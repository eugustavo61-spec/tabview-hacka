import SwiftUI
struct ContentView: View {
    var body : some View {
        TabView {
            ZStack {
                Color .pink
                    .ignoresSafeArea()
                Image(systemName:"paintbrush.fill")
                    .font(.system(size:120))
                    .foregroundColor(.black)
            
                
            } .tabItem{
                Label("Rosa", systemImage: "paintbrush.fill")
            
                }
            ZStack {
                Color .blue
                    .ignoresSafeArea()
                Image(systemName:"paintbrush.pointed.fill")
                    .font(.system(size:120))
                    .foregroundColor(.black)
                
            }
            .tabItem{
                Label("Azul",systemImage: "paintbrush.pointed.fill")
            }
            ZStack {
                Color .gray
                    .ignoresSafeArea()
                Image(systemName:"paintpalette.fill")
                    .font(.system(size:120))
                    .foregroundColor(.black)
            }
            .tabItem {
                Label("cinza", systemImage: "paintpalette.fill")
                    .font(.system(size:120))
                    .foregroundColor(.black)
                
            }
            
        }
    }
    
}




#Preview {
    ContentView()
}

