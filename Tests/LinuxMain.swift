import XCTest

import randomizerTests

var tests = [XCTestCaseEntry]()
tests += randomizerTests.allTests()
XCTMain(tests)
