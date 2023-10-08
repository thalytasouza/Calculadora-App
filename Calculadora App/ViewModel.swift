import Foundation

final class ViewModel: ObservableObject {
    
    @Published var resultValue: String = "0"
    var savedValue: String = "0"
    var operationExec: OperationType?
    var runOperation: Bool = false
    
    func logic(key: KButton) {
        switch key.type {
            case .string(let value):
                if resultValue != "0" {
                    resultValue = resultValue + "\(value)"
                }
            case .number(let value):
                if runOperation {
                    resultValue = "\(value)"
                    runOperation = false
                } else if resultValue == "0" || resultValue == "\(savedValue)" {
                    resultValue = "\(value)"
                } else {
                    resultValue.append("\(value)")
                }
            case .operation(let type):
                switch type {
                case .percent:
                    switch operationExec {
                        case .sum:
                            resultValue = "\(Float(savedValue)! + (Float(savedValue)! * Float(resultValue)! / 100))"
                        case .mul:
                            resultValue = "\(Float(savedValue)! * (Float(savedValue)! * Float(resultValue)! / 100))"
                        case .res:
                            resultValue = "\(Float(savedValue)! - (Float(savedValue)! * Float(resultValue)! / 100))"
                        case .div:
                            resultValue = "\(Float(savedValue)! / (Float(savedValue)! * Float(resultValue)! / 100))"
                        default: print("")
                    }
                default:
                    savedValue = resultValue
                    operationExec = type
                    runOperation = true
            }

            case .result:
                guard let operation = operationExec else {
                    return
                }
                switch operation {
                    case .sum:
                        resultValue = "\(Int(savedValue)! + Int(resultValue)!)"
                    case .mul:
                        resultValue = "\(Int(savedValue)! * Int(resultValue)!)"
                    case .res:
                        resultValue = "\(Int(savedValue)! - Int(resultValue)!)"
                    case .div:
                        resultValue = "\(Int(savedValue)! / Int(resultValue)!)"
                    default: print("")
                }
            case .reset:
                resultValue = "0"
                savedValue = "0"
                operationExec = nil
                runOperation = false
        }
    }
}
