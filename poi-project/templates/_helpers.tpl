{{- define "validate.resources" -}}
{{- if and .Values.resources.requests.memory (gt (int (regexReplaceAll "Mi" .Values.resources.requests.memory "")) 400) }}
  {{ fail "requests.memory cannot be greater than the fixed limit of 400Mi" }}
{{- end }}
{{- if and .Values.resources.requests.cpu (gt (int (regexReplaceAll "m" .Values.resources.requests.cpu "")) 200) }}
  {{ fail "requests.cpu cannot be greater than the fixed limit of 200m" }}
{{- end }}
{{- end }}

