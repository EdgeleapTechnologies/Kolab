cd $PSScriptRoot
cd ..

$client_sources=get-ChildItem ./Client/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.cpp"}
$client_sources+=" "
$client_sources+=get-ChildItem ./Client/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.h"}
$client_sources+=" "
$client_sources+=get-ChildItem ./Client/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.hpp"}

$server_sources=get-ChildItem ./Server/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.cpp"}
$server_sources+=" "
$server_sources+=get-ChildItem ./Server/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.h"}
$server_sources+=" "
$server_sources+=get-ChildItem ./Server/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.hpp"}

$common_sources=get-ChildItem ./Common/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.cpp"}
$common_sources+=" "
$common_sources+=get-ChildItem ./Common/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.h"}
$common_sources+=" "
$common_sources+=get-ChildItem ./Common/ -recurse | Select-Object -Expand FullName | where {$_ -like "*.hpp"}

clang-tidy --config-file=.clang-tidy $client_sources
exit $LASTEXITCODE