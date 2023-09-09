//
//  CurrencyIcon.swift
//  LOTR Converter
//
//  Created by Andrei Kamarou on 9.09.23.
//

import SwiftUI

struct CurrencyIcon: View {
  @State var currencyImage: String
  @State var currencyText: String
  
    var body: some View {
      ZStack {
        Image(currencyImage)
          .resizable()
          .scaledToFit()
        
        VStack {
          Spacer()
          
          Text(currencyText)
            .padding(3)
            .font(.caption)
          .background(.brown)
        }
      }
      .padding(3)
      .frame(width: 100, height: 100)
      .background(.brown)
      .cornerRadius(25)
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Penny")
        .previewLayout(.sizeThatFits)
    }
}
