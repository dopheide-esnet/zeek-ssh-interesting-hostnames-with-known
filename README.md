# zeek-ssh-interesting-hostnames-with-known

This package requires zeek-known-hosts-with-dns.  You will also need comment
out ssh/interesting-hostnames from the default local.bro/local.zeek file.

Description:

The default ssh/interesting-hostnames policy does dns lookups for the source
host of every successful ssh authentication.  In our environment, the
majority of ssh connections are internal and, due to automation, there
are a lot of them.  This results in Zeek making thousands of
asynchronous when() calls for lookup_addr().

By replacing known-hosts with known-hosts-with-dns, we keep a running
table of local DNS lookups.  Combined with this policy, it can reduce
the DNS queries from our Zeek systems by over 99%.      

