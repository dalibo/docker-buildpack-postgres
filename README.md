# [dalibo/buildpack-postgres](https://hub.docker.com/r/dalibo/buildpack-postgres)

Buildpack image for development of PostgreSQL tooling:

- [dalibo/buildpack-python](https://hub.docker.com/r/dalibo/buildpack-python).
- All supported PostgreSQL server from PGDG.
- PostgreSQL contrib.

Instead of loading all versions in all images,
PostgreSQL versions are distributed in images.
Older PostgreSQL are installed on older distributions.
Odd PostgreSQL versions are on RHEL
while even PostgreSQL versions are on Debian.

## Tags

- `rockylinux10` with PostgreSQL 18 and 16.
- `trixie` with PostgreSQL 17 and 15.
- `rockylinux9` with PostgreSQL 18, 16 and 14.
- `bookworm` with PostgreSQL 17, 15 and 13.
- `rockylinux8` with PostgreSQL 14 and 12.
- `bullseye` with PostgreSQL 13 and 11.
- `centos7` with PostgreSQL 12 and 10.
