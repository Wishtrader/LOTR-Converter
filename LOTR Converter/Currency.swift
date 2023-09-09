//
//  Currency.swift
//  LOTR Converter
//
//  Created by Andrei Kamarou on 9.09.23.
//

enum Currency: Double, CaseIterable {
  case copperPenny = 640
  case selverPenny = 64
  case silverPiece = 16
  case goldPenny = 4
  case goldPiece = 1
  
  func convert(amountString: String, to currency: Currency) -> String {
    guard let startAmount = Double(amountString) else {
      return ""
    }
    
    let convertedAmount = (startAmount / self.rawValue) * currency.rawValue
    
    if convertedAmount > 0 {
      return String(format: "%.2f", convertedAmount)
    } else {
      return ""
    }
  }
}

enum CurrencyText: String, CaseIterable {
case copperPenny = "Copper Penny"
case selverPenny = "Silver Penny"
case silverPiece = "Silver Piece"
case goldPenny = "Gold Penny"
case goldPiece = "Gold Piece"
}

enum CurrencyImage: String, CaseIterable {
case copperPenny = "copperpenny"
case selverPenny = "silverpenny"
case silverPiece = "silverpiece"
case goldPenny = "goldpenny"
case goldPiece = "goldpiece"
}
