#  ConcurrencyMacros

These are some macros I have made to make Swift Concurrency easier to work with.

## Usage

### `@AddSynchronous`
Automatically generate a synchronous version (with a completion handler) of an async function.

```swift
@AddSynchronous
func fetchData() async throws -> Data {
    // ...
}

// Synchronous usage:
fetchData { data, error in
    // Handle result
}
```
