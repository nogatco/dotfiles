#!/usr/bin/env bash
# Really deletes all mail that is tagged with "deleted"

# For some reason neither a for loop nor xargs seems to work,
# so a tmp file is used as a workaround. Don't kill me, pls
notmuch search --output=files tag:deleted > /tmp/mailtodelete
while read p; do
  rm "$p"
done < /tmp/mailtodelete
rm /tmp/mailtodelete
notmuch new 2>&1 >/dev/null
