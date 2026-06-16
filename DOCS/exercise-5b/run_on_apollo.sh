#!/bin/bash
# Run AFTER you SSH into apollo.humber.ca manually.
# Saves full session to exercise5b_session.log — copy sections into Word or run build_word.ps1 on Windows.

LOG=exercise5b_session.log
exec > >(tee "$LOG") 2>&1

section() { echo ""; echo "========== $1 =========="; echo "$2"; eval "$2"; }

cd ~
mkdir -p CPAN133Assignments/Exercise5b
cd CPAN133Assignments/Exercise5b

section "SETUP" "pwd"

section "1 - find /home -name file1" "find /home -name file1 2>&1"

section "2 - ls corp_phones" "ls -l corp_phones1 corp_phones2 2>&1 || true"

CORP1=$(find ~ -maxdepth 5 -name 'corp_phones1' 2>/dev/null | head -1)
CORP2=$(find ~ -maxdepth 5 -name 'corp_phones2' 2>/dev/null | head -1)
[ -n "$CORP1" ] && [ ! -f corp_phones1 ] && cp "$CORP1" .
[ -n "$CORP2" ] && [ ! -f corp_phones2 ] && cp "$CORP2" .

if [ ! -f corp_phones1 ] || [ ! -f corp_phones2 ]; then
  bash setup_corp_phones.sh
fi

section "2 - sort -t: -k 4 corp_phones1" "sort -t: -k 4 corp_phones1"
section "2 - sort -t: -k 5 corp_phones1" "sort -t: -k 5 corp_phones1"
section "2 - sort -k 4 corp_phones2" "sort -k 4 corp_phones2"
section "2 - sort -k 5 corp_phones2" "sort -k 5 corp_phones2"
section "2 - sort -o sorted_phones" "sort -t: -k 5 -o sorted_phones corp_phones1; echo '(written to sorted_phones)'; cat sorted_phones"

cd ~
section "3 - cd ." "pwd; cd .; pwd"
section "3 - cd .. twice" "cd ~; pwd; cd ..; pwd; cd ..; pwd"

section "4 - who" "who > current_users; cat current_users"

echo ""
echo "Done. Log saved: $LOG"
