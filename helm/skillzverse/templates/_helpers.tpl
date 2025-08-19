{{- define "skillzverse.name" -}}
skillzverse
{{- end }}

{{- define "skillzverse.fullname" -}}
{{ .Release.Name }}-{{ include "skillzverse.name" . }}
{{- end }}
