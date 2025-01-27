//
//  URLExtensionsTests.swift
//  Tests
//
//  CotEditor
//  https://coteditor.com
//
//  Created by 1024jp on 2016-06-10.
//
//  ---------------------------------------------------------------------------
//
//  © 2016-2023 1024jp
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  https://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import XCTest
@testable import CotEditor

final class URLExtensionsTests: XCTestCase {
    
    func testRelativeURLCreation() {
        
        let url = URL(filePath: "/foo/bar/file.txt")
        let baseURL = URL(filePath: "/foo/buz/file.txt")
        
        XCTAssertEqual(url.path(relativeTo: baseURL), "../bar/file.txt")
        XCTAssertNil(url.path(relativeTo: nil))
    }
    
    
    func testRelativeURLCreation2() {
        
        let url = URL(filePath: "/file1.txt")
        let baseURL = URL(filePath: "/file2.txt")
        
        XCTAssertEqual(url.path(relativeTo: baseURL), "file1.txt")
    }
    
    
    func testRelativeURLCreationWithSameURLs() {
        
        let url = URL(filePath: "/file1.txt")
        let baseURL = URL(filePath: "/file1.txt")
        
        XCTAssertEqual(url.path(relativeTo: baseURL), "file1.txt")
    }
}
