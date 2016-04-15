//
//  SwiftBasicUITests.swift
//  SwiftBasicUITests
//
//  Created by guo on 16/4/7.
//  Copyright © 2016年 guo. All rights reserved.
//

import XCTest
@testable import SwiftBasicUI

class SwiftBasicUITests: XCTestCase {
    
    /*override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }*/
    
    // MARK: SwiftBasicUI Tests
    
    //Start any method that you want to run as a test with “test” in the title
    func testMealInitialization() {
        
        // Success case
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
        
        
    }
    
}
