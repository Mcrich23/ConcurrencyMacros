import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

@main
struct ConcurrencyMacrosPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        AddSynchronous.self,
    ]
}

enum MacroExpansionError: Error {
    case unsupportedDeclaration
    case codingKeysAlreadyExist
    
    var localizedDescription: String {
        switch self {
        case .unsupportedDeclaration:
            return "Unsupported declaration for macro expansion."
        case .codingKeysAlreadyExist:
            return "Coding keys already exist."
        }
    }
}

extension String: @retroactive Error {
}
