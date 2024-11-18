//
//  ConnectionAPIRest.swift
//  iDouble
//
//  Created by Nicolò Amabile on 18/11/24.
//
// chris.emanuelegiordano.com/flatManaging/v1/joinHome

import SwiftUI

struct ContentView: View {
    @State private var responseMessage = ""

    var body: some View {
        VStack {
            Text(responseMessage)
                .padding()
            
            Button("Invia Richiesta POST") {
                sendRequest()
            }
        }
        .padding()
    }
    
    func sendRequest() {
        // URL del server con i parametri come query string
        let urlString = "https://chris.emanuelegiordano.com/flatManaging/v1/joinHome?userID=123&homeID=456"
        guard let url = URL(string: urlString) else {
            print("URL non valido")
            return
        }
        
        // Crea la richiesta
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        // Invia la richiesta
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Errore nella richiesta: \(error)")
                DispatchQueue.main.async {
                    self.responseMessage = "Errore nella richiesta"
                }
                return
            }
            
            guard let data = data else {
                print("Nessun dato ricevuto")
                DispatchQueue.main.async {
                    self.responseMessage = "Nessun dato ricevuto"
                }
                return
            }
            
            // Gestisci la risposta
            if let responseString = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    self.responseMessage = "Risposta: \(responseString)"
                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
