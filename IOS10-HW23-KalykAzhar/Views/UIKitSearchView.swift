import SwiftUI
import UIKit

struct UIKitSearchView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchViewController())
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
