class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com'
id: merge_starlog
baseCommand:
  - starmerge.py
inputs:
  - id: logs
    type: 'File[]'
    inputBinding:
      position: 1
outputs:
  - id: starlog_merged
    type: File
    outputBinding:
      glob: '*Merged.txt'
label: merge_starlog
requirements:
  - class: DockerRequirement
    dockerPull: 'sagebionetworks/dockstore-tool-rnaseq-utils:0.0.0'
  - class: InlineJavascriptRequirement
