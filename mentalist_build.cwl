cwlVersion: v1.0
class: CommandLineTool
baseCommand: julia /tool/build_db.jl
inputs:
  output_filename:
    type: string
    inputBinding:
      position: 1
      prefix: -o
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
      glob: $(inputs.output_filename)