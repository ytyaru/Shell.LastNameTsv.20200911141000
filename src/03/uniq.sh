# 重複行を排除する
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
	export PATH_SURNAMES="$PARENT/00/surnames.tsv"
#	export PATH_SURNAMES="$PARENT/00/test.tsv"
	cat "$PATH_SURNAMES" | sort | uniq > uniq_surnames.tsv
}
Run "$@"
