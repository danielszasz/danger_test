import Danger
import DangerXcov
let danger = Danger()

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")

xcov.report(
    scheme: "TheTest",
    workspace: "TheTest/TheTest.xcodeproj",
    exclude_targets: "Demo.app",
    minimum_coverage_percentage: 90
)

xcov.output_report(report)
