#!/bin/bash
# Only use if corp_phones1/corp_phones2 are missing — match your earlier lab data if different.
cat > corp_phones1 << 'EOF'
101:Anne Smith:Administration:4165551234:234
102:Bob Jones:Marketing:4165555678:567
103:Carol White:Sales:4165559012:901
104:David Brown:IT:4165553456:345
105:Eve Davis:HR:4165557890:789
EOF

cat > corp_phones2 << 'EOF'
101 Anne Smith Administration 4165551234 234
102 Bob Jones Marketing 4165555678 567
103 Carol White Sales 4165559012 901
104 David Brown IT 4165553456 345
105 Eve Davis HR 4165557890 789
EOF

echo "Created corp_phones1 (colon) and corp_phones2 (spaces)."
ls -l corp_phones1 corp_phones2
