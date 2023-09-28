import Combine
import Foundation

class TimePrinter {
    let publisher: AnyPublisher<Date, Never>
    
    init(publisher: AnyPublisher<Date, Never>) {
        self.publisher = publisher
    }
    
    private var cancellables: Set<AnyCancellable> = []
    private var count = 0
    
    func observeElapsedTime() {
        publisher.sink { date in
            self.count += 1
            print("\(self.count) Date: \(date)")
        }.store(in: &cancellables)
    }
}

// Print every 1s
//let timerPublisher: Timer.TimerPublisher = Timer.publish(every: 1, on: .main, in: .default)
//var erasedPublisher: AnyPublisher<Date, Never> = timerPublisher.eraseToAnyPublisher()
//let cancellable = timerPublisher.connect()
//TimePrinter(publisher: erasedPublisher).observeElapsedTime()

// Manually publish now and 10s in the future
let manualPublisher: CurrentValueSubject<Date, Never> = CurrentValueSubject(Date())
TimePrinter(publisher: manualPublisher.eraseToAnyPublisher()).observeElapsedTime()
manualPublisher.value = Date()
manualPublisher.value = Date().addingTimeInterval(10)
