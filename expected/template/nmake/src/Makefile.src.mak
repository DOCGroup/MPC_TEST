# I don't know what use this is, but you can map a keyword in a
# Define_Custom to nothing.  This has the effect of creating a new project
# keyword on the fly and can be used within a template as any other project
# keyword
FLAPFLAGS = -some_option $(Debug)

FEATURES = \
  "boost = " \
  "gl = 1" \
  "qos = 1" \
  "ace_flreactor = 1" \
  "xt = " \
  "rwho = " \
  "wince = " \
  "link_codecfactory = " \
  "zlib = " \
  "minimum_corba = " \
  "zzip = " \
  "ace_token = 1" \
  "omniorb = " \
  "ace_svcconf = 1" \
  "rapi = " \
  "xerces3 = " \
  "mico = " \
  "dummy_label = " \
  "ziparchive = " \
  "corba_e_compact = " \
  "static_libs_only = " \
  "sctp = " \
  "uses_wchar = " \
  "negotiate_codesets = " \
  "tao_xtresource = 1" \
  "zip_wrapper = " \
  "tao_tkresource = 1" \
  "ace_xtreactor = 1" \
  "vcl = " \
  "ace_for_tao = " \
  "x11 = 1" \
  "repo = " \
  "tao_qtresource = 1" \
  "cidl = " \
  "ace_qtreactor = 1" \
  "qt = " \
  "ipv6 = " \
  "fl = " \
  "rpc = " \
  "acexml = 1" \
  "mfc = " \
  "ssl = 1" \
  "stl = " \
  "java = " \
  "corba_e_micro = " \
  "athena = " \
  "ace_tkreactor = 1" \
  "tao_flresource = 1" \
  "versioned_namespace = " \
  "tao_no_iiop = " \
  "wxwindows = " \
  "motif = " \
  "tk = "

## Section FIRST
Group1 = down\foo.flap

foo.wing: down\foo.flap $(TEST_ROOT)\bin\flap.pl
	perl $(TEST_ROOT)\bin\flap.pl  down\foo.flap

