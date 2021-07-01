# @TEST-EXEC: zeek -C -r $TRACES/known_host_test.pcap %INPUT
# @TEST-EXEC: zeek-cut id.orig_h id.resp_h < conn.log > conn.tmp && mv conn.tmp conn.log
# @TEST-EXEC: btest-diff conn.log

# Since this script relies on DNS responses, basically all we can really
# do is make sure the script loads successfully and Zeek runs.  
