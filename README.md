# Hiberent

According to Google translate Hiberent means _stop it_ in latin. This project aims to tell "stop it" to abusive cryptominers to stop abusing platforms, by putting pebbles in their shoes.

## Motivation

Cryptocurrency is awesome and there are some fun things happening in this space, although some users have been abusing platforms that run on the cloud. Hiberent is a very basic script that aims to stop the most basic
form of abuse by users.

After watching how these abusive users act to run mining tools, the idea of creating a script to look for these mining tools and stop them came to life. 

## Mitigating Mining

Preventing users from abusing your platform will be difficult. This project is more of an annoyance to the abusive users than anything else. Hiberent might keep unsophisticated users from running some commands, but these mitigations are pretty straightforward to circumvent.

As a recommendation to harden your systems, you might want to remove the most used commands to download packages (wget, git, curl). You might be interested in reading [this answer from stackexchange](https://unix.stackexchange.com/questions/90998/block-particular-command-in-linux-for-specific-user/91003#91003).

Hiberent is a poor-man way of preventing users from running commands and killing known mining tools. If you are using AWS, it's highly recommended that you use Guard Duty and terminate instances if mining is detected - read [this article]() (TBD) on how to do this.

## Install

Clone this repository

```
git clone https://github.com/FabioRosado/hiberent.git
```

Then install the package - this will create a new `scripts` folder under your home directory and move the files there. By installing the package, `hiberent` will start running in the background once the install finishes.

```
cd hiberent
bash install
```
