#!/bin/bash
set -e  # If not interactive, exit immediately if any untested command fails.
cd $(dirname $0)
[ -e test ] && rm -r test
oj download http://yukicoder.me/problems/no/400
diff <(md5sum test/sample-*) - <<EOF
04b3f6b553cb51fcc486e0a8888c79eb  test/sample-1.in
3e1ce07401b37846f4d6aab1efbe771b  test/sample-1.out
60650122d9941f5b816451ca15d9eff9  test/sample-2.in
90e2a41ae5ea1f30688dcf72ba806b17  test/sample-2.out
9c9eb7aca96d568294f752ecd6867cbe  test/sample-3.in
9c9eb7aca96d568294f752ecd6867cbe  test/sample-3.out
787786577e5cb219fd38409b5cb7b933  test/sample-4.in
60f3f85857568779dbd10bc4fc506f35  test/sample-4.out
EOF
