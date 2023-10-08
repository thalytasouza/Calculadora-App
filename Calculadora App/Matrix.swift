import Foundation
import SwiftUI

struct Matrix {
    
    static let kbSection: [KButton] = [
        .init(title: "AC", txtColor: .black, bkgColor: turquoise, type: .reset),
        .init(title: "+/-", txtColor: .black, bkgColor: turquoise, type: .reset),
        .init(title: "%", txtColor: .black, bkgColor: turquoise, type: .reset),
        .init(title: "/", txtColor: .black, bkgColor: pink, type: .operation(.div)),
        .init(title: "7", txtColor: .white, bkgColor: lightGray, type: .number(7)),
        .init(title: "8", txtColor: .white, bkgColor: lightGray, type: .number(8)),
        .init(title: "9", txtColor: .white, bkgColor: lightGray, type: .number(9)),
        .init(title: "x", txtColor: .black, bkgColor: pink, type: .operation(.mul)),
        .init(title: "4", txtColor: .white, bkgColor: lightGray, type: .number(4)),
        .init(title: "5", txtColor: .white, bkgColor: lightGray, type: .number(5)),
        .init(title: "6", txtColor: .white, bkgColor: lightGray, type: .number(6)),
        .init(title: "-", txtColor: .black, bkgColor: pink, type: .operation(.res)),
        .init(title: "1", txtColor: .white, bkgColor: lightGray, type: .number(1)),
        .init(title: "2", txtColor: .white, bkgColor: lightGray, type: .number(2)),
        .init(title: "3", txtColor: .white, bkgColor: lightGray, type: .number(3)),
        .init(title: "+", txtColor: .black, bkgColor: pink, type: .operation(.sum)),
        .init(title: "0", txtColor: .white, bkgColor: lightGray, type: .number(0)),
        .init(title: "00", txtColor: .white, bkgColor: lightGray, type: .string("00")),
        .init(title: ".", txtColor: .white, bkgColor: lightGray, type: .reset),
        .init(title: "=", txtColor: .black, bkgColor: turquoise, type: .result)
    ]

    static let gridSection: (CGFloat) -> [GridItem] = { width in
        return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4)
    }
}
