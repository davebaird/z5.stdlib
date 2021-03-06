# z5.stdlib

## Mostly sugar

... but a touch of spice.

Usage:

    #!/bin/bash
    source [/path/to/z5.stdlib]/sh/importer vstrict || exit 1
    import errcho
    import stacktrace
    import bashtools
    import pathtools

    ...


Other tools:

    bin/z5.wrap

        Convenient wrapper, for non-shellscript access. Needs Z5_STDLIB to be
        set in environment.

            ./bin/z5.wrap libname funcname [args]

    perl/get.dom

        get.dom $url

        Uses headless Chrome to download and render a URL, in headless mode. Takes
        a lot of care to ensure, as far as is possible, that the DOM has been fully
        rendered, before dumping the DOM to STDOUT.

        webtools.dump_dom() is a simple wrapper around this script, but you can
        use it directly.

        Chrome/chromium must be installed. I've tried using a containerized
        Chrome but no luck so far.

    git/post-receive-hook

        A simple hook supporting push-to-deploy using a git repository. Read
        comments in the source for more info.



 - [azuretools](https://github.com/davebaird/z5.stdlib/blob/master/sh/azuretools)
   - azure.set_up_swap
   - azure.tr
   - test.is_azure
 - [bashtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/bashtools)
   - aa.has
   - aa.has.set
   - aa2a
   - cancel.alarm
   - ellipsize
   - ellipsize_middle
   - get_func_list
   - join_by
   - laa.has
   - laa.has.set
   - laa.has.true
   - rmrf_safe
   - set.alarm
 - [checks](https://github.com/davebaird/z5.stdlib/blob/master/sh/checks)
   - check.env
   - check.homedir
   - check.i_am_root
   - check.i_can_root
   - check.i_can_sbin
   - get.os
   - test.i_can_root
   - test.i_can_sudo_root
   - test.is_amd64
   - test.is_debian
   - test.is_i386
   - test.is_ubuntu
   - test.is_x86
   - test.is_x86_64
 - [cleanup](https://github.com/davebaird/z5.stdlib/blob/master/sh/cleanup)
   - cleanup.add
   - cleanup.last
   - cleanup.my_shared_memory
   - cleanup.rc
   - cleanup.shared_memory
 - [cloud_init](https://github.com/davebaird/z5.stdlib/blob/master/sh/cloud_init)
   - cloud_init.run
   - cloud_init.users
   - cloud_init.write_files
 - [datetimetools](https://github.com/davebaird/z5.stdlib/blob/master/sh/datetimetools)
   - dt.YYYY-MM-DD.2iso8601
   - dt.now
 - [docker.cli.tools](https://github.com/davebaird/z5.stdlib/blob/master/sh/docker.cli.tools)
   - dbuild
   - dcleanup
   - dstopall
   - dvolumes
 - [dockertools](https://github.com/davebaird/z5.stdlib/blob/master/sh/dockertools)
   - dtools.LastTagTime.iso8601
   - dtools.container.exists
   - dtools.container.running
   - dtools.docker.install
   - dtools.docker.install.cli
   - dtools.ip
   - dtools.stop
   - dtools.tail.log
   - dtools.volume.find
   - dtools.volume.ls
   - dtools.waitfor
 - [doitools](https://github.com/davebaird/z5.stdlib/blob/master/sh/doitools)
   - doi.URL
   - doi.abstract
   - doi.formatted.citation
   - doi.journal
   - doi.keywords
   - doi.lc.keywords
   - doi.meta
   - doi.title
   - doi2doi
   - url2doi
 - [errcho](https://github.com/davebaird/z5.stdlib/blob/master/sh/errcho)
   - becho
   - berrcho
   - cecho
   - cerrcho
   - debug
   - errcho
   - errxit
   - gecho
   - gerrcho
   - mecho
   - merrcho
   - pause
   - pause_fn
   - recho
   - rerrcho
   - yecho
   - yerrcho
 - [installer](https://github.com/davebaird/z5.stdlib/blob/master/sh/installer)
   - install.apt.pkgs
   - install.chromium
   - install.cpanm
   - install.docopts
   - install.dt_iso8601
   - install.jo
   - install.perlmodules
   - install.snap
   - install.urifind
   - install.yq
   - install.yq4
   - test.installed.apt.pkgs
 - [iptools](https://github.com/davebaird/z5.stdlib/blob/master/sh/iptools)
   - iptools.etchosts.add
   - iptools.etchosts.rm
   - iptools.get_ip_dns
   - iptools.get_ip_etc_hosts
   - iptools.get_ip_prefer_etc_hosts
   - iptools.myip
 - [jsontools](https://github.com/davebaird/z5.stdlib/blob/master/sh/jsontools)
   - a2j
   - aa2j
   - is.json
   - j2a
   - json.denullify2arr
   - json.denullify2str
   - jsonval
 - [listeners](https://github.com/davebaird/z5.stdlib/blob/master/sh/listeners)
   - addListener
   - throw
 - [optstools](https://github.com/davebaird/z5.stdlib/blob/master/sh/optstools)
   - check.is_getopt_enhanced
   - parseopts
 - [pathtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/pathtools)
   - PATH.add
   - PATH.dedup
   - check.dirs_exist_xr
   - check.dirs_exist_xw
   - path.backup
   - path.is.absolute
   - path.is.empty.dir
   - path.is.empty.dir.exists
   - path.is.not.empty.dir
   - path.is.not.empty.dir.exists
   - path.is.relative
   - path.last_modified
   - path.last_modified.epoch
   - path.last_modified.iso8601
   - path.last_modified.touchfile
   - path.mkdir.if.missing
   - path.parent.exists
   - path.relative
   - path.rootdir
   - path.rootdir.pwd
   - path.scriptdir
   - path.their.rootdir
   - test.dirs_exist_xr
   - test.dirs_exist_xw
 - [pidtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/pidtools)
   - list.descendants
   - list.descendants.comma_separated
   - mem.swapusage
   - pid.command
   - pidfile.get
   - pidfile.set
   - stop.pid
 - [pkgtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/pkgtools)
   - cpanfile2pkglist
   - cpanfileshowdeps
   - generate.pkglists
   - pkglist2deblist
 - [portstools](https://github.com/davebaird/z5.stdlib/blob/master/sh/portstools)
   - ports.commands
 - [sshtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/sshtools)
   - sshtools.configure_identity_files
   - sshtools.generate_keypair
   - sshtools.keyscan
   - sshtools.mount_remote
 - [stacktrace](https://github.com/davebaird/z5.stdlib/blob/master/sh/stacktrace)
   - stacktrace
 - [Sudo](https://github.com/davebaird/z5.stdlib/blob/master/sh/Sudo)
   - Sudo
   - Sudo_u
 - [try-catch](https://github.com/davebaird/z5.stdlib/blob/master/sh/try-catch)
   - catch
   - ignoreErrors
   - throw
   - throwErrors
   - try
 - [usertools](https://github.com/davebaird/z5.stdlib/blob/master/sh/usertools)
   - usertools.gid
   - usertools.homedir
   - usertools.sudoer
 - [vboxtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/vboxtools)
   - test.is_vbox
   - vbox.fix_hostonly_networking
 - [waitfor](https://github.com/davebaird/z5.stdlib/blob/master/sh/waitfor)
   - waitfor.docker
   - waitfor.file
   - waitfor.host.port
   - waitfor.socket
   - waitfor.umount
 - [webtools](https://github.com/davebaird/z5.stdlib/blob/master/sh/webtools)
   - check.is.url
   - is.not.url
   - is.url
   - url.path
   - webtools.dump_dom
   - webtools.dump_dom2
   - webtools.redirected_url
   - webtools.redirected_url.native
   - webtools.runjs
   - webtools.ua