cd "$(dirname "$0")"
cd ..

python ./scripts/run-clang-format.py --style file -r Client Server Common --exclude ThirdParty