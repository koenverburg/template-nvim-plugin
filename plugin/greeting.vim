function! GreetingPlugin()
lua << EOF
  for k in pairs(package.loaded) do
    if k:match("^greeting") then
      package.loaded[k] = nil
    end
  end
EOF
endfunction

augroup GreetingPlugin
  autocmd!
augroup END
