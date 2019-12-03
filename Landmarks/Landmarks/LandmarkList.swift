//
//  LandmarkList.swift
//  Landmarks
//
//  Created by DAM+DM-2019 on 03/12/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /*List (landmarkData, id: \.id) { landmark in // Esto crea una linea por cada elemento en el array de landmarkData
            LandmarkRow(landmark: landmark)
        }*/
        // Al poner en Landmark.swift el protocolo "Identifiable", podemos simplificar el código a esto, ya que identifica el id como una propiedad:
        NavigationView { // Incluimos dinámicamente la lista generado en el navigationview
        List(landmarkData) { landmark in
            NavigationLink(destination: LandmarkDetail(landmark: landmark)) { // Con esto configuramos la navegación entre LandmarkList -> LandmarkDetail
                            LandmarkRow(landmark: landmark)
                        }
                    }
                    .navigationBarTitle(Text("Landmarks"))
                }
            }
        }

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        //LandmarkList()
        // Vamos a cambiar la preview, para que la app renderice en los dispositivos que queramos:
            //.previewDevice(PreviewDevice(rawValue: "iphone SE"))
        // Esto se puede mejorar con un ForEach
        ForEach(["iphone SE", "iphone XS Max"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
            
        }
    }
}
