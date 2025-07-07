import ConcurrencyMacros
import Foundation

@AddSynchronous
func asyncFunction(test: String) async throws -> String {
    try await Task.sleep(nanoseconds: 3_000_000_000)
    return test
}

// Avoid quitting before async finishes
let semaphore = DispatchSemaphore(value: 0)

asyncFunction(test: "Hello World!") { value, error in
    if let value {
        print("Value: \(value)")
    }
    if let error {
        print("Error: \(error)")
    }
    semaphore.signal()
}

semaphore.wait()
