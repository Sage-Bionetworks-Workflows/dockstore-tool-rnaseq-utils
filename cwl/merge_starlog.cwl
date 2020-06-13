$namespaces:
  sbg: https://www.sevenbridges.com
baseCommand:
- starmerge.py
class: CommandLineTool
cwlVersion: v1.0
id: merge_starlog
inputs:
- id: logs
  inputBinding:
    position: 1
  type: File[]
label: merge_starlog
outputs:
- id: starlog_merged
  outputBinding:
    glob: '*Merged.txt'
  type: File
requirements:
- class: DockerRequirement
  dockerPull: sagebionetworks/dockstore-tool-rnaseq-utils:0.0.2-74346a4
- class: InlineJavascriptRequirement
