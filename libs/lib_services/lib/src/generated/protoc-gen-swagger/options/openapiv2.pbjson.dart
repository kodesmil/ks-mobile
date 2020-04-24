///
//  Generated code. Do not modify.
//  source: protoc-gen-swagger/options/openapiv2.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const Swagger$json = const {
  '1': 'Swagger',
  '2': const [
    const {'1': 'swagger', '3': 1, '4': 1, '5': 9, '10': 'swagger'},
    const {
      '1': 'info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Info',
      '10': 'info'
    },
    const {'1': 'host', '3': 3, '4': 1, '5': 9, '10': 'host'},
    const {'1': 'base_path', '3': 4, '4': 1, '5': 9, '10': 'basePath'},
    const {
      '1': 'schemes',
      '3': 5,
      '4': 3,
      '5': 14,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Swagger.SwaggerScheme',
      '10': 'schemes'
    },
    const {'1': 'consumes', '3': 6, '4': 3, '5': 9, '10': 'consumes'},
    const {'1': 'produces', '3': 7, '4': 3, '5': 9, '10': 'produces'},
    const {
      '1': 'responses',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Swagger.ResponsesEntry',
      '10': 'responses'
    },
    const {
      '1': 'security_definitions',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityDefinitions',
      '10': 'securityDefinitions'
    },
    const {
      '1': 'security',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityRequirement',
      '10': 'security'
    },
    const {
      '1': 'external_docs',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.ExternalDocumentation',
      '10': 'externalDocs'
    },
    const {
      '1': 'extensions',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Swagger.ExtensionsEntry',
      '10': 'extensions'
    },
  ],
  '3': const [Swagger_ResponsesEntry$json, Swagger_ExtensionsEntry$json],
  '4': const [Swagger_SwaggerScheme$json],
  '9': const [
    const {'1': 8, '2': 9},
    const {'1': 9, '2': 10},
    const {'1': 13, '2': 14},
  ],
};

const Swagger_ResponsesEntry$json = const {
  '1': 'ResponsesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Response',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Swagger_ExtensionsEntry$json = const {
  '1': 'ExtensionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Swagger_SwaggerScheme$json = const {
  '1': 'SwaggerScheme',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'HTTP', '2': 1},
    const {'1': 'HTTPS', '2': 2},
    const {'1': 'WS', '2': 3},
    const {'1': 'WSS', '2': 4},
  ],
};

const Operation$json = const {
  '1': 'Operation',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'summary', '3': 2, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'external_docs',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.ExternalDocumentation',
      '10': 'externalDocs'
    },
    const {'1': 'operation_id', '3': 5, '4': 1, '5': 9, '10': 'operationId'},
    const {'1': 'consumes', '3': 6, '4': 3, '5': 9, '10': 'consumes'},
    const {'1': 'produces', '3': 7, '4': 3, '5': 9, '10': 'produces'},
    const {
      '1': 'responses',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Operation.ResponsesEntry',
      '10': 'responses'
    },
    const {'1': 'schemes', '3': 10, '4': 3, '5': 9, '10': 'schemes'},
    const {'1': 'deprecated', '3': 11, '4': 1, '5': 8, '10': 'deprecated'},
    const {
      '1': 'security',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityRequirement',
      '10': 'security'
    },
    const {
      '1': 'extensions',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Operation.ExtensionsEntry',
      '10': 'extensions'
    },
  ],
  '3': const [Operation_ResponsesEntry$json, Operation_ExtensionsEntry$json],
  '9': const [
    const {'1': 8, '2': 9},
  ],
};

const Operation_ResponsesEntry$json = const {
  '1': 'ResponsesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Response',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Operation_ExtensionsEntry$json = const {
  '1': 'ExtensionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'schema',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Schema',
      '10': 'schema'
    },
    const {
      '1': 'examples',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Response.ExamplesEntry',
      '10': 'examples'
    },
    const {
      '1': 'extensions',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Response.ExtensionsEntry',
      '10': 'extensions'
    },
  ],
  '3': const [Response_ExamplesEntry$json, Response_ExtensionsEntry$json],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

