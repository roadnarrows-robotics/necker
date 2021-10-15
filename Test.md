# Workspace Validation Trope
Validate the workspace newly created by the **rnnew_workspace** tool by
executing the sequence of instructions listed below.

All steps are executed in a bash or simular POSIX shell. Also, the assumed
necker architecture is x86_64. Modify as needed.

If desired, view this markdown in a browser:
```sh
grip Test.md
```

**_quick validation_**:
```sh
cd /prj/necker
source env.sh
make deps
make all
make prefix=devel install
```

### 1. Change Working Directory
Change the current working directory to the workspace root directory.

```sh
cd /prj/necker
```

### 2. Set Package Development Environment
Source the workspace shell environment. This script exports package-specific
environment variables and fixes up execution paths to include the relevant
distribution paths for the default rnmake architecture `dist/dist.x86_64`.

```sh
source env.sh
```

### 3. Make Dependences
Dependency files are created in each source directory under the
directory `.deps/deps.x86_64`. 

**_make command_:**
```sh
make deps
```

### 4. Make the Distribution
The distribution is a created directoy tree containing built and copied files
targeted for distribution. Configuration and documentation are made during
this `make install` phase.

The distribution is built under `necker/dist/dist.x86_64/`.

Any compiled object files are locaated in each source directory
under `obj/obj.x86_64`.

The make default target is `all`, 

**_make command_:**
```sh
make
```

### 5. Install Package Locally.
Normally, the package would be installed to a system local directory path
such as 
* `~/xinstall` -  user's home cross-compiled location
* `/prj` -  multi-project location
* `/usr/local`, `/opt` - standard linux location (sudo required)

For our validation sequence, the install will be entirely contained within
the package area `/prj/necker/devel`.

**_make command_:**
```sh
make prefix=devel install
```

### 6. Unit Test Environment
The `env.sh` is used as a developemnt environment.
However we wish to validate to internal install in **Step 5**

**_export path fix-ups_**:
```sh
export PATH=/prj/necker/devel/bin:${PATH}
export LD_LIBRARY_PATH=/prj/necker/devel/lib/necker:${LD_LIBRARY_PATH}
export PYTHONPATH=/prj/necker/devel/lib/python3.8/site-packages:${PYTHONPATH}
```

### 6. Execute Compiled Programs
#### C Application
If you answered 'yes' to the "_include c application example_" question,
then the `stones` binary should have been built.
The program `stones` displays stone tool industries
perfected by our ancestors during the Pliocene, Pleistocene, and Holocene
epochs.

The program is linked to the package built c library `libpleistocene.so`.

**_to run_**:
```sh
stones -- help
stones --list-modes --list-tools
```

#### C++ Application
If you answered 'yes' to the "_include c++ application example_" question,
then the `clan` binary should have been built.
The program `clan` observes the daily lives of the 
cartoon cavemen and cavewomen of the **Clan of the Cave Cricket**.

The program is linked to the package built c library `libpleistocene.so`.

**_to run_**:
```sh
clan --help
clan 25
```

### 7. Python
If you answered 'yes' to the "_include python example_" question,
then python modules, with a `swig`ed c library `libpleistocene.so` interface,
should have been built.

Python 3 is the goto version.

#### Interactive
Start a python3 interactive shell.
```sh
python3
```

In the interactive python shell, try a few execution steps.

**_in python_:**
```python
# test swigged c interface
import necker.pleistocene.stone_tools as tech

# print lithic mode names and descriptions
for mode in range(0, tech.NUMOF_LITHIC_MODES):
  print(f"{tech.name_of_lithic_mode(mode):<20} "
        f"{tech.desc_of_lithic_mode(mode)}")

# pure python
import necker.pleistocene.sa_fauna as sa_fauna

# South American Pleistocene fauna
fauna = sa_fauna.populate()

for species in fauna:
  print(f"{species.binomial_name:<30} "
        f"{species.common_name:<30}"
        f"{species.geographic_distribution}")

# and more
from necker.whatever.termite_poppers import recipe
from pprint import pprint

pprint(recipe.ingredients)
pprint(recipe.instructions)
```

Exit the python shell.

### 8 Execute Scripts
#### Shell Script
Sing along with the clan.

**_to run_**:
```sh
ooga_chant.sh
```

#### Python Script
If the python modules are included, discover the exciting clan recipe of
charred mammoth.

**_to run_**:
```sh
mammoth_thigh.py
```

### 9. Documentation
Click [here](file:////prj/necker/devel/share/doc/necker-0.1.0/index.html) for 
documentation.

Or copy the following text into your browser.
```
file:////prj/necker/devel/share/doc/necker-0.1.0/index.html
```

### 10. Tarballs
Build compressed tar archives of the package development, source, documentation
trees.

**_make command_:**
```sh
make tarballs
```

The tarballs are located under `/prj/necker/dist/dist.x86_64/repo`. Tarballs are
not part of the local `make install` installation.

Archive | Description
------- | -----------
necker-0.1.0-doc.tar.gz | Package documentation.
necker-0.1.0-src.tar.gz | Package source tree.
necker-0.1.0.tar.gz | Package development distribution.

To view the contents of the source tar file:
```sh
tar tf /prj/necker/dist/dist.x86_64/repo/necker-0.1.0-src.tar.gz
```

To extract the binary tar archive into a directory:
```sh
tar xvzf /prj/necker/dist/dist.x86_64/repo/necker-0.1.0.tar.gz --directory=/your/fav/place
```

### 11. Debian Packages
Build Debian packages. Ideal format for sited PPA's (Personal Package Archive).

**_make command_:**
```sh
make dpkgs
```

The Debian packages are located under `/prj/necker/dist/dist.x86_64/repo`.
Deian packages are not part of the local `make install` installation.

Debian | Description
------- | -----------
necker-dev-0.1.0-amd64.deb | Development binaries.
necker-doc-0.1.0-amd64.deb | Package documentation.
necker-src-0.1.0.amd64.deb | Package source tree.

To view the information or contents of a Debian package:
```sh
dpkg --info /prj/necker/dist/dist.x86_64/repo/necker-dev-0.1.0-amd64.deb
dpkg --contents /prj/necker/dist/dist.x86_64/repo/necker-dev-0.1.0-amd64.deb
```
