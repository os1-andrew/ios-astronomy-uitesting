//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Andrew Dhan on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        
        let app = XCUIApplication()
        app.launchArguments = ["UITesting"]
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNextSol(){
        CollectionPage(testCase: self)
        .tapNextSol()
        .verifyTapNextSol()
    }
    
}
