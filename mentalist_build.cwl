cwlVersion: v1.0
class: CommandLineTool
baseCommand: julia /tools/MentaLiST/src/MentaLiST.jl build_db
inputs:
  kmer_database:
    type: string
    inputBinding:
      position: 1
      prefix: --db
  kmer_size:
    type: int
    inputBinding:
      position: 2
      prefix: -k
      separate: true
  input_fastas:
    type: string[]
    inputBinding:
      position: 3
      itemSeparator: " "
outputs:
  kmer_db:
    type: File
    outputBinding:
      glob: $(inputs.kmer_database)
