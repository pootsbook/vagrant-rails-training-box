# Vagrant Box for Learning Ruby & Rails
## Provisioned with Chef-Solo and Librarian

Get yourself an Rails environment without tearing your hair out. The use of Librarian for Librarian-Chef assumes Ruby is already installed on your machine. 

## Download a Box without the hassle

An Ubuntu 12.10 (Precise Pangolin) 64-bit box was created for a [Ruby & Rails for Developers](http://www.eventbrite.co.uk/event/3566462385) Course on 26th July 2012. [Download the ~1GB box file](https://s3.amazonaws.com/railstraining/rubyrails.box)

## Build a box yourself

### Requirements

- Ruby (for Librarian)
- VirtualBox (> 4.1.0) (for Vagrant)
- Vagrant (> 1.0)

### Setup

```shell
$ git clone git://github.com/pootsbook/vagrant-rails-training-box.git

$ cd vagrant-rails-training-box

$ mkdir cookbooks

$ gem install librarian

$ librarian-chef install

$ vagrant up
```

## Acknowledgements

Thanks to @rosstimson, @jamesmills and especially @DanThiffault.
See http://blog.119labs.com/2012/03/rails-vagrant-chef/ for inspiration.
