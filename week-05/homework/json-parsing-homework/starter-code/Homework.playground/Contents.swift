//: Playground - noun: a place where people can play

import XCTest

// In this homework we'll modify some JSON. By the end of this homework, you should be able to add and remove fields programmatically from this JSON.

// Here's the JSON, we can load this up from a file or URL, but here we're just going to specify it as a string.

let jsonText = "{\"domain\": \"i.imgur.com\",\"banned_by\": null,\"media_embed\": {},\"subreddit\": \"gifs\",\"selftext_html\": null,\"selftext\": \"\",\"likes\": null,\"suggested_sort\": null,\"user_reports\": [],\"secure_media\": null,\"link_flair_text\": null,\"id\": \"4z31gt\",\"from_kind\": null,\"gilded\": 0,\"archived\": false,\"clicked\": false,}"

guard let jsonData = (jsonText as NSString).data(using: String.Encoding.utf8.rawValue) else { preconditionFailure() }
guard let optionalJson = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any], let readonlyJson = optionalJson else { preconditionFailure() }
var json = readonlyJson

// TODO: Insert a field of text into json called "subtitle". Set it equal to "funny pic!"

// TODO: Insert an integer field into json called "count". Set it equal to 5

// Bonus TODO: Add a field of objects into json called "children". Each child object in children should have a "title" set to "child title". There should be one child.

// Uncomment the below tests to verify your work.
class MyTests : XCTestCase {
    func tests() {
        if let subtitle = json["subtitle"] as? String {
            XCTAssertEqual(subtitle, "funny pic!")
        } else {
            XCTFail()
        }
        if let count = json["count"] as? Int {
            XCTAssertEqual(count, 5)
        } else {
            XCTFail()
        }
        
//         Bonus:
        if let titles = (json["children"] as? [[String: AnyObject]])?.flatMap({ return $0["title"] }) {
            XCTAssertEqual(titles.count, 1)
            XCTAssertEqual(titles.first as? String, "child title")
        } else {
            XCTFail()
        }
    }
}

struct TestRunner {
    func runTests(testClass:AnyClass) {
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite()
        testSuite.run()
        let run = testSuite.testRun as! XCTestSuiteRun
        
        print("\(run.totalFailureCount) failures")
    }
}

TestRunner().runTests(testClass: MyTests.self)
