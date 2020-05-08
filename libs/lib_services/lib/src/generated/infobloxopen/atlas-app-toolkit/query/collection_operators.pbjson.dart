///
//  Generated code. Do not modify.
//  source: infobloxopen/atlas-app-toolkit/query/collection_operators.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SortCriteria$json = const {
  '1': 'SortCriteria',
  '2': const [
    const {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    const {
      '1': 'order',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.infoblox.api.SortCriteria.Order',
      '10': 'order'
    },
  ],
  '4': const [SortCriteria_Order$json],
};

const SortCriteria_Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'ASC', '2': 0},
    const {'1': 'DESC', '2': 1},
  ],
};

const Sorting$json = const {
  '1': 'Sorting',
  '2': const [
    const {
      '1': 'criterias',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.infoblox.api.SortCriteria',
      '10': 'criterias'
    },
  ],
  '7': const {},
};

const FieldSelection$json = const {
  '1': 'FieldSelection',
  '2': const [
    const {
      '1': 'fields',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.infoblox.api.FieldSelection.FieldsEntry',
      '10': 'fields'
    },
  ],
  '3': const [FieldSelection_FieldsEntry$json],
  '7': const {},
};

const FieldSelection_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Field',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Field$json = const {
  '1': 'Field',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'subs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.infoblox.api.Field.SubsEntry',
      '10': 'subs'
    },
  ],
  '3': const [Field_SubsEntry$json],
};

const Field_SubsEntry$json = const {
  '1': 'SubsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.Field',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

const Filtering$json = const {
  '1': 'Filtering',
  '2': const [
    const {
      '1': 'operator',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.LogicalOperator',
      '9': 0,
      '10': 'operator'
    },
    const {
      '1': 'string_condition',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.StringCondition',
      '9': 0,
      '10': 'stringCondition'
    },
    const {
      '1': 'number_condition',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NumberCondition',
      '9': 0,
      '10': 'numberCondition'
    },
    const {
      '1': 'null_condition',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NullCondition',
      '9': 0,
      '10': 'nullCondition'
    },
    const {
      '1': 'string_array_condition',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.StringArrayCondition',
      '9': 0,
      '10': 'stringArrayCondition'
    },
    const {
      '1': 'number_array_condition',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NumberArrayCondition',
      '9': 0,
      '10': 'numberArrayCondition'
    },
  ],
  '7': const {},
  '8': const [
    const {'1': 'root'},
  ],
};

const LogicalOperator$json = const {
  '1': 'LogicalOperator',
  '2': const [
    const {
      '1': 'left_operator',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.LogicalOperator',
      '9': 0,
      '10': 'leftOperator'
    },
    const {
      '1': 'left_string_condition',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.StringCondition',
      '9': 0,
      '10': 'leftStringCondition'
    },
    const {
      '1': 'left_number_condition',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NumberCondition',
      '9': 0,
      '10': 'leftNumberCondition'
    },
    const {
      '1': 'left_null_condition',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NullCondition',
      '9': 0,
      '10': 'leftNullCondition'
    },
    const {
      '1': 'left_string_array_condition',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.StringArrayCondition',
      '9': 0,
      '10': 'leftStringArrayCondition'
    },
    const {
      '1': 'left_number_array_condition',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NumberArrayCondition',
      '9': 0,
      '10': 'leftNumberArrayCondition'
    },
    const {
      '1': 'right_operator',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.LogicalOperator',
      '9': 1,
      '10': 'rightOperator'
    },
    const {
      '1': 'right_string_condition',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.StringCondition',
      '9': 1,
      '10': 'rightStringCondition'
    },
    const {
      '1': 'right_number_condition',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NumberCondition',
      '9': 1,
      '10': 'rightNumberCondition'
    },
    const {
      '1': 'right_null_condition',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NullCondition',
      '9': 1,
      '10': 'rightNullCondition'
    },
    const {
      '1': 'right_string_array_condition',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.StringArrayCondition',
      '9': 1,
      '10': 'rightStringArrayCondition'
    },
    const {
      '1': 'right_number_array_condition',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.infoblox.api.NumberArrayCondition',
      '9': 1,
      '10': 'rightNumberArrayCondition'
    },
    const {
      '1': 'type',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.infoblox.api.LogicalOperator.Type',
      '10': 'type'
    },
    const {'1': 'is_negative', '3': 10, '4': 1, '5': 8, '10': 'isNegative'},
  ],
  '4': const [LogicalOperator_Type$json],
  '8': const [
    const {'1': 'left'},
    const {'1': 'right'},
  ],
};

const LogicalOperator_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'AND', '2': 0},
    const {'1': 'OR', '2': 1},
  ],
};

