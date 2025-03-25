-- 创建一个表来存储文件类型与对应命令的配置
local run_config = {}

-- 定义一个函数来添加配置
function add_run_config(extension, command)
  -- 保存文件后缀和对应的命令
  run_config[extension] = command
end

-- 定义 :run 命令来根据文件类型选择执行的命令
vim.api.nvim_create_user_command('Run', function()
  -- 获取当前文件名
  local file = vim.fn.expand('%')

  -- 获取文件扩展名
  local ext = vim.fn.fnamemodify(file, ':e')

  -- 根据扩展名选择命令
  local command = run_config[ext]

  -- 如果配置了对应命令，则执行
  if command then
    -- 替换命令中的 % 为当前文件
    command = command:gsub('%%', file)
    vim.cmd('! ' .. command)
  else
    print("未找到该文件类型的配置: " .. ext)
  end
end, {nargs = 0})

-- 添加文件类型和对应的命令
add_run_config('js', 'node %')  -- 对于 .js 文件，运行 node % 
add_run_config('ts', 'npx ts-node %')  -- 对于 .ts 文件，运行 npx ts-node %
add_run_config('py', 'python %')  -- 对于 .py 文件，运行 python %

