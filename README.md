# Vagrant -> Chef Solo -> Librarian Chef + Ruby on Rails
## A Ruby on Rails development setup for training/learning.

Get yourself an Rails environment without tearing your hair out. 
Call it Band-Aid for the Kool-Aid.

```shell
$ git clone git://github.com/pootsbook/vag-chef-rails.git

$ cd vag-chef-rails

$ mkdir cookbooks

$ gem install librarian-chef

$ librarian-chef install

$ vagrant up
```

Thanks to @rosstimson, @jamesmills and especially @DanThiffault.
See http://blog.119labs.com/2012/03/rails-vagrant-chef/ for inspiration.
