//
//  Horarios.swift
//  GassExpress
//
//  Created by Samuel Menendez on 10/28/23.
//

import SwiftUI

struct Gasolineras {
    var name: String
    var address: String
    var horario:String
    var imageName: String
   
}


struct Horarios: View {
    let estaciones: [Gasolineras] = [
        Gasolineras(name: "UNO.Los Héroes", address: "Boulevard Los Heroes y Calle Los Sismiles ",horario: "Lunes a Domingo 5:00 am a 10:00 pm", horario: "Lunes a Domingo 5:00 am a 10:00 pm", imageName: "gasuno"),
        Gasolineras(name: "UNO.San Benito", address: "Alameda Manuel Enrique Araujo 103, San Salvador", horario: "Lunes a Domingo 5:00 am a 10:00 pm", imageName: "gasuno"),
        Gasolineras(name: "UNO.Los Próceres", address: "Blvr. Los Proceres, San Salvador",horario: "Lunes a Domingo 5:00 am a 10:00 pm", imageName: "gasuno"),
        Gasolineras(name: "UNO.San Jacinto", address: "Calle San Jacinto, Av. Los Diplomáticos 211, San Salvador",horario: "Lunes a Domingo 5:00 am a 10:00 pm", imageName: "gasuno"),
        Gasolineras(name: "UNO.Modelo", address: "Frente a la Col. Modelo, KM 53 Carretera Planes de Renderos",horario: "Lunes a Domingo 5:00 am a 10:00 pm", imageName: "gasuno")
        // Agrega más estaciones aquí si es necesario
    ]

    var body: some View {
        
            List(estaciones, id: \.name) { estacion in
                NavigationLink(destination: GasoUnoDet()) {
                    GasoUnodetRow(imageName: estacion.imageName, stationName: estacion.name, stationAddress: estacion.address
                        )
                }
                .navigationTitle("Horarios")
            }
        }
    
}


struct GassoUnodetRow: View {
    var imageName: String
    var stationName: String
    var stationAddress: String

    var body: some View {
        HStack(spacing: 40) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text(stationName)
                    .bold()
                    .font(.system(size: 20))
                Text(stationAddress)
                    .font(.system(size: 14))
            }

            Spacer()
        }
        .padding(.vertical, 10)
    }
}





struct Horarios_Previews: PreviewProvider {
    static var previews: some View {
        Horarios()
    }
}
