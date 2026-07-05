# proto-gen-swift

Generated Swift bindings for the
[altessa-s/proto](https://github.com/altessa-s/proto) schema.

This repository is auto-generated. Do not edit its files by hand — they are
regenerated from [`altessa-s/proto`](https://github.com/altessa-s/proto) and
pushed automatically on every push to `main` / `develop` and every `vX.Y.Z`
tag. The only hand-maintained file is this `README.md`.

> **Note:** message types only (via
> [`apple/swift-protobuf`](https://github.com/apple/swift-protobuf)).
> gRPC service stubs are intentionally omitted until the
> [`grpc-swift-2`](https://github.com/grpc/grpc-swift-2) ecosystem
> stabilizes. Use these types with your own transport for now.

## Installation

Swift Package Manager:

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

## Packages

Everything ships in a single `Proto` module. Generated symbols are prefixed with
the proto package, e.g. `Io_Altessa_Serviceinfo_V1_ServiceInfo`.

| Proto package | Swift symbol prefix | Description |
|---|---|---|
| `io.altessa.badrequest.v1` | `Io_Altessa_Badrequest_V1_` | `BadRequest` / `FieldViolation` error-detail payload for a `google.rpc.Status` with `INVALID_ARGUMENT`. |
| `io.altessa.serviceinfo.v1` | `Io_Altessa_Serviceinfo_V1_` | `ServiceInfo` runtime metadata plus the `ServiceInfoService.GetServiceInfo` introspection RPC. |
| `io.altessa.type.v1` | `Io_Altessa_Type_V1_` | General-purpose, domain-neutral value types (`Contact`, `DatePeriod`, `FileRef`, …) reused across services. |

## Usage

```swift
import Proto

var info = Io_Altessa_Serviceinfo_V1_ServiceInfo()
info.serviceName = "billing-api"
info.fullVersion = "1.4.2+build.873"
```

The `serviceinfo.v1` package ships the `GetServiceInfoRequest` /
`GetServiceInfoResponse` message types; the `ServiceInfoService` gRPC stubs are
not generated (message types only — see the note above).

## Versioning

Versions track [`altessa-s/proto`](https://github.com/altessa-s/proto): a
`vX.Y.Z` tag on the schema repo produces the same release here, and the
`main` / `develop` branches follow the matching schema branches.

## Contributing

This repository contains generated output only. To change what appears here,
edit the schemas or generation config in
[`altessa-s/proto`](https://github.com/altessa-s/proto); the next sync
regenerates and republishes these bindings.

## License

MIT — see [LICENSE](LICENSE).
