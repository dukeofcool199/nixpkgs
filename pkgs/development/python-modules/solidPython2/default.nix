{ lib
, stdenv
, buildPythonPackage
, fetchPypi
, pythonOlder
, ply
}:

buildPythonPackage rec {
  pname = "solidPython2";
  version = "2.0.0b2";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "3828fb41b7203176b82fe5d699e0d845435f2374750a44b480ea6b930f6be269";
  };

  propagatedBuildInputs = [
    ply
  ];

  meta = with lib; {
    description = "I library for building openscad models using python";
    license = licenses.asl20;
    homepage = "https://github.com/jeff-dh/SolidPython";
    maintainers = with maintainers; [ dukeofcool199 ];
  };
}
