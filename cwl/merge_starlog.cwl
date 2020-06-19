$namespaces:
  s: https://schema.org/
s:author:
  - class: s:Person
    s:identifier: https://orcid.org/0000-0002-3659-9663
    s:email: mailto:william.poehlman@sagebase.org
    s:name: William Poehlman
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
  dockerPull: sagebionetworks/dockstore-tool-rnaseq-utils:0.0.3
- class: InlineJavascriptRequirement
