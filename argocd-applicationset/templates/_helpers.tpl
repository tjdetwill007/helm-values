{{- define "applicationset.namespace" -}}
{{- .namespace | default .root.Values.defaultNamespace | default "argo-cd" -}}
{{- end -}}

{{- define "applicationset.gitRepoURL" -}}
{{- if .git -}}
    {{- .git.repoURL | default .root.Values.defaultGit.repoURL | default "None" -}}
{{- else -}}
    {{- .root.Values.defaultGit.repoURL -}}
{{- end -}}
{{- end -}}

{{- define "applicationset.gitRevision" -}}
{{- if .git -}}
    {{- .git.revision | default .root.Values.defaultGit.revision | default "main" -}}
{{- else -}}
    {{- .root.Values.defaultGit.revision | default "main" -}}
{{- end -}}
{{- end -}}

{{- define "applicationset.destinationServer" -}}
{{- if .destination -}}
    {{- .destination.server | default .root.Values.defaultSettings.destination.server | default "https://kubernetes.default.svc" -}}
{{- else -}}
    {{- .root.Values.defaultSettings.destination.server | default "https://kubernetes.default.svc" -}}
{{- end -}}
{{- end -}}

