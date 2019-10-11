{{/*
Expand the name of the chart.
*/}}
{{- define "pizza-menu.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "pizza-menu.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "pizza-menu.labels" -}}
app.kubernetes.io/name: {{ include "pizza-menu.name" . }}
helm.sh/chart: {{ include "pizza-menu.chart" . }}
app.kubernetes.io/instance: {{ include "pizza-menu.name" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
