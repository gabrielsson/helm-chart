{{/*
Common labels
*/}}
{{- define "pizza-menu.labels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
helm.sh/chart: {{ .Release.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
