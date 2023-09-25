//
//  resizeButton.swift
//  miniTagCam
//
//  Created by Philip Buonforte on 9/6/23.
//

import SwiftUI

struct resizeButton: View {

    @EnvironmentObject var model: DataModel
    
    var body: some View {
        
        HStack{
            Spacer()
            VStack {
                Spacer()
                Button{
                    if model.columnsPB == 8 {
                        model.columnsPB = 1
                    } else {
                        model.columnsPB = model.columnsPB + 1
                    }
                } label: {
                    Text(String(model.columnsPB))
                }
                .frame(width: 50, height: 50)
                .foregroundColor(Color.white)
                .font(
                    .system(size: 25)
                    .weight(.bold)
                    )
                .background(Color.red)
                .clipShape(Circle())
            }
        }
        .padding([.trailing, .bottom], 25)
        
    }
        
}


struct resizeButton_Previews: PreviewProvider {
    static var previews: some View {
        resizeButton().environmentObject(DataModel())
    }
}