const Response_ExamplesEntry$json = const {
  '1': 'ExamplesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const Response_ExtensionsEntry$json = const {
  '1': 'ExtensionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Info$json = const {
  '1': 'Info',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'terms_of_service',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'termsOfService'
    },
    const {
      '1': 'contact',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Contact',
      '10': 'contact'
    },
    const {
      '1': 'license',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.License',
      '10': 'license'
    },
    const {'1': 'version', '3': 6, '4': 1, '5': 9, '10': 'version'},
    const {
      '1': 'extensions',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Info.ExtensionsEntry',
      '10': 'extensions'
    },
  ],
  '3': const [Info_ExtensionsEntry$json],
};

const Info_ExtensionsEntry$json = const {
  '1': 'ExtensionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Contact$json = const {
  '1': 'Contact',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

const License$json = const {
  '1': 'License',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

const ExternalDocumentation$json = const {
  '1': 'ExternalDocumentation',
  '2': const [
    const {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

const Schema$json = const {
  '1': 'Schema',
  '2': const [
    const {
      '1': 'json_schema',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.JSONSchema',
      '10': 'jsonSchema'
    },
    const {'1': 'discriminator', '3': 2, '4': 1, '5': 9, '10': 'discriminator'},
    const {'1': 'read_only', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    const {
      '1': 'external_docs',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.ExternalDocumentation',
      '10': 'externalDocs'
    },
    const {
      '1': 'example',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Any',
      '10': 'example'
    },
  ],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

const JSONSchema$json = const {
  '1': 'JSONSchema',
  '2': const [
    const {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    const {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'default', '3': 7, '4': 1, '5': 9, '10': 'default'},
    const {'1': 'read_only', '3': 8, '4': 1, '5': 8, '10': 'readOnly'},
    const {'1': 'multiple_of', '3': 10, '4': 1, '5': 1, '10': 'multipleOf'},
    const {'1': 'maximum', '3': 11, '4': 1, '5': 1, '10': 'maximum'},
    const {
      '1': 'exclusive_maximum',
      '3': 12,
      '4': 1,
      '5': 8,
      '10': 'exclusiveMaximum'
    },
    const {'1': 'minimum', '3': 13, '4': 1, '5': 1, '10': 'minimum'},
    const {
      '1': 'exclusive_minimum',
      '3': 14,
      '4': 1,
      '5': 8,
      '10': 'exclusiveMinimum'
    },
    const {'1': 'max_length', '3': 15, '4': 1, '5': 4, '10': 'maxLength'},
    const {'1': 'min_length', '3': 16, '4': 1, '5': 4, '10': 'minLength'},
    const {'1': 'pattern', '3': 17, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'max_items', '3': 20, '4': 1, '5': 4, '10': 'maxItems'},
    const {'1': 'min_items', '3': 21, '4': 1, '5': 4, '10': 'minItems'},
    const {'1': 'unique_items', '3': 22, '4': 1, '5': 8, '10': 'uniqueItems'},
    const {
      '1': 'max_properties',
      '3': 24,
      '4': 1,
      '5': 4,
      '10': 'maxProperties'
    },
    const {
      '1': 'min_properties',
      '3': 25,
      '4': 1,
      '5': 4,
      '10': 'minProperties'
    },
    const {'1': 'required', '3': 26, '4': 3, '5': 9, '10': 'required'},
    const {'1': 'array', '3': 34, '4': 3, '5': 9, '10': 'array'},
    const {
      '1': 'type',
      '3': 35,
      '4': 3,
      '5': 14,
      '6':
          '.grpc.gateway.protoc_gen_swagger.options.JSONSchema.JSONSchemaSimpleTypes',
      '10': 'type'
    },
  ],
  '4': const [JSONSchema_JSONSchemaSimpleTypes$json],
  '9': const [
    const {'1': 1, '2': 2},
    const {'1': 2, '2': 3},
    const {'1': 4, '2': 5},
    const {'1': 9, '2': 10},
    const {'1': 18, '2': 19},
    const {'1': 19, '2': 20},
    const {'1': 23, '2': 24},
    const {'1': 27, '2': 28},
    const {'1': 28, '2': 29},
    const {'1': 29, '2': 30},
    const {'1': 30, '2': 34},
    const {'1': 36, '2': 42},
    const {'1': 42, '2': 43},
    const {'1': 43, '2': 46},
  ],
};

const JSONSchema_JSONSchemaSimpleTypes$json = const {
  '1': 'JSONSchemaSimpleTypes',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ARRAY', '2': 1},
    const {'1': 'BOOLEAN', '2': 2},
    const {'1': 'INTEGER', '2': 3},
    const {'1': 'NULL', '2': 4},
    const {'1': 'NUMBER', '2': 5},
    const {'1': 'OBJECT', '2': 6},
    const {'1': 'STRING', '2': 7},
  ],
};

const Tag$json = const {
  '1': 'Tag',
  '2': const [
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {
      '1': 'external_docs',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.ExternalDocumentation',
      '10': 'externalDocs'
    },
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

const SecurityDefinitions$json = const {
  '1': 'SecurityDefinitions',
  '2': const [
    const {
      '1': 'security',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.grpc.gateway.protoc_gen_swagger.options.SecurityDefinitions.SecurityEntry',
      '10': 'security'
    },
  ],
  '3': const [SecurityDefinitions_SecurityEntry$json],
};

const SecurityDefinitions_SecurityEntry$json = const {
  '1': 'SecurityEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityScheme',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const SecurityScheme$json = const {
  '1': 'SecurityScheme',
  '2': const [
    const {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityScheme.Type',
      '10': 'type'
    },
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'in',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityScheme.In',
      '10': 'in'
    },
    const {
      '1': 'flow',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.grpc.gateway.protoc_gen_swagger.options.SecurityScheme.Flow',
      '10': 'flow'
    },
    const {
      '1': 'authorization_url',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'authorizationUrl'
    },
    const {'1': 'token_url', '3': 7, '4': 1, '5': 9, '10': 'tokenUrl'},
    const {
      '1': 'scopes',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Scopes',
      '10': 'scopes'
    },
    const {
      '1': 'extensions',
      '3': 9,
      '4': 3,
      '5': 11,
      '6':
          '.grpc.gateway.protoc_gen_swagger.options.SecurityScheme.ExtensionsEntry',
      '10': 'extensions'
    },
  ],
  '3': const [SecurityScheme_ExtensionsEntry$json],
  '4': const [
    SecurityScheme_Type$json,
    SecurityScheme_In$json,
    SecurityScheme_Flow$json
  ],
};

const SecurityScheme_ExtensionsEntry$json = const {
  '1': 'ExtensionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const SecurityScheme_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'TYPE_INVALID', '2': 0},
    const {'1': 'TYPE_BASIC', '2': 1},
    const {'1': 'TYPE_API_KEY', '2': 2},
    const {'1': 'TYPE_OAUTH2', '2': 3},
  ],
};

const SecurityScheme_In$json = const {
  '1': 'In',
  '2': const [
    const {'1': 'IN_INVALID', '2': 0},
    const {'1': 'IN_QUERY', '2': 1},
    const {'1': 'IN_HEADER', '2': 2},
  ],
};

const SecurityScheme_Flow$json = const {
  '1': 'Flow',
  '2': const [
    const {'1': 'FLOW_INVALID', '2': 0},
    const {'1': 'FLOW_IMPLICIT', '2': 1},
    const {'1': 'FLOW_PASSWORD', '2': 2},
    const {'1': 'FLOW_APPLICATION', '2': 3},
    const {'1': 'FLOW_ACCESS_CODE', '2': 4},
  ],
};

const SecurityRequirement$json = const {
  '1': 'SecurityRequirement',
  '2': const [
    const {
      '1': 'security_requirement',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.grpc.gateway.protoc_gen_swagger.options.SecurityRequirement.SecurityRequirementEntry',
      '10': 'securityRequirement'
    },
  ],
  '3': const [
    SecurityRequirement_SecurityRequirementValue$json,
    SecurityRequirement_SecurityRequirementEntry$json
  ],
};

const SecurityRequirement_SecurityRequirementValue$json = const {
  '1': 'SecurityRequirementValue',
  '2': const [
    const {'1': 'scope', '3': 1, '4': 3, '5': 9, '10': 'scope'},
  ],
};

const SecurityRequirement_SecurityRequirementEntry$json = const {
  '1': 'SecurityRequirementEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6':
          '.grpc.gateway.protoc_gen_swagger.options.SecurityRequirement.SecurityRequirementValue',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Scopes$json = const {
  '1': 'Scopes',
  '2': const [
    const {
      '1': 'scope',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.grpc.gateway.protoc_gen_swagger.options.Scopes.ScopeEntry',
      '10': 'scope'
    },
  ],
  '3': const [Scopes_ScopeEntry$json],
};

const Scopes_ScopeEntry$json = const {
  '1': 'ScopeEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};
