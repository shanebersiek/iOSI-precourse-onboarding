//: Playground - noun: a place where people can play

import UIKit

class Commit {
    var identifier: String
    var createdDate: NSDate
    var author: User
    var description: String
    var files: [File]
}

class Branch {
    var name: String
    var author: User
    var createdDate: NSDate
    var commits: [Commit]
    func addCommit(commit: Commit)
    init(parentBranch: Branch?, name: String)
}

class Tag {
    var commit: Commit
    var name: String
}

class User {
    var username: String
    var email: String
}

class File {
    var relativeUrl: String
}