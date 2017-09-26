% Inclass assignment 9
% The accession number for human NOTCH1 mRNA is AF308602
% 1. Read the information from this entry into matlab
accession='AF308602';
mData=getgenbank(accession);
% 2. Write code that runs a blast query on the first 500 base pairs of this
% gene against the refseq_rna database
start500=mData.Sequence([1:500]);
[requestID,requestTime]=blastncbi(start500,'blastn','Database','refseq_rna');
start500blastData=getblast(requestID,'WaitTime',requestTime)
% 3. Find the three highest scoring hits from other species and identify
% the length of the alignment and fraction of matches/mismatches.
start500blastData.Hits(2).HSPs(1)
length:500bp;
subjectindices[241,740];

start500blastData.Hits(3).HSPs(1)
length:500bp;
subjectindices[241,740];

start500blastData.Hits(4).HSPs(1)
length:500bp;
subjectindices[241,740];

%best 3 matches are all from chimpanzee, if we want three different species

start500blastData.Hits(6).HSPs(1)
length:500bp;
subjectindices[27,526];

start500blastData.Hits(7).HSPs(1)
length:500bp;
subjectindices[222,721];

% 4. Run the same query against the database est_human. Comment on the
% sequences that you find. 
[requestID,requestTime]=blastncbi(start500,'blastn','Database','est_human');
start500blastData2=getblast(requestID,'WaitTime',requestTime)

The score become lower because EST database is storing small segment of single read,
Which means this sequence is not a single read sequence.
