//
//  circleImage.swift
//  getstartedSwiftUI
//
//  Created by DAM+DM-2019 on 28/11/2019.
//  Copyright © 2019 DAM+DM-2019. All rights reserved.
//

import SwiftUI

struct circleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct circleImage_Previews: PreviewProvider {
    static var previews: some View {
        circleImage()
    }
}
