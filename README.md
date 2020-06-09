# Purpose

If you want to boot Linux on a Western Digital MyCloud EX2100, it's not possible with the stock u-boot.

This repository contains the stock u-boot release from the Western Digital GPL archive, with modifications to allow booting Linux from a USB mass storage device. 

u-boot falls back to booting the Western Digital firmware from NAND if no bootable USB mass storage device is present.

It should be safe to flash u-boot, as it doesn't change the default behaviour of the device if no external Linux OS is present.

# Installation

Installation instructions are available [here](https://web.archive.org/save/https://watchmysys.com/blog/2018/02/debian-on-wd-ex2100-installation-instructions/)

# History

Some history of this project can be found on the [Doozan forum](https://web.archive.org/web/20200609203436/https://forum.doozan.com/read.php?2,35975,35975).

# Getting help

This repository is based on work I did in 2017 and have neglected to upload to GitHub until now.

I no longer own the WD EX2100, so I cannot provide any further assistance. 

If you need support or modifications, I suggest asking on the [Doozan forum](https://forum.doozan.com/read.php?2,32146).
