create stream cfdp_in(gentime TIMESTAMP, entityId long, seqNum int, pdu binary)
create stream cfdp_out(gentime TIMESTAMP, entityId long, seqNum int, pdu binary)
insert into cfdp_tc select gentime, 'cfdp-service' as origin, seqNum, '/cfdp/cfdp_pdu' as cmdName, pdu as binary from cfdp_out