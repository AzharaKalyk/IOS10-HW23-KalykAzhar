import SwiftUI

struct MediaLibrary: View {
    
    @State var buttonToggle = false
    
    var body: some View {
        NavigationView {
            VStack {
                if buttonToggle {
                    ListView()
                } else {
                    TextForMedia()
                }
            }
            .navigationTitle(Text("Медиатека"))
            .navigationBarItems(
                trailing:
                    Button(action: {
                        buttonToggle.toggle()
                    }, label: {
                        if buttonToggle {
                            Text("Готово")
                                .foregroundColor(.red)
                        } else {
                            Text("Править")
                                .foregroundColor(.red)
                        }
                    })
            )
        }
    }
}

struct MediaLibrary_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibrary()
    }
}
