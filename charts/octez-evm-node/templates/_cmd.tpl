{{/*
# Default command
*/}}
{{- define "octez-evm-node.defaultCommand" -}}
{{- tpl .Values.defaultCommandTemplate . }}
{{- end }}

{{- define "octez-evm-node.defaultSnapshotDownloadCommand" -}}
{{- tpl .Values.initDownloadSnapshot.snapshotDownloadCmdTemplate . }}
{{- end }}

{{- define "octez-evm-node.defaultSnapshotImportCommand" -}}
{{- tpl .Values.initImportSnapshot.snapshotImportCmdTemplate . }}
{{- end }}
