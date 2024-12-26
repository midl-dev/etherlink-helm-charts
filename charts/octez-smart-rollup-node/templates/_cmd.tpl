{{/*
# Default command
*/}}
{{- define "octez-smart-rollup-node.defaultCommand" -}}
{{- tpl .Values.defaultCommandTemplate . }}
{{- end }}

{{- define "octez-smart-rollup-node.defaultSnapshotDownloadCommand" -}}
{{- tpl .Values.initDownloadSnapshot.snapshotDownloadCmdTemplate . }}
{{- end }}

{{- define "octez-smart-rollup-node.defaultSnapshotImportCommand" -}}
{{- tpl .Values.initImportSnapshot.snapshotImportCmdTemplate . }}
{{- end }}
