# Notes

## Adding packages with `curl` (David Loy)

Format:

```bash
curl -X POST --user "<user>:<password>" \
        -H "On-Behalf-Of: <user>" \
        -H "Packaging: http://purl.org/net/sword/package/SimpleZip" \
        -H "Slug: <doi ID>"  \
        -H "Content-Disposition: attachment; filename=<container name>" \
        -H "Content-MD5: <container md5>" \
        --data-binary "@<container path>" -v \
        'http://localhost:39001/mrtsword/collection/<profile>'
```

Example:

```bash
curl -X POST --user "test_dash_user:47XpCtdu" \
        -H "On-Behalf-Of: test_dash_user" \
        -H "Packaging: http://purl.org/net/sword/package/SimpleZip" \
        -H "Slug: doi:10.20200/xxxxxxxxx1"  \
        -H "Content-Disposition: attachment; filename=sword.zip" \
        -H "Content-MD5: 5778d534953f91919772ccc5390bfb31" \
        --data-binary "@/dpr2/curl/sword/test.zip" -v \
        'http://localhost:39001/mrtsword/collection/merritt_demo'
```

## Multipart update with Java (David Loy)

See [ReplaceClient.java](examples/ReplaceClient.java).

