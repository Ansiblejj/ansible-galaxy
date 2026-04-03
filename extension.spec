Name:           my-custom-tool
Version:        1.0
Release:        1
Summary:        My custom Python automation script for EOS
License:        MIT
BuildArch:      noarch

%description
This script automates custom checks on Arista switches.

%install
# Create the directory and copy your script
mkdir -p %{buildroot}/usr/bin/
cp %{_sourcedir}/my_script.py %{buildroot}/usr/bin/my-check-tool
chmod +x %{buildroot}/usr/bin/my-check-tool

%files
/usr/bin/my-check-tool
