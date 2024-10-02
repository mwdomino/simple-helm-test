{{/*
Generate the full name of the resource.
*/}}
{{- define "my-nginx-chart.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart.
*/}}
{{- define "my-nginx-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
