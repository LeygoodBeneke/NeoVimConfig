local has = function(x)
    return vim.fn.has(x) == 1
end

local linux = has "macunix"

if linux then
    vim.opt.clipboard:append { 'unnamedplus' }
else
    vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
