cd $PSScriptRoot
cd ..

$compiler_name="clang"
$compiler="Clang"
$generator="Ninja"
if($args.count -gt 0)
{
    for ( $i = 0; $i -lt $args.count; $i++ ) {
        switch($args[$i])
        {
            "--clang" {
                $generator="Ninja"
                $compiler_name="clang"
                $compiler="Clang"
            }
            "--msvc" {
                $generator="Visual Studio 17 2022"
                $compiler_name="msvc"
                $compiler="cl.exe"
            }
        }
    } 
}

if (-not (Test-Path -LiteralPath ./build/))
{
    mkdir build > $null
}
if (-not (Test-Path -LiteralPath ./build/windows-$compiler_name)) {
    mkdir build/windows-$compiler_name > $null
    cd build/windows-$compiler_name
    cmake -G $generator -DCMAKE_C_COMPILER="$compiler" -DCMAKE_CXX_COMPILER="$compiler" ../..
    cd ../..
}

cd ./build/windows-$compiler_name
cmake --build . -j
$outcode = $LASTEXITCODE

if (Test-Path -LiteralPath compile_commands.json) {
    cp compile_commands.json ../..
}
cd ../..

exit $outcode