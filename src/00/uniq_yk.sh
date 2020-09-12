# 重複行を排除する。昇順に並べ替える。
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
#	export PATH_SURNAMES="$(dirname "$(dirname "$HERE")")/tsv/test.tsv"
	export PATH_SURNAMES="$(dirname "$(dirname "$HERE")")/tsv/surnames.tsv"
	cat "$PATH_SURNAMES" | sort | uniq > uniq_surnames.tsv
}
Run "$@"
