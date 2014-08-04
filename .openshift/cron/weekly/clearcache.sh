#!/bin/bash

$OPENSHIFT_REPO_DIR/otrs/bin/otrs.DeleteCache.pl --expired >> /dev/null
$OPENSHIFT_REPO_DIR/otrs/bin/otrs.LoaderCache.pl -o delete >> /dev/null
