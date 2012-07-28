# Vagrant Box for Learning Ruby & Rails

Get yourself an Rails environment without tearing your hair out.

## Download the Box

An Ubuntu 12.04 LTS (Precise Pangolin) 64-bit box was created for a [Ruby & Rails for Developers](http://www.eventbrite.co.uk/event/3566462385) Course on 26th July 2012.  
[Download the ~1GB box file](https://s3.amazonaws.com/railstraining/rubyrails.box)

## Build the Box

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
