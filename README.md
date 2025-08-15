# CFAL_onboarding
This repo is meant to serve as training material for new CFAL members, or current members needing a refresher on some topics.

Doing the onboarding in order will make for a better experience, but is not required. The [Introduction](#introduction) and [Getting Started](#getting_started) sections are in this directory, while other sections are in the specified folders in the repository

- [CFAL\_onboarding](#cfal_onboarding)
- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Important downloads](#important-downloads)
  - [Getting a Vega account (ERAU HPC)](#getting-a-vega-account-erau-hpc)
  - [Using Teams](#using-teams)

# Introduction

In the Computational Fluids and Aerodynamics Laboratory, we leverage cutting-edge computing and software to advance understanding of fluid dynamics. Even though fluid dynamics is such a broad category (aerodynamics, multiphase, compressible, aeroacoustics, you get the idea), there are a few concepts everybody in the lab utilizes to some extent. The goal of this onboarding is to get you familiar with some of these concepts, so you can get to the fun part of your research!

# Getting Started
Here, we will go over a few items that are required for the rest of the onboarding.

## Important downloads
There are a few pieces of software the CFAL members use on a day-to-day basis.

* [Microsoft 365](https://myerauedu.sharepoint.com/sites/IT/SitePages/microsoft-office-365.aspx?web=1) (should be able to download through your ERAU account)
* [Visual Studio Code](https://code.visualstudio.com/download) - this is the preferred text editor for the lab. Also includes SSH tools for connecting to HPC/lab computers
* [MobaXTerm](https://mobaxterm.mobatek.net/download.html) A powerful remote access tool, typically used for SSH connections but can be used for remote desktop connections as well.
* [WinSCP](https://winscp.net/eng/download.php) WinSCP (Windows SCP) is a file transfer software. Makes it easy to transfer a large number of files between computers.

Here is a PowerShell script that automates much of the software installing:  
[Run the install script](./scripts/install_apps.ps1)

## Getting a Vega account (ERAU HPC)
Request a Vega account [here](https://myerauedu.sharepoint.com/sites/IT/SitePages/research-support.aspx?web=1), it will submit a support ticket on your behalf to the Linux/HPC staff.

## Using Teams 
CFAL uses Microsoft Teams to communicate and store files (usually documents, PowerPoints, and simulation files). There are a couple of things you should do to set yourself up in Teams.

1. First of all, make sure you are a member of the CFAL 2.0 team.
2. In the "Research" channel, under the files tab, make a folder for yourself. This is where your weekly update slides will live. It is important that your weekly update slides are in a shared space so PIs can access your work whenever.
3. Copy the PowerPoint template from General/Files into your Research folder.
4. It is useful to have Teams files within your file system. The easiest way to do this is to have OneDrive connected to your OS and, in Research/files, click the "Add shortcut to OneDrive" button. You'll see a shortcut that looks like "CFAL 2.0 - Research" in your OneDrive home directory.


