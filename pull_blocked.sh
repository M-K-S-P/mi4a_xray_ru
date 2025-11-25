#!/usr/bin/env bash
# currently unused
set -e

OUTDIR=./out
mkdir -p $OUTDIR

curl -s 'https://raw.githubusercontent.com/schrebra/Windows.10.DNS.Block.List/main/hosts' -o $OUTDIR/blocked_community.txt

curl -s "https://api.ooni.io/api/v1/measurements?probe_cc=RU&confirmed=true&test_name=web_connectivity" \
  | jq -r '.results[].input' | sort -u > $OUTDIR/ooni_blocked.txt

cat $OUTDIR/blocked_community.txt $OUTDIR/ooni_blocked.txt | sed '/^$/d' | sort -u > $OUTDIR/combined_domains.txt

# while read -r d; do
#   ips=$(dig +short "$d" | tr '\n' ' ' )
#   echo -e "$d\t$ips"
# done < $OUTDIR/combined_domains.txt > $OUTDIR/domains_with_ips.tsv
#
# cp $OUTDIR/domains_with_ips.tsv /var/www/html/russia-blocked-domains.tsv

