require('dap').adapters = {
  dart = {
    type = "executable",
    command = "flutter",
    args = {"debug_adapter"}
  },
  cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = '/home/adrian/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
  }
}
