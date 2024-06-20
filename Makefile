# Define variables
PROTOC := protoc
PROTO_DIR := proto
PROTO_FILES := $(PROTO_DIR)/auth/sso.proto
GO_OUT_DIR := ./gen/go

# Define the target to generate Go files from proto files
generate:
	$(PROTOC) -I $(PROTO_DIR) $(PROTO_FILES) --go_out=$(GO_OUT_DIR) --go_opt=paths=source_relative --go-grpc_out=$(GO_OUT_DIR) --go-grpc_opt=paths=source_relative

# Phony targets are not files
.PHONY: generate
