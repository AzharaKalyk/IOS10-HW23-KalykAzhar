import SwiftUI

struct CategoryView: View {
    
    @Binding var model: ModelDetailView
    
    var body: some View {
        Image(model.image.randomElement() ?? "")
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width / 2.15,
                   height: UIScreen.main.bounds.width / 2.15)
            .cornerRadius(11)
    }
}
