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


 - https://github.com/davebaird/z5.stdlib/blob/master/sh/azuretools
   - azure.tr
   - azuretools.is_azure
   - azuretools.set_up_swap
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/bashtools
   - aa.has
   - aa.has.set
   - cancel.alarm
   - ellipsize
   - ellipsize_middle
   - get_fcn_list
   - join_by
   - laa.has
   - laa.has.set
   - rmrf_safe
   - set.alarm
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/checks
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
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/cleanup
   - cleanup.add
   - cleanup.rc
   - cleanup.shared_memory
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/cloud_init
   - cloud_init.run
   - cloud_init.users
   - cloud_init.write_files
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/datetimetools
   - dt.YYYY-MM-DD.2iso8601
   - dt.now
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/docker.cli.tools
   - dbuild
   - dcleanup
   - dstopall
   - dvolumes
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/dockertools
   - dtools.container.exists
   - dtools.container.running
   - dtools.docker.install
   - dtools.docker.install.cli
   - dtools.ip
   - dtools.stop
   - dtools.tail.log
   - dtools.waitfor
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/doitools
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
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/errcho
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
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/installer
   - install.apt.pkgs
   - install.chromium
   - install.cpanm
   - install.docopts
   - install.dt_iso8601
   - install.jo
   - install.snap
   - install.urifind
   - install.yq
   - install.yq4
   - test.installed.apt.pkgs
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/iptools
   - iptools.etchosts.add
   - iptools.etchosts.rm
   - iptools.get_ip_dns
   - iptools.get_ip_etc_hosts
   - iptools.get_ip_prefer_etc_hosts
   - iptools.myip
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/jsontools
   - a2j
   - aa2j
   - is.json
   - json.denullify2arr
   - json.denullify2str
   - jsonval
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/listeners
   - addListener
   - throw
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/optstools
   - check.is_getopt_enhanced
   - parseopts
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/pathtools
   - PATH.add
   - PATH.dedup
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
   - path.mkdir.if.missing
   - path.parent.exists
   - path.relative
   - path.rootdir
   - path.rootdir.pwd
   - path.their.rootdir
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/pidtools
   - list.descendants
   - list.descendants.comma_separated
   - pid.command
   - pidfile.get
   - pidfile.set
   - stop.pid
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/pkgtools
   - cpanfile2pkglist
   - cpanfileshowdeps
   - generate.pkglists
   - pkglist2deblist
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/portstools
   - ports.commands
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/sshtools
   - sshtools.configure_identity_files
   - sshtools.generate_keypair
   - sshtools.mount_remote
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/stacktrace
   - stacktrace
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/Sudo
   - Sudo
   - Sudo_u
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/try-catch
   - catch
   - ignoreErrors
   - throw
   - throwErrors
   - try
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/usertools
   - usertools.homedir
   - usertools.sudoer
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/vboxtools
   - vboxtools.fix_hostonly_networking
   - vboxtools.is_vbox
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/waitfor
   - waitfor.docker
   - waitfor.file
   - waitfor.host.port
   - waitfor.socket
   - waitfor.umount
 - https://github.com/davebaird/z5.stdlib/blob/master/sh/webtools
   - is.not.url
   - is.url
   - url.path
   - webtools.dump_dom
   - webtools.dump_dom2
   - webtools.redirected_url
   - webtools.ua