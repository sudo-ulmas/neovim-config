require("neotest").setup({

    diagnostic = {
      enabled = true,
      severity = 1
    },
    discovery = {
      concurrent = 0,
      enabled = true
    },
    floating = {
      border = "rounded",
      max_height = 0.6,
      max_width = 0.6,
      options = {}
    },
    highlights = {
      adapter_name = "NeotestAdapterName",
      border = "NeotestBorder",
      dir = "NeotestDir",
      expand_marker = "NeotestExpandMarker",
      failed = "NeotestFailed",
      file = "NeotestFile",
      focused = "NeotestFocused",
      indent = "NeotestIndent",
      marked = "NeotestMarked",
      namespace = "NeotestNamespace",
      passed = "NeotestPassed",
      running = "NeotestRunning",
      select_win = "NeotestWinSelect",
      skipped = "NeotestSkipped",
      target = "NeotestTarget",
      test = "NeotestTest",
      unknown = "NeotestUnknown",
      watching = "NeotestWatching"
    },
    icons = {
      child_indent = "│",
      child_prefix = "├",
      collapsed = "─",
      expanded = "╮",
      failed = "",
      final_child_indent = " ",
      final_child_prefix = "╰",
      non_collapsible = "─",
      notify = "",
      passed = "",
      running = "",
      running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
      skipped = "",
      unknown = "",
      watching = ""
    },
    jump = {
      enabled = true
    },
    log_level = 3,
    output = {
      enabled = true,
      open_on_run = "short"
    },
    output_panel = {
      enabled = true,
      open = "botright split | resize 15"
    },
    projects = {},
    quickfix = {
      enabled = true,
      open = false
    },
    run = {
      enabled = true
    },
    running = {
      concurrent = true
    },
    state = {
      enabled = true
    },
    status = {
      enabled = true,
      signs = true,
      virtual_text = false
    },
    strategies = {
      integrated = {
        height = 40,
        width = 120
      }
    },
    summary = {
      animated = true,
      enabled = true,
      expand_errors = true,
      follow = true,
      mappings = {
        attach = "a",
        clear_marked = "M",
        clear_target = "T",
        debug = "d",
        debug_marked = "D",
        expand = { "<CR>", "<2-LeftMouse>" },
        expand_all = "e",
        help = "?",
        jumpto = "i",
        mark = "m",
        next_failed = "J",
        output = "o",
        prev_failed = "K",
        run = "r",
        run_marked = "R",
        short = "O",
        stop = "u",
        target = "t",
        watch = "w"
      },
      open = "botright vsplit | vertical resize 50"
    },
    watch = {
      enabled = true,
      symbol_queries = {
	dart = '; Captures named imports (import_specification name: (simple_identifier) @symbol) ; Captures default import (import_prefix name: (simple_identifier) @symbol) ; Capture variable declarations with library imports (variable_declaration_list (variable_declaration name: (simple_identifier) @symbol value: (method_invocation target: (simple_identifier) @library method: (simple_identifier) @method (#eq? @method "import")))) ; Capture part imports (part_directive uri: (simple_string_literal) @symbol) ; Capture part of imports (part_of_directive library_name: (simple_identifier) @symbol)'


      }
    },
  adapters = {
     require('neotest-dart') {
             command = 'flutter', -- Command being used to run tests. Defaults to `flutter`
                                  -- Change it to `fvm flutter` if using FVM
                                  -- change it to `dart` for Dart only tests
             use_lsp = true,      -- When set Flutter outline information is used when constructing test name.
             -- Useful when using custom test names with @isTest annotation
             custom_test_method_names = {},
      }
  }

}  
)
