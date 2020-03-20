#! /usr/bin/env nextflow

params.inpath  = ''
params.outpath = ''
params.dtype   = ''
params.save    = ''
params.exp     = ''


process HDF5ParseMatrix {
    publishDir = "${params.outpath}"

    script:
        """ 
        python3 /root/main.py --inpath ${params.inpath} --outpath ${params.outpath} --dtype ${params.dtype} --save ${params.save} --exp ${params.exp}
        """ 
}
