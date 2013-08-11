# Reign for Spotify Alfred 2 Workflow

This workflow will allow you to control Reign for Spotify. Reign is an app that
will allow you to remote control any Mac running Spotify from any device with a
web browser.

![rescue
feedback](https://raw.github.com/DangerCove/reign-alfred2-workflow/master/screenshots/play.png)

## Main features:

* Play/pause/next/previous tracks;
* Copy the artist and title to your clipboard;
* Open the current song in Spotify.

## Installation & Setup

I'm assuming you've already installed Reign. If you haven't, please visit
[dangercove.com/reign](http://dangercove.com/reign).

1. Download the latest [workflow file](https://raw.github.com/DangerCove/reign-alfred2-workflow/master/Reign%20for%20Spotify.alfredworkflow).
2. Install by double-clicking it;
3. Press your Alfred shortcut and type ```reign [service
ip/hostname]:[port]```, return;
4. That's it, now just type ```reign [command]```.

## Commands

The following commands are currently supported.

* ```reign host [ip/hostname]:[port]```, change the Reign host;
* ```reign np```, show the Now Playing info;
* ```reign n```, next song;
* ```reign p```, previous song;
* ```reign s```, toggle play/pause;
* ```reign o```, open the current song in your own Spotify client.

## Contributing

Feel free to add more commands or improve the quality of this rough first
version of the workflow.

Follow the [Quick Start Guide](https://github.com/zhaocai/alfred2-ruby-template#quick-start-guide)
to setup a development environment for your fork.

## Thanks

To [Zhao Cai](https://github.com/zhaocai) for making the [Alfred 2 Workflow Ruby Template](https://github.com/zhaocai/alfred2-ruby-template).