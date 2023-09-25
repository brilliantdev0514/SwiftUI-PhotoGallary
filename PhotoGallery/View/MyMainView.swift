//
//  MyMainView.swift
//  PhotoGallery
//
//  Created by Philip Buonforte on 9/22/23.
//

import SwiftUI

struct MyMainView: View {
    
    @EnvironmentObject var model: DataModel
    
    var body: some View {
                
        ZStack {
            
            VStack {
                
                Text("TagCam")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .bold()
                
                TabView {
                    
                    VStack {
                        if model.isPhotosLoaded {
                            PhotoCollectionView(photoCollection: model.photoCollection)
                        } else {
                            Text("All Photos")
                        }
                    }
                    .tabItem {
                        Label("All", systemImage: "list.dash")
                    }
                    
                    Text("Kai")
                        .tabItem {
                            Label("Kai", systemImage: "list.dash")
                        }
                    
                    Text("afadf")
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }
                    
                    
                }
            }
                                    
            resizeButton()
            
        }
        
    }
}
        
   
            
             
        
    


//struct MyMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyMainView()
//    }
//}
