packages=(route_manager rbac_server project_manager vcms_admin)

for package in "${packages[@]}"; do
  cd "$(dirname "$0")"/"$package" || exit
  tars2go -outdir ../ -module github.com/tars-vcms/vcms-protocol/"$package" ./"$package".tars
done
