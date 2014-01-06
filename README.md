# Why this fork?
Bluepill worked well for us on http://ridewithgps.com up through version 0.0.60, after which they introduced the process journal.  The Process journal is a flawed idea - persist to disk a journal of all PIDs underneath a watched process in bluepill.  Due to a variety of bugs, PIDs end up in the journal (sometimes growing uncontrollably, filling log files with gigs of data) well after the original process has exited.  Given that PIDs are not unique and are in fact regularly reused, and that Bluepill kills all processes with PIDs in the journal file when it is restarted, terrible bugs ensue.  If not running privileged, bluepill dies.  If running privileged, other unintended processes die.

This fork will likely not be maintained, aside from ensuring it works with updated ruby versions.


# Bluepill
Bluepill is a simple process monitoring tool written in Ruby.

Check out the original Bluepill repo for information about the tool:  http://github.com/bluepill-rb/bluepill
