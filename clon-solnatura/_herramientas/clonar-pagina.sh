#!/usr/bin/env bash
# Clona una pagina web completa (HTML+CSS+imagenes+fuentes+JS) a una carpeta offline.
# Uso:  bash clonar-pagina.sh "https://solnatura.co/ALGUNA-PAGINA/"  "carpeta-destino"
# Requiere: curl y perl (vienen con Git Bash en Windows).
set -u
URL="$1"; OUT="$2"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/120 Safari/537.36"
HOST=$(printf '%s' "$URL" | sed -E 's#https?://([^/]+).*#\1#')
mkdir -p "$OUT/assets"; MAP="$OUT/.map.txt"; MAPC="$OUT/.mapc.txt"; : >"$MAP"; : >"$MAPC"

slug(){ local u="${1%%\?*}" e="${1##*.}"; e="${e%%\?*}"; e="${e,,}"
  local b=$(printf '%s' "$u"|sed -E 's#https?://##; s#[^A-Za-z0-9]+#_#g'); printf '%s.%s' "${b:0:80}" "$e"; }
dl(){ [ -f "$OUT/assets/$2" ] && return; curl -sL -A "$UA" -e "$URL" "$1" -o "$OUT/assets/$2"; }
resolve(){ case "$2" in http*)printf '%s' "$2";; //*)printf 'https:%s' "$2";; /*)printf 'https://%s%s' "$HOST" "$2";;
  *) local p="${1%/*}/$2"; while [[ "$p" == *"/../"* ]]; do p=$(printf '%s' "$p"|sed -E 's#/[^/]+/\.\./#/#'); done; printf '%s' "$p";; esac; }

echo ">> HTML"; curl -sL -A "$UA" "$URL" -o "$OUT/index.html"
grep -oE "https://$HOST/[^\"')> ]+\.(css|png|jpe?g|svg|webp|gif|woff2?|ttf|otf|ico|js)" "$OUT/index.html"|sort -u > "$OUT/.a.txt"
while read -r u; do [ -z "$u" ]&&continue; n=$(slug "$u"); dl "$u" "$n"; echo "$u|$n">>"$MAP"; done < "$OUT/.a.txt"
# escanear CSS por url() internos
grep '|' "$MAP"|grep '\.css|'|while IFS='|' read -r cu cn; do f="$OUT/assets/$cn"; [ -f "$f" ]||continue
  grep -oE "url\(([^)]+)\)" "$f"|sed -E "s#url\(##;s#\)##;s#[\"']##g"|while read -r r; do case "$r" in data:*|"")continue;; esac
    a=$(resolve "$cu" "$r"); n=$(slug "$a"); dl "$a" "$n"; echo "$r|$n">>"$MAPC"; done; done
echo ">> Reescribiendo (perl, 1 pasada)"
perl - "$OUT" "$HOST" <<'PL'
use strict; use warnings; my($dir,$host)=@ARGV; my(%h,%c);
open(my $m,'<',"$dir/.map.txt"); while(<$m>){chomp;my($u,$n)=split/\|/;$h{$u}=$n if $u&&$n} close $m;
if(-f "$dir/.mapc.txt"){open(my $x,'<',"$dir/.mapc.txt");while(<$x>){chomp;my($r,$n)=split/\|/;$c{$r}=$n if defined $r&&$r ne''&&$n}close $x}
sub rw{my($f,$ref)=@_;local $/;open(my $i,'<',$f)or return;my $t=<$i>;close $i;
  for my $k (sort{length($b)<=>length($a)} keys %$ref){my $v=$ref==\%h?"assets/$ref->{$k}":$ref->{$k};$t=~s/\Q$k\E/$v/g}
  if($ref==\%h){$t=~s{(assets/[A-Za-z0-9_\-]+\.[A-Za-z0-9]+)\?[^"'\s>)]*}{$1}g}
  open(my $o,'>',$f);print $o $t;close $o}
rw("$dir/index.html",\%h);
opendir(my $d,"$dir/assets");my @css=grep{/\.css$/}readdir($d);closedir $d;
rw("$dir/assets/$_",\%c) for @css;
# limpiar referencias internas de degradados SVG mal-reescritas -> solo el fragmento #
for my $f (@css){local $/;open(my $i,'<',"$dir/assets/$f")or next;my $t=<$i>;close $i;
  $t=~s{url\(([^)]*#)?([Dd]egradado[^)]*)\)}{url(#$2)}g;
  open(my $o,'>',"$dir/assets/$f");print $o $t;close $o;}
PL
rm -f "$OUT/.a.txt" "$MAP" "$MAPC"
echo ">> Listo: $(ls "$OUT/assets"|wc -l) assets en $OUT"
