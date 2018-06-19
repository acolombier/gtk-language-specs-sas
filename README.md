# SAS MIME support & syntax highlighting

This repo contains basic SAS source file recognition on Linux system, and syntax highligting for GTK SourceView software based, such as Gedit.

## Usage

These files are provided with a makefile to ease the (un)installation/upgrade process.

The default directories are thoses used by default on most of the system. If you have installed manually GTK SourceView or MIME, you can can chaange these directories in the makefile.

To install or upgrade definitions, use the following command :
> *Note*: The process is taking some time as it needs to regenerate the MIME cache.
```# make install```

To uninstall definitions, use the following command :
> *Note*: The process is taking some time as it needs to regenerate the MIME cache.
```# make uninstall```