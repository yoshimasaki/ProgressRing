# ProgressRing

ProgressRing made with SwiftUI

### How it looks

![ProgressRing](Images/ProgressRing.png)

## Getting Started

Add this packages in Xcode.
File -> Swift Packages -> Add Package Dependency…

## How to use

```
struct ContentView: View {
    
    @ObservedObject var ringModel: ProgressRing.ViewModel = {
        let m = ProgressRing.ViewModel()
        m.progress = 0.8
        m.ringWidth = 30.0
        return m
    }()
    
    var body: some View {
        ProgressRing(viewModel: ringModel)
    }
}
```

### Prerequisites

Xcode 11 or later


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
