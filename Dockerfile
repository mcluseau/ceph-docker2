from mcluseau/golang-builder:1.13.1 as build

arg FROM

from $FROM
entrypoint ["/bin/entrypoint"]
copy --from=build /go/bin/ /bin/
