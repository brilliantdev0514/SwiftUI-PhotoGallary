//
//  ContentView.swift
//  PhotoGallery
//
//  Created by Philip Buonforte on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: DataModel
    
    var body: some View {

        ZStack {
            PhotoCollectionView(photoCollection: model.photoCollection)
                .task {
                    await model.loadPhotos()
                    await model.loadThumbnail()
                }
                                    
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
