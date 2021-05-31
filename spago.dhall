{ name = "assert-multiple"
, dependencies =
  [ "assert"
  , "console"
  , "debug"
  , "effect"
  , "exceptions"
  , "node-fs"
  , "ordered-collections"
  , "psci-support"
  , "strings"
  , "stringutils"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
