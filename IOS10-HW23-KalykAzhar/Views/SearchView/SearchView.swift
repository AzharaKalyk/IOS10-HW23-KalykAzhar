import SwiftUI

struct SearchView: View {
    
    @State var textSearch: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                TextFieldView(textSearch: $textSearch)
                VerticalScrollView()
            }
            .padding()
            .navigationTitle("Поиск")
        }
        .padding(.bottom, 50)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
