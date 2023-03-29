// swift-tools-version:5.7
import PackageDescription

let package = Package(
	name: "AA2SDKWrapper",
	products: [
		.library(
			name: "AA2SDKWrapper",
			targets: ["AusweisApp2Dependency", "AusweisApp2SDKWrapper"]
		)
	],
	dependencies: [
		.package(
			url: "https://github.com/Governikus/AusweisApp2-SDK-iOS",
			from: "1.26.3"
		)
	],
	targets: [
		.target(
			name: "AusweisApp2Dependency", // Dummy target, so we can depend on the AusweisApp2, as binaryTarget can't.
			dependencies: [
                .product(name: "AusweisApp2",
                         package: "AusweisApp2-SDK-iOS")
            ]
		),
		.binaryTarget(
			name: "AusweisApp2SDKWrapper",
			path: "AusweisApp2SDKWrapper.xcframework"
		)
	]
)
