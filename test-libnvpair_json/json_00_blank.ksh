#!/usr/local/bin/ksh93
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#

#
# Copyright (c) 2014, Joyent, Inc.
#

DIR=$(dirname $0)
. ${DIR}/json_common.ksh

BASELINE="$(cat <<EOF
{\
}
EOF)"

OUTPUT="$(${DIR}/print_json <<'EOF'
/*
 * Emit a blank object.
 */
EOF)"

complete
