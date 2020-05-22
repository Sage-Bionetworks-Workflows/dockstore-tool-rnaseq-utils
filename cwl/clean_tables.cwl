$namespaces:
  sbg: https://www.sevenbridges.com
baseCommand:
- clean_tables.py
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerPull: sagebionetworks/dockstore-tool-rnaseq-utils:0.0.1
id: clean_tables
inputs:
- id: count_table
  type: File
- id: star_table
  type: File
- id: metric_table
  type: File
- id: provenance_csv
  type: File
label: clean_tables.cwl
outputs:
- id: clean_counts
  outputBinding:
    glob: gene_all_counts_matrix_clean.txt
  type: File
- id: clean_log
  outputBinding:
    glob: Star_Log_Merged_clean.txt
  type: File
- id: clean_metrics
  outputBinding:
    glob: Study_all_metrics_matrix_clean.txt
  type: File
requirements:
- class: InitialWorkDirRequirement
  listing:
  - $(inputs.count_table)
  - $(inputs.star_table)
  - $(inputs.metric_table)
  - $(inputs.provenance_csv)
