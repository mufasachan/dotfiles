if type chezmoi then
  chezmoi completion fish | source
end
if type fd then
  fd --gen-completions fish | source
end

if type fzf then
  fzf --fish | source
end
