//
//  ContentView.swift
//  SentimentAnalyst
//
//  Created by ALVES CARVALHO Bruno on 10/01/2024.
//

import SwiftUI

enum Sentiment: String {
    case positive = "POSITIVE"
    case negative = "NEGATIVE"
    case mixed = "MIXED"
    case neutral = "NEUTRAL"
    
    func getEmoji(self: Sentiment) -> String {
        switch self {
        case .positive:
            return "😀"
        case .negative:
            return "😠"
        case .mixed:
            return "🤔"
        case .neutral:
            return "😐"
        }
    }
}

struct ContentView: View {
    
    @State var modelInput : String = "ouaiiii"
    @State var outputSentiment : Sentiment = .mixed
    
    var body: some View {
        NavigationStack{
            VStack {
                VStack(alignment: .leading, spacing: 18) {
                    Text("Entrez un texte et l'IA devinera le sentiment (normalement)")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .fontDesign(.monospaced)
                        .foregroundStyle(.yellow)
                    TextField("Enter text", text: $modelInput)
                                        .padding()
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        
                    }, label: {
                        Text("Ajouter")
                    })
                    
                }
                .background(Color.purple)
                VStack (alignment: .leading, spacing: 18){
                    Text($outputSentiment).background(Color.cyan)
                }
                
            }
            .padding()
        }
        .navigationBarTitle("Sentiment Analysis")
    }
    
}

#Preview{
    ContentView(modelInput: "LEZGO CHELSEA", outputSentiment: .positive)
}
