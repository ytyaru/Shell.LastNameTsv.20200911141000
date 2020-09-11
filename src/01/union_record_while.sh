# 「読み」が同じ行の「表記」を1行カンマ区切り形式にする
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	export PATH_SURNAMES="$HERE/surnames.tsv"
#	export PATH_SURNAMES="$HERE/test.tsv"

	YOMI_KAKI=()
	DATA="$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)"
	while read line; do
		KAKI="$(cat "$PATH_SURNAMES" | awk -F "\t" '$1 == "'"$line"'" {print $2}' | tr '\n' ',')"
		YOMI_KAKI+=( "${line}\t${KAKI%,}" )
		echo -e "${line}\t${KAKI%,}"
	done <<-END
		$DATA
	END
#	local CMD='echo "@" | awk -F "\t" '"'"'$1 == "'"@"'"'"'"' {print $2} | tr "\n" ","'
#	echo -e "$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)" | xargs -I@ sh -c "'""$CMD""'"
#	echo -e "$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)" | xargs -I@ sh -c 'echo "@" | awk -F "\t" '"'"'$1 == "'"@"'"'"'"' {print $2} | tr "\n" ","'

	RESULT="$(IFS="\n"; echo "${YOMI_KAKI[*]}")"
	echo -e "$RESULT" > union_yk_surnames.tsv
}
Run "$@"
