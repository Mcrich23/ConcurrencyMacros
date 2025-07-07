// The Swift Programming Language
// https://docs.swift.org/swift-book


/// Make any async/await function also available for a synchronous context with just one line!
@attached(peer, names: overloaded)
public macro AddSynchronous() = #externalMacro(module: "ConcurrencyMacrosMacros", type: "AddSynchronous")
