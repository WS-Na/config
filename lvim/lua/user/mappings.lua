-- 映射
--  insert_mode = "i",
--  normal_mode = "n",
--  term_mode = "t",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  command_mode = "c",
--  operator_pending_mode = "o",

--normal mode maaping
lvim.keys.normal_mode["<leader>x"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<leader>q"] = ":q<CR>"
lvim.keys.normal_mode["<C-l>"] = ":BufferLineCycleNext<CR>" --移动缓存页
lvim.keys.normal_mode["<C-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-n>"] = ":NvimTreeToggle<CR>"      --打开文件目录
lvim.keys.normal_mode["q0"] = "<cmd>q!<CR>"
lvim.keys.normal_mode[";"] = ":"
lvim.keys.normal_mode["'"] = "$"
lvim.keys.normal_mode["d'"] = "d<End>"
lvim.keys.normal_mode["ss"] = "<C-W>"    --移动屏窗口
lvim.keys.normal_mode["sv"] = ":vsp<CR>" -- 垂直分屏
lvim.keys.normal_mode["sh"] = ":sp<CR>"  -- 水平分屏
lvim.keys.normal_mode["sc"] = "<C-W>c"   --关闭当前分屏窗口
lvim.keys.normal_mode["so"] = "<C-W>o"   --关闭其他分屏窗口
--insert mode mapping
lvim.keys.insert_mode["jj"] = "<ESC>"
lvim.keys.insert_mode["kk"] = "="
--visual mode mapping
lvim.keys.visual_mode["'"] = "<End>"
--command mode mapping
lvim.keys.command_mode["jj"] = "<C-u><ESC>"
--terminal
lvim.builtin.terminal.open_mapping = "<C-t>"
--Telescope
lvim.keys.normal_mode["<C-e>"] = ":Telescope find_files<CR>" --搜索文件
-- debug mappings
lvim.builtin.which_key.mappings["dm"] = { "<cmd>lua require('neotest').run.run()<cr>",
  "Test Method" }
lvim.builtin.which_key.mappings["dM"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
  "Test Method DAP" }
lvim.builtin.which_key.mappings["df"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" }
lvim.builtin.which_key.mappings["dF"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" }
lvim.builtin.which_key.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }
