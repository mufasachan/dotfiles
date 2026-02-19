function nvim -d "nvim wrapper for project manager used seamlessly"
    if test -f "uv.lock"
        uv run nvim "$argv"
    else
        command nvim "$argv"
    end
end
