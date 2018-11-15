//
//  PreClassDemoTests.swift
//  PreClassDemoTests
//
//  Created by JJ Guo on 11/14/18.
//  Copyright © 2018 JJ Guo. All rights reserved.
//

import XCTest
@testable import PreClassDemo

class PreClassDemoTests: XCTestCase {

    func testLetterGradeCheck() {
        let vc = ViewController()
        var grade = vc.letterGradeCheck(grade: 90)
        XCTAssertEqual(grade, "A")
        grade = vc.letterGradeCheck(grade: 80)
        XCTAssertEqual(grade, "B")
    }

}
