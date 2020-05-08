///
//  Generated code. Do not modify.
//  source: infobloxopen/protoc-gen-gorm/options/gorm.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const GormFileOptions$json = const {
  '1': 'GormFileOptions',
};

const GormMessageOptions$json = const {
  '1': 'GormMessageOptions',
  '2': const [
    const {'1': 'ormable', '3': 1, '4': 2, '5': 8, '10': 'ormable'},
    const {
      '1': 'include',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.gorm.ExtraField',
      '10': 'include'
    },
    const {'1': 'table', '3': 3, '4': 1, '5': 9, '10': 'table'},
    const {'1': 'multi_account', '3': 4, '4': 1, '5': 8, '10': 'multiAccount'},
  ],
};

const ExtraField$json = const {
  '1': 'ExtraField',
  '2': const [
    const {'1': 'type', '3': 1, '4': 2, '5': 9, '10': 'type'},
    const {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    const {
      '1': 'tag',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.gorm.GormTag',
      '10': 'tag'
    },
    const {'1': 'package', '3': 4, '4': 1, '5': 9, '10': 'package'},
  ],
};

const GormFieldOptions$json = const {
  '1': 'GormFieldOptions',
  '2': const [
    const {
      '1': 'tag',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.gorm.GormTag',
      '10': 'tag'
    },
    const {'1': 'drop', '3': 2, '4': 1, '5': 8, '10': 'drop'},
    const {
      '1': 'has_one',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.gorm.HasOneOptions',
      '9': 0,
      '10': 'hasOne'
    },
    const {
      '1': 'belongs_to',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.gorm.BelongsToOptions',
      '9': 0,
      '10': 'belongsTo'
    },
    const {
      '1': 'has_many',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.gorm.HasManyOptions',
      '9': 0,
      '10': 'hasMany'
    },
    const {
      '1': 'many_to_many',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.gorm.ManyToManyOptions',
      '9': 0,
      '10': 'manyToMany'
    },
    const {'1': 'reference_of', '3': 7, '4': 1, '5': 9, '10': 'referenceOf'},
  ],
  '8': const [
    const {'1': 'association'},
  ],
};

const GormTag$json = const {
  '1': 'GormTag',
  '2': const [
    const {'1': 'column', '3': 1, '4': 1, '5': 9, '10': 'column'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'size', '3': 3, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'precision', '3': 4, '4': 1, '5': 5, '10': 'precision'},
    const {'1': 'primary_key', '3': 5, '4': 1, '5': 8, '10': 'primaryKey'},
    const {'1': 'unique', '3': 6, '4': 1, '5': 8, '10': 'unique'},
    const {'1': 'default', '3': 7, '4': 1, '5': 9, '10': 'default'},
    const {'1': 'not_null', '3': 8, '4': 1, '5': 8, '10': 'notNull'},
    const {
      '1': 'auto_increment',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'autoIncrement'
    },
    const {'1': 'index', '3': 10, '4': 1, '5': 9, '10': 'index'},
    const {'1': 'unique_index', '3': 11, '4': 1, '5': 9, '10': 'uniqueIndex'},
    const {'1': 'embedded', '3': 12, '4': 1, '5': 8, '10': 'embedded'},
    const {
      '1': 'embedded_prefix',
      '3': 13,
      '4': 1,
      '5': 9,
      '10': 'embeddedPrefix'
    },
    const {'1': 'ignore', '3': 14, '4': 1, '5': 8, '10': 'ignore'},
    const {'1': 'foreignkey', '3': 15, '4': 1, '5': 9, '10': 'foreignkey'},
    const {
      '1': 'association_foreignkey',
      '3': 16,
      '4': 1,
      '5': 9,
      '10': 'associationForeignkey'
    },
    const {'1': 'many_to_many', '3': 17, '4': 1, '5': 9, '10': 'manyToMany'},
    const {
      '1': 'jointable_foreignkey',
      '3': 18,
      '4': 1,
      '5': 9,
      '10': 'jointableForeignkey'
    },
    const {
      '1': 'association_jointable_foreignkey',
      '3': 19,
      '4': 1,
      '5': 9,
      '10': 'associationJointableForeignkey'
    },
    const {
      '1': 'association_autoupdate',
      '3': 20,
      '4': 1,
      '5': 8,
      '10': 'associationAutoupdate'
    },
    const {
      '1': 'association_autocreate',
      '3': 21,
      '4': 1,
      '5': 8,
      '10': 'associationAutocreate'
    },
    const {
      '1': 'association_save_reference',
      '3': 22,
      '4': 1,
      '5': 8,
      '10': 'associationSaveReference'
    },
    const {'1': 'preload', '3': 23, '4': 1, '5': 8, '10': 'preload'},
  ],
};

const HasOneOptions$json = const {
  '1': 'HasOneOptions',
  '2': const [
    const {'1': 'foreignkey', '3': 1, '4': 1, '5': 9, '10': 'foreignkey'},
    const {
      '1': 'foreignkey_tag',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.gorm.GormTag',
      '10': 'foreignkeyTag'
    },
    const {
      '1': 'association_foreignkey',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'associationForeignkey'
    },
    const {
      '1': 'association_autoupdate',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'associationAutoupdate'
    },
    const {
      '1': 'association_autocreate',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'associationAutocreate'
    },
    const {
      '1': 'association_save_reference',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'associationSaveReference'
    },
    const {'1': 'preload', '3': 7, '4': 1, '5': 8, '10': 'preload'},
  ],
};

const BelongsToOptions$json = const {
  '1': 'BelongsToOptions',
  '2': const [
    const {'1': 'foreignkey', '3': 1, '4': 1, '5': 9, '10': 'foreignkey'},
    const {
      '1': 'foreignkey_tag',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.gorm.GormTag',
      '10': 'foreignkeyTag'
    },
    const {
      '1': 'association_foreignkey',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'associationForeignkey'
    },
    const {
      '1': 'association_autoupdate',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'associationAutoupdate'
    },
    const {
      '1': 'association_autocreate',
      '3': 5,
      '4': 1,
      '5': 8,
      '10': 'associationAutocreate'
    },
    const {
      '1': 'association_save_reference',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'associationSaveReference'
    },
    const {'1': 'preload', '3': 7, '4': 1, '5': 8, '10': 'preload'},
  ],
};

const HasManyOptions$json = const {
  '1': 'HasManyOptions',
  '2': const [
    const {'1': 'foreignkey', '3': 1, '4': 1, '5': 9, '10': 'foreignkey'},
    const {
      '1': 'foreignkey_tag',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.gorm.GormTag',
      '10': 'foreignkeyTag'
    },
    const {
      '1': 'association_foreignkey',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'associationForeignkey'
    },
    const {
      '1': 'position_field',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'positionField'
    },
    const {
      '1': 'position_field_tag',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.gorm.GormTag',
      '10': 'positionFieldTag'
    },
    const {
      '1': 'association_autoupdate',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'associationAutoupdate'
    },
    const {
      '1': 'association_autocreate',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'associationAutocreate'
    },
    const {
      '1': 'association_save_reference',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'associationSaveReference'
    },
    const {'1': 'preload', '3': 9, '4': 1, '5': 8, '10': 'preload'},
  ],
};

const ManyToManyOptions$json = const {
  '1': 'ManyToManyOptions',
  '2': const [
    const {'1': 'jointable', '3': 1, '4': 1, '5': 9, '10': 'jointable'},
    const {'1': 'foreignkey', '3': 2, '4': 1, '5': 9, '10': 'foreignkey'},
    const {
      '1': 'jointable_foreignkey',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'jointableForeignkey'
    },
    const {
      '1': 'association_foreignkey',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'associationForeignkey'
    },
    const {
      '1': 'association_jointable_foreignkey',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'associationJointableForeignkey'
    },
    const {
      '1': 'association_autoupdate',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'associationAutoupdate'
    },
    const {
      '1': 'association_autocreate',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'associationAutocreate'
    },
    const {
      '1': 'association_save_reference',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'associationSaveReference'
    },
    const {'1': 'preload', '3': 9, '4': 1, '5': 8, '10': 'preload'},
  ],
};

const AutoServerOptions$json = const {
  '1': 'AutoServerOptions',
  '2': const [
    const {'1': 'autogen', '3': 1, '4': 1, '5': 8, '10': 'autogen'},
    const {
      '1': 'txn_middleware',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'txnMiddleware'
    },
    const {'1': 'with_tracing', '3': 3, '4': 1, '5': 8, '10': 'withTracing'},
  ],
};

const MethodOptions$json = const {
  '1': 'MethodOptions',
  '2': const [
    const {'1': 'object_type', '3': 1, '4': 1, '5': 9, '10': 'objectType'},
  ],
};
