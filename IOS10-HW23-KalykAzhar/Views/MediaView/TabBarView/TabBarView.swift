import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            MediaLibrary()
                .tabItem {
                    Image(systemName: "rectangle.stack.badge.play")
                    Text("Медиатека")
                }
            
            ContentViewForRadio()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            
            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            
        }
        .accentColor(.red)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
