{{/*
# Default command
*/}}
{{- define "octez-node.defaultCommand" -}}
{{- tpl .Values.defaultCommandTemplate . }}
{{- end }}

{{- define "octez-node.defaultSnapshotDownloadCommand" -}}
{{- tpl .Values.initDownloadSnapshot.snapshotDownloadCmdTemplate . }}
{{- end }}

{{- define "octez-node.defaultSnapshotImportCommand" -}}
{{- tpl .Values.initImportSnapshot.snapshotImportCmdTemplate . }}
{{- end }}
