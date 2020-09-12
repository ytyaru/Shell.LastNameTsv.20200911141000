# 出力項目は「読み」だけである。一意である。昇順である。
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	export PATH_SURNAMES="$(dirname "$(dirname "$HERE")")/tsv/uniq_yk.tsv"
	local YOMI="$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)"
	echo -e "$YOMI" > uniq_y.tsv
}
Run "$@"
