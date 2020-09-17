import setuptools,subprocess,platform

if platform.system()=="Linux" and platform.machine()=="x86_64":
  subprocess.check_call(["./download.sh"])
else:
  raise OSError("spaCy-ixaKat only for 64-bit Linux")
packages=subprocess.check_output(["./packages.sh"]).decode("utf-8").rstrip().split("\n")

setuptools.setup(
  name="spacy_ixakat",
  version="0.1.0",
  packages=setuptools.find_packages(),
  package_data={"spacy_ixakat":packages},
  install_requires=["spacy>=2.2.2","deplacy>=1.5.3"]
)
