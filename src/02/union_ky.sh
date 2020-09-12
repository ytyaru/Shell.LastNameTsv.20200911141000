# 「読み」が同じ行の「表記」を1行カンマ区切り形式にする
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	export PATH_SURNAMES="$(dirname "$(dirname "$HERE")")/tsv/uniq_yk.tsv"

	KAKI_YOMI=()
	# 同じ表記で異なる読みが2つ以上存在する表記を取得する
	DATA="$(cat "$PATH_SURNAMES" | awk -F "\t" 'a[$2]++ {print $2}' | sort | uniq)"
	while read line; do
		YOMI="$(cat "$PATH_SURNAMES" | awk -F "\t" '$2 == "'"$line"'" {print $1}' | sort | uniq | tr '\n' ',')"
		KAKI_YOMI+=( "${line}\t${YOMI%,}" )
		echo -e "${line}\t${YOMI%,}"
	done <<-END
		$DATA
	END

	RESULT="$(IFS=$'\n'; echo "${KAKI_YOMI[*]}")"
	echo -e "$RESULT" > union_ky.tsv
}
Run "$@"
