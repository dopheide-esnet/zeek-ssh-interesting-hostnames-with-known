# @TEST-EXEC: bro -C -r $TRACES/known_host_test.pcap %INPUT
# @TEST-EXEC: bro-cut id.orig_h id.resp_h < conn.log > conn.tmp && mv conn.tmp conn.log
# @TEST-EXEC: btest-diff conn.log
