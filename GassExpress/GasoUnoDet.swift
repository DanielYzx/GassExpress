//
//  GasoUnoDet.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/18/23.
//

import SwiftUI

struct GasoUnoDet: View {
    var Gasolineras : Gasolinera
    
    var body: some View {
        VStack{
            Image(Gasolineras.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(Gasolineras.name)
                    .bold()
                    .font(.system(size: 20))
                Text(Gasolineras.address)
                    .font(.system(size: 14))
                Spacer()
                
            }

        }
    }
}

struct GasoUnoDet_Previews: PreviewProvider {
    static var previews: some View {
        GasoUnoDet(Gasolineras:Gasolinera(name: "UNO.Los Héroes", address: "Boulevard Los Heroes y Calle Los Sismiles ", imageName: "gasuno"))
    }
}
