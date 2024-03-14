{{/*
Expand the name of the chart.
*/}}
{{- define "affine-pro.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "affine-pro.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "affine-pro.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "affine-pro.labels" -}}
helm.sh/chart: {{ include "affine-pro.chart" . }}
{{ include "affine-pro.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "web-affine-pro.labels" -}}
app: web-affine-pro
helm.sh/chart: {{ include "affine-pro.chart" . }}
{{ include "affine-pro.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "redis-affine-pro.labels" -}}
app: redis-affine-pro
helm.sh/chart: {{ include "affine-pro.chart" . }}
{{ include "affine-pro.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "postgres-affine-pro.labels" -}}
app: postgres-affine-pro
helm.sh/chart: {{ include "affine-pro.chart" . }}
{{ include "affine-pro.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "affine-pro.selectorLabels" -}}
app.kubernetes.io/name: {{ include "affine-pro.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "web-affine-pro.selectorLabels" -}}
app.kubernetes.io/name: {{ include "affine-pro.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: web-affine-pro
{{- end }}

{{- define "redis-affine-pro.selectorLabels" -}}
app.kubernetes.io/name: {{ include "affine-pro.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: redis-affine-pro
{{- end }}

{{- define "postgres-affine-pro.selectorLabels" -}}
app.kubernetes.io/name: {{ include "affine-pro.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: postgres-affine-pro
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "affine-pro.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "affine-pro.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
