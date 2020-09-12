# 失敗。動作しなかった。
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$(dirname "$HERE")";
#	export PATH_SURNAMES="$(dirname "$(dirname "$HERE")")/tsv/uniq_yk.tsv"
	export PATH_SURNAMES="$(dirname "$(dirname "$HERE")")/tsv/test.tsv"

	local YOMI="$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)"
	echo -e "$YOMI"
#	local CMD='awk -F "\t" '"'"'$1 == "'"@"'"'"'"'  | tr "\n" ","'
#	local CMD='echo -e "@" | awk -F "\t" '"'"'$1 == "'"@"'"'"'"'  | tr "\n" ","'
#	local CMD='echo -e "@" | awk -F "\t" '"'"'$1 == "'"@"'"'"'"' {print $2} | tr "\n" ","'
#	local CMD='awk -F "\t" '"'"'$1 == "'"@"'"'"'"' {print $2} | tr "\n" ","'
#j	local CMD='awk -F "\t" '"'"'$1 == "'"@"'"'"'"' {print $0} | tr "\n" ","'
#	local CMD="awk -F '\t' '\$1 == "@" {print \$2} | tr '\n' ','"
#	local CMD="awk -F '\t' '\$1 == "@" {print \$2}' | tr '\n' ','"
#	local CMD="awk -F '\t' '\$1 == \"@\" {print \$2}' | tr '\n' ','"
#	local CMD="cat $PATH_SURNAMES | awk -F '\t' '\$1 == \"@\" {print \$2}' | tr '\n' ','"
#	local CMD="cat \"$PATH_SURNAMES\" | awk -F '\t' '\$1 == \"@\" {print \$2}' | tr '\n' ','"
	local CMD="cat \"$PATH_SURNAMES\" | awk -F '\t' '\$1 == \"@\" {print \$2}' | tr '\n' ','"
	echo "$CMD"
#	local KAKI="$(echo -e "$YOMI" | xargs -I@ sh -c 'awk -F '\t' '$1 == "@" {print $2}' | tr "\n" ","')"
#	local KAKI="$(echo -e "$YOMI" | xargs -I@ sh -c "awk -F '\t' '\$1 == "@" {print \$2} | tr '\n' ','")"
	local KAKI="$(echo -e "$YOMI" | xargs -I@ sh -c "$CMD")"
	echo "$KAKI"
#	local KAKI="$(echo -e "$YOMI" | xargs -I@ sh -c "'""$CMD""'")"
#	local KAKI="$(echo -e "$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)" | xargs -I@ sh -c "'""$CMD""'")"
#	echo -e "$(cat "$PATH_SURNAMES" | cut -f1 | sort | uniq)" | xargs -I@ sh -c 'echo "@" | awk -F "\t" '"'"'$1 == "'"@"'"'"'"' {print $2} | tr "\n" ","'
	paste <(echo -e "$YOMI") <(echo -e "$KAKI")
}
Run "$@"
