//
//  Double.swift
//  Crypto Currency app
//
//  Created by Lokesh on 07/11/25.
//

import Foundation

extension Double{
    private var currencyFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        formatter.currencySymbol = "$"
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    private var numberFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }
    func toCurrency() -> String{
        return currencyFormatter.string(for: self) ?? "0.00"
    }
    func toPercentString() -> String{
        guard let numberAsString = numberFormatter.string(for: self) else {return ""}
        return numberAsString + "%"
    }
    
}
