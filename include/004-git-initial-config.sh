git config --global user.name 'Etunimi Sukunimi'
git config --global user.email 'user@example.net'
for n in branch diff grep interactive status ui; do
  git config --global "color.$n" auto
done
