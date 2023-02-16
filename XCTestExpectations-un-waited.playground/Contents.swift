import XCTest

class TestCase: XCTestCase {
    
    func testWithUnwaitedExpetationsThatWillPass() {
        let description = """
            XCTest doesn't force you to wait for expectations created by
            XCTestExpectation(description:). This test will pass despite the
            expectation never being waited!
        
            To wait this expectaion, you must explicitly call
            wait(for expectations: [XCTestExpectation], timeout seconds: TimeInterval).
            The convenience method, waitForExpectaions(timeout:) doesn't wait these!
        """
        let expectation = XCTestExpectation(description: description)
        
        // This test passes anyway, but the below lines are what SHOULD
        // happen to make this case correct.
        // expectation.fulfill()
        // wait(for: [expectation], timeout: 0.1)
    }
    
    func testWithUnwaitedExpetationsThatWillFail() {
        let description = """
            XCTest forces you to wait for expectations created with
             expectation(description:), so this test will fail!
        """
        let expectation = expectation(description: description)
        
        // Uncommenting this will make the test pass.
        // expectation.fulfill()
        // waitForExpectations(timeout: 0.1)
    }
    
}

TestCase.defaultTestSuite.run()
