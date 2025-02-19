# cmake/projects/Example/hunter.cmake

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "1.1.4-hunter-1"
    URL
    "https://github.com/piribes/doctest/archive/1.1.4-hunter-1.tar.gz"
    SHA1
    684580f4cf1f40ca7750bea90facc4564a807c2a
)

hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "1.2.0"
    URL
    "https://github.com/onqtam/doctest/archive/1.2.0.tar.gz"
    SHA1
    53f87a422c7cc842d9b3e06d5a7eb7e35307e6ac
)

hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "2.2.0"
    URL
    "https://github.com/onqtam/doctest/archive/2.2.0.tar.gz"
    SHA1
    b8a16ca63ce7f263b84f3404db1500fcf2295488
)

hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "2.3.7"
    URL
    "https://github.com/onqtam/doctest/archive/2.3.7.tar.gz"
    SHA1
    0e64a63de97ec1a8f592563791904e995e80e122
)

hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "2.4.4"
    URL
    "https://github.com/onqtam/doctest/archive/2.4.4.tar.gz"
    SHA1
    d1baae099a165b231bb4fdd3637789f7465d873a
)

hunter_add_version(
    PACKAGE_NAME
    doctest
    VERSION
    "2.4.9"
    URL
    "https://github.com/doctest/doctest/archive/v2.4.9.tar.gz"
    SHA1
    9c2a6b805fb3d52a4eb0ea88da0f8b38cff4ebc0
)

hunter_cmake_args(doctest CMAKE_ARGS
    DOCTEST_SKIP_EXAMPLES=ON
    DOCTEST_SKIP_COVERAGE=ON
    DOCTEST_WITH_TESTS=OFF
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(doctest)
hunter_download(PACKAGE_NAME doctest)
