# 「読み」が同じ行の「表記」を1行カンマ区切り形式にする
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	export PATH_SURNAMES="$PARENT/00/surnames.tsv"
#	export PATH_SURNAMES="$PARENT/00/test.tsv"

	YOMI_KAKI=()
	DATA="$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)"
	while read line; do
		KAKI="$(cat "$PATH_SURNAMES" | awk -F "\t" '$1 == "'"$line"'" {print $2}' | sort | uniq | tr '\n' ',')"
		YOMI_KAKI+=( "${line}\t${KAKI%,}" )
		echo -e "${line}\t${KAKI%,}"
	done <<-END
		$DATA
	END

	RESULT="$(IFS=$'\n'; echo "${YOMI_KAKI[*]}")"
	echo -e "$RESULT" > union_yk_surnames.tsv
}
Run "$@"
