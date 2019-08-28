" py3 import vim
"
" function! GeneratePythonParseArgs()
" python3 << EOF
" def to_add_argument_str(key, default):
"     key = key.replace('_', '-')
"     if isinstance(default, (list, tuple)):
"         nargs = '+' if default else '*'
"         return "parser.add_argument('--{}', nargs='{}', default={})".format(key, nargs, default)
"     if isinstance(default, bool):
"         action = 'store_false' if default else 'store_true'
"         return "parser.add_argument('--{}', action='{}')".format(key, action)
"     if isinstance(default, str):
"         default = "'{}'".format(default)
"         typ = 'str'
"     elif isinstance(default, int):
"         typ = 'int'
"     elif isinstance(default, float):
"         typ = 'float'
"     else:
"         vim.command("echoerr 'Unknown argument type'")
"     return "parser.add_argument('--{}', type={}, default={})".format(key, typ, default)
"
" ctx = {}
" exec(vim.current.line, None, ctx)
" src = ['parser = argparse.ArgumentParser()']
" for k, v in sorted(ctx.items()):
"     src.append(to_add_argument_str(k, v))
" src.append('args = parser.parse_args()')
"
" vim.command('.d')  # delete current line used to generate the args
" vim.command("echo 'Generated parser for {} arguments!'".format(len(ctx)))
" cur = vim.eval("line('.')")
" vim.current.buffer.append(src, int(cur) - 1)
" vim.current.buffer.append('import argparse', 0)
" EOF
" endfunction
"
" command! ArgParse call GeneratePythonParseArgs()
