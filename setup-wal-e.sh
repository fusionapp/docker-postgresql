#!/bin/bash
mkdir -p $PGDATA/conf.d
cp --no-target-directory /usr/share/wal-e/wal-e.conf $PGDATA/conf.d/wal-e.conf
cp --no-target-directory /usr/share/wal-e/recovery.conf $PGDATA/recovery.conf
chown --recursive postgres:postgres $PGDATA/conf.d $PGDATA/recovery.conf /etc/wal-e.d/env
chmod --recursive u=rwX,g=,o= $PGDATA/conf.d $PGDATA/recovery.conf /etc/wal-e.d/env
