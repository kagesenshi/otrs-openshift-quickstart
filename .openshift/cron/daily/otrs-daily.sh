#!/bin/bash

$OPENSHIFT_REPO_DIR/otrs/bin/otrs.ReprocessMails.pl >> /dev/null
$OPENSHIFT_REPO_DIR/otrs/bin/otrs.RebuildTicketIndex.pl >> /dev/null
