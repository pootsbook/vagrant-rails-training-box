syntax on
colorscheme vividchalk

set hlsearch

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
