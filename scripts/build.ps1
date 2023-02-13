cd $PSScriptRoot
cd ..

$compiler_name="clang"
$compiler="Clang"
if (-not (Test-Path -LiteralPath ./build/windows-$compiler_name)) {
    mkdir build
    mkdir build/windows-$compiler_name
    cd build/windows-$compiler_name
    cmake -G Ninja -DCMAKE_C_COMPILER="$compiler" -DCMAKE_CXX_COMPILER="$compiler" ../..
    cd ../..
}

cd ./build/windows-$compiler_name
cmake --build .
$outcode = $LASTEXITCODE

if (Test-Path -LiteralPath compile_commands.json) {
    cp compile_commands.json ../..
}
cd ../..

exit $outcode