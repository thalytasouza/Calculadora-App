import Foundation
import SwiftUI

struct KButton: Hashable {
    let title: String
    let txtColor: Color
    let bkgColor: Color
    let type: ButtonType
}

enum ButtonType: Hashable {
    case number(Int)
    case string(String)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType: Hashable {
    case sum
    case res
    case mul
    case div
    case percent
}
