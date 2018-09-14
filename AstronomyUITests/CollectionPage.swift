//
//  CollectionTest.swift
//  AstronomyUITests
//
//  Created by Andrew Dhan on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import XCTest

struct CollectionPage: TestPage{
    var testCase: XCTestCase
    //MARK: - Verify
    @discardableResult func verifyTapNextSol(file: String = #file, line: UInt = #line) -> CollectionPage {
        let previousSolNumber = self.solNumber
        self.tapNextSol()
        sleep(50)
        print(self.solNumber,previousSolNumber)
        testCase.expect(true: self.solNumber > previousSolNumber, file: file, line: line)
        return self
    }
    @discardableResult func verifyTapPreviousSol(file: String = #file, line: UInt = #line) -> CollectionPage {
        let previousSolNumber = self.solNumber
        self.tapPreviousSol()
        testCase.expect(true: self.solNumber < previousSolNumber, file: file, line: line)
        return self
    }
    
    //MARK: - Actions
    @discardableResult func tapPreviousSol(file: String = #file, line: UInt = #line) -> CollectionPage {
        testCase.expect(exists: previousSolButton, file: file, line: line)
        previousSolButton.tap()
        return self
    }
    @discardableResult func tapNextSol(file: String = #file, line: UInt = #line) -> CollectionPage {
        testCase.expect(exists: nextSolButton, file: file, line: line)
        nextSolButton.tap()
        return self
    }
    @discardableResult func tapCollectionCell(index: Int, file: String = #file, line: UInt = #line) -> CollectionPage {
        testCase.expect(exists: collectionCell(at: index), file: file, line: line)
        collectionCell(at: index).tap()
        return self
    }
    
    //MARK: - Properties
    func collectionCell(at index: Int) -> XCUIElement{
        return app.collectionViews.cells.element(boundBy:index)
    }
    
    var previousSolButton: XCUIElement{
        return app.buttons["PhotosCollectionViewController.PreviousSolButton"]
    }
    
    var nextSolButton: XCUIElement {
        return app.buttons["PhotosCollectionViewController.NextSolButton"]
    }
    
    var solNumber: Int {
        guard let solExtract = app.navigationBars.element(boundBy: 0).identifier.split(separator: " ", maxSplits: 2, omittingEmptySubsequences: true).last else {return 0}
        return Int(solExtract) ?? 0
    }
    
    
}

