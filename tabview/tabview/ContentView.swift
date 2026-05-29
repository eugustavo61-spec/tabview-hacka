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
                
                
            }
            .tabItem{
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
            NavigationStack{
                List{
                    
                    NavigationLink("item 1"){
                        DetalheView(
                            titulo: "item 1",
                            cor :.pink)
                    }
                    NavigationLink("item 2"){
                        DetalheView(
                            titulo: "item 2",
                            cor : .blue)
                    }
                    NavigationLink("item 3"){
                        DetalheView(
                            titulo: "item 3",
                            cor : .gray)
                    }
                }
                .navigationTitle("lista A")
            }
            .tabItem{
                Label ("listas",
                       systemImage: "list.bullet")
            }
        }
        
    }
    struct DetalheView: View{
        var titulo : String
        var cor : Color
        var body: some View {
            ZStack{
                cor
                    .ignoresSafeArea()
                Text(titulo)
                    .font(.largeTitle)
                    .bold()
                
            }
        }
    }
}
#Preview {
    ContentView()
}

