return {
  setup = function ()
    -- Funcionais

    ---- <Tab> Config
    local tab_width = 4
    vim.opt_local.tabstop = tab_width
    vim.opt_local.softtabstop = tab_width
    vim.opt_local.shiftwidth = tab_width

    ---- Identação
    vim.opt_local.listchars = {
        tab = "<->",
        trail = "~",
        nbsp = "+",
        multispace = "...|",
    }
  end
}
