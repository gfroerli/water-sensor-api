# Coredump Water Sensor API

This project provides an API for querying sensor data of our
photon water sensors located in the particle cloud.

## Requirements

* Ruby 2.3
* Rails 5

## Setup

Install [rbenv](https://github.com/rbenv/rbenv) and
[ruby-build](https://github.com/rbenv/ruby-build). On ArchLinux you can install
them from the AUR:

 * https://aur.archlinux.org/packages/rbenv/
 * https://aur.archlinux.org/packages/ruby-build/

To activate rbenv you need to add

    eval "$(rbenv init -)"

To your shell init file (`.bashrc`/`.zshrc`).

Prepare the ruby environment

    git clone git@github.com:coredump-ch/water-sensor-api.git
    rbenv install
    gem install bundler

Run the setup script

    bin/setup

## Dev Server

    bin/rails server

## Quality

    bin/check

## Tasks

You can query the particle cloud and update the APIs sensor data by running
the following task

    rake particle:update

## API Endpoints

- `sensors` (full CRUD)
- `measurements` (full CRUD)
- `sponsors` (full CRUD)
