#!/bin/bash
#PBS -joe
START=$(date +%s)
NAME='AA'
OUTPUTN='output.out'
gpuexec='../../src/codeml'
cd $PBS_O_WORKDIR
cd benchmarks/${NAME}
`${gpuexec}`>& ${OUTPUTN}
END=$(date +%s)
DIFF=$(( $END - $START ))
gpuOutput=`md5sum output.out`
cpuOutput=`md5sum ../${NAME}_Au/output.out`
echo 'Took ${DIFF} time' >> ${OUTPUTN}
echo 'GPU result ${gpuOutput}' >> ${OUTPUTN}
echo 'CPU result ${cpuOutput}' >> ${OUTPUTN}
