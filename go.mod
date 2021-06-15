module github.com/GoogleCloudPlatform/esp-v2

go 1.15

require (
	cloud.google.com/go/storage v1.10.0
	github.com/cenkalti/backoff v2.2.1+incompatible
	github.com/census-instrumentation/opencensus-proto v0.2.1
	github.com/envoyproxy/go-control-plane v0.9.9-0.20210511190911-87d352569d55
	github.com/envoyproxy/protoc-gen-validate v0.1.0
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/protobuf v1.5.2
	github.com/google/go-cmp v0.5.5
	github.com/gorilla/mux v1.6.3-0.20181030152528-3d80bc801bb0
	github.com/gorilla/websocket v1.4.2
	github.com/miekg/dns v1.1.29
	golang.org/x/lint v0.0.0-20210508222113-6edffad5e616 // indirect
	golang.org/x/net v0.0.0-20210503060351-7fd8e65b6420
	golang.org/x/oauth2 v0.0.0-20210427180440-81ed05c6b58c
	golang.org/x/tools v0.1.2 // indirect
	google.golang.org/api v0.46.0
	google.golang.org/genproto v0.0.0-20210518161634-ec7691c0a37d
	google.golang.org/grpc v1.37.1
	google.golang.org/protobuf v1.26.0
)

replace github.com/envoyproxy/go-control-plane v0.9.9-0.20210511190911-87d352569d55 => github.com/alichnewsky/go-control-plane v0.9.9-0.20210615100018-eb46ffabfaf9
