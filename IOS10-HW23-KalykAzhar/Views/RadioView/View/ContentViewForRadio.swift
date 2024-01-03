import SwiftUI

struct ContentViewForRadio: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                RadioView()
                RadioSection()
            }
            .padding()
            .navigationTitle("Радио")
        }
        .padding(.bottom, 50)
    }
}

struct ContentViewForRadio_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewForRadio()
    }
}
