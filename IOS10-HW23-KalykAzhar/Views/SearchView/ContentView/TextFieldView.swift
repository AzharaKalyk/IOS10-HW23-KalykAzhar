import SwiftUI

struct TextFieldView: View {
    
    @Binding var textSearch: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(Color(cgColor: .init(gray: 0.5, alpha: 1)))
                .frame(width: 20, height: 20)
                .padding(.leading, 10)
            
            TextField("Ваша медиатека", text: $textSearch)
                .font(.system(size: 18))
        }
        .frame(height: 40)
        .background(Color(cgColor: .init(gray: 0.85, alpha: 1)))
        .cornerRadius(10)
    }
}
