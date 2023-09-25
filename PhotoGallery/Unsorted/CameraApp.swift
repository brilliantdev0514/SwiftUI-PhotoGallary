/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

@main
struct CameraApp: App {
    
    @StateObject private var model = DataModel()
    
    init() {
        UINavigationBar.applyCustomAppearance()
    }
    
    var body: some Scene {
        WindowGroup {
            PhotoCollectionView(photoCollection: model.photoCollection)
                .task {
                    await model.loadPhotos()
                    await model.loadThumbnail()
                }
        }
    }
}

fileprivate extension UINavigationBar {
    
    static func applyCustomAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
