#!/usr/bin/env python
import sys
import os
import json
from datetime import datetime

currdir = os.path.dirname(__file__)
trackerfile = os.path.join(currdir, 'tracker.json')
if os.path.exists(trackerfile):
    tracker = json.loads(open(trackerfile).read())
else:
    tracker = {}

scripts = [
        {'name': 'agent1', 'interval': 10, 'script': 'bin/otrs.GenericAgent.pl -c db >> /dev/null'},
        {'name': 'agent2', 'interval': 20, 'script': 'bin/otrs.GenericAgent.pl >> /dev/null'},
        {'name': 'pendingjobs', 'interval': 120, 'script': 'bin/otrs.PendingJobs.pl >> /dev/null'},
        {'name': 'postmaster', 'interval': 10, 'script': 'bin/otrs.PostMasterMailbox.pl >> /dev/null'},
        {'name': 'scheduler', 'interval': 5, 'script': 'bin/otrs.Scheduler.pl -w 1 >> /dev/null'},
        {'name': 'deletesession', 'interval': 120, 'script': 'bin/otrs.DeleteSessionIDs.pl --expired >> /dev/null'},
        {'name': 'unlocktickets', 'interval': 30, 'script': 'bin/otrs.UnlockTickets.pl --timeout >> /dev/null'}
]

for s in scripts:
    if s['name'] not in tracker:
        os.system('%s/%s' % (os.environ['OPENSHIFT_REPO_DIR'], s['script']))
        tracker[s['name']] = datetime.now()
    else:
        elapsed = (datetime.now() - tracker[s['name']]).total_seconds() / 60
        if elapsed >= s['interval']:
            os.system('%s/%s' % (sys.env['OPENSHIFT_REPO_DIR'], s['script']))
            tracker[s['name']] = datetime.now()

open(trackerfile, 'w').write(json.dumps(tracker))