const StringCondition$json = const {
  '1': 'StringCondition',
  '2': const [
    const {'1': 'field_path', '3': 1, '4': 3, '5': 9, '10': 'fieldPath'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.infoblox.api.StringCondition.Type',
      '10': 'type'
    },
    const {'1': 'is_negative', '3': 4, '4': 1, '5': 8, '10': 'isNegative'},
  ],
  '4': const [StringCondition_Type$json],
};

const StringCondition_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'EQ', '2': 0},
    const {'1': 'MATCH', '2': 1},
    const {'1': 'GT', '2': 2},
    const {'1': 'GE', '2': 3},
    const {'1': 'LT', '2': 4},
    const {'1': 'LE', '2': 5},
    const {'1': 'IEQ', '2': 6},
  ],
};

const NumberCondition$json = const {
  '1': 'NumberCondition',
  '2': const [
    const {'1': 'field_path', '3': 1, '4': 3, '5': 9, '10': 'fieldPath'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.infoblox.api.NumberCondition.Type',
      '10': 'type'
    },
    const {'1': 'is_negative', '3': 4, '4': 1, '5': 8, '10': 'isNegative'},
  ],
  '4': const [NumberCondition_Type$json],
};

const NumberCondition_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'EQ', '2': 0},
    const {'1': 'GT', '2': 1},
    const {'1': 'GE', '2': 2},
    const {'1': 'LT', '2': 3},
    const {'1': 'LE', '2': 4},
  ],
};

const NullCondition$json = const {
  '1': 'NullCondition',
  '2': const [
    const {'1': 'field_path', '3': 1, '4': 3, '5': 9, '10': 'fieldPath'},
    const {'1': 'is_negative', '3': 2, '4': 1, '5': 8, '10': 'isNegative'},
  ],
};

const StringArrayCondition$json = const {
  '1': 'StringArrayCondition',
  '2': const [
    const {'1': 'field_path', '3': 1, '4': 3, '5': 9, '10': 'fieldPath'},
    const {'1': 'values', '3': 2, '4': 3, '5': 9, '10': 'values'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.infoblox.api.StringArrayCondition.Type',
      '10': 'type'
    },
    const {'1': 'is_negative', '3': 4, '4': 1, '5': 8, '10': 'isNegative'},
  ],
  '4': const [StringArrayCondition_Type$json],
};

const StringArrayCondition_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'IN', '2': 0},
  ],
};

const NumberArrayCondition$json = const {
  '1': 'NumberArrayCondition',
  '2': const [
    const {'1': 'field_path', '3': 1, '4': 3, '5': 9, '10': 'fieldPath'},
    const {'1': 'values', '3': 2, '4': 3, '5': 1, '10': 'values'},
    const {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.infoblox.api.NumberArrayCondition.Type',
      '10': 'type'
    },
    const {'1': 'is_negative', '3': 4, '4': 1, '5': 8, '10': 'isNegative'},
  ],
  '4': const [NumberArrayCondition_Type$json],
};

const NumberArrayCondition_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'IN', '2': 0},
  ],
};

const Pagination$json = const {
  '1': 'Pagination',
  '2': const [
    const {'1': 'page_token', '3': 1, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'offset', '3': 2, '4': 1, '5': 5, '10': 'offset'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
  ],
  '7': const {},
};

const PageInfo$json = const {
  '1': 'PageInfo',
  '2': const [
    const {'1': 'page_token', '3': 1, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'size', '3': 2, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
  ],
};
