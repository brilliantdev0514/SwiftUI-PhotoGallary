//
//  PhotoGalleryApp.swift
//  PhotoGallery
//
//  Created by Philip Buonforte on 9/22/23.
//

import SwiftUI

@main
struct PhotoGalleryApp: App {
    
    @StateObject var model: DataModel = DataModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                MyMainView().environmentObject(model)
                    .task {
                        await model.loadPhotos()
                        await model.loadThumbnail()
                    }
            }
        }
    }
    
}
