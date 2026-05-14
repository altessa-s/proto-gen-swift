# proto-gen-swift

Generated Swift message types for the shared protobuf schemas defined
in [`altessa-s/proto`](https://github.com/altessa-s/proto). Do not edit
files in this repository by hand — they are regenerated and pushed
automatically on every push to `main` / `develop` and every `vX.Y.Z` tag.

> **Note:** message types only (via
> [`apple/swift-protobuf`](https://github.com/apple/swift-protobuf)).
> gRPC service stubs are intentionally omitted until the
> [`grpc-swift-2`](https://github.com/grpc/grpc-swift-2) ecosystem
> stabilizes. Use these types with your own transport for now.

## Install (Swift Package Manager)

```swift
dependencies: [
    .package(url: "https://github.com/altessa-s/proto-gen-swift.git", from: "0.1.0"),
],
targets: [
    .target(name: "MyApp", dependencies: [
        .product(name: "Proto", package: "proto-gen-swift"),
    ]),
]
```

For develop snapshots, use `branch: "develop"` instead of `from:`.

## License

MIT — see [LICENSE](LICENSE).
