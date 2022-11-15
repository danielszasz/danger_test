import Danger
import Foundation
import DangerSwiftCoverage

let danger = Danger()
let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles

if editedFiles.count - danger.git.deletedFiles.count > 300 {
  warn("Big PR, try to keep changes smaller if you can")
}

// Encourage writing up some reasoning about the PR, rather than just leaving a title.
let body = danger.github.pullRequest.body?.count ?? 0
let linesOfCode = danger.github.pullRequest.additions ?? 0
if body < 3 && linesOfCode > 10 {
    warn("Please provide a summary in the Pull Request description")
}

// Support running via `danger local`
if danger.github != nil {
    // These checks only happen on a PR
    if danger.github.pullRequest.title.contains("WIP") {
        warn("PR is classed as Work in Progress")
    }
}


Coverage.xcodeBuildCoverage(.xcresultBundle("Test-Test-2022.11.15_09-43-41-+0200.xcresult"),
                            minimumCoverage: 100)
//
//Coverage.xcodeBuildCoverage(.derivedDataFolder("Build"),
//                            minimumCoverage: 50,
//                            excludedTargets: ["DangerSwiftCoverageTests.xctest"])



