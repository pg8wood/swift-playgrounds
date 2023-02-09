// Apparently this is the best way to check the
// Swift version running in a playground
#if swift(>=5.7)
print("Hello, Swift 5.7")
#elseif swift(>=5.6)
print("Hello, Swift 5.6")
#elseif swift(>=5.5)
print("Hello, Swift 5.5")
#elseif swift(>=4.0)
print("Hello, Swift 4.0")
#elseif swift(>=3.0)
print("Hello, Swift 3.x")
#else
print("Hello, Swift 2.2")
#endif
