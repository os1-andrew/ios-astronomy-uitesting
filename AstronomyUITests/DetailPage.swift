//
//  DetailTest.swift
//  AstronomyUITests
//
//  Created by Andrew Dhan on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import XCTest

struct DetailPage: TestPage {
    var testCase: XCTestCase
    
    var title: String {
        return app.title
    }
    
  
}
