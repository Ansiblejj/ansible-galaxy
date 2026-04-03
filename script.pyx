def generate_rpm_spec(name="my-custom-tool", version="1.0"):
    spec = f"""
Name:           {name}
Version:        {version}
Release:        1%{{?dist}}
Summary:        Custom Python script for Arista EOS
License:        MIT
BuildArch:      noarch

%description
This is a custom script packaged for Arista EOS.

%install
mkdir -p %{{buildroot}}/usr/bin/
cp %{{_sourcedir}}/my_script.py %{{buildroot}}/usr/bin/my_script

%files
/usr/bin/my_script
"""
    return spec

def generate_manifest():
    manifest = """
metadataVersion: "1.0"
# Compatibility: install on any EOS version
version:
  - "*":
    - my-custom-tool-1.0-1.noarch.rpm
agentsToRestart:
  - ConfigAgent
"""
    return manifest

print("--- RPM Spec Template ---")
print(generate_rpm_spec())
print("\\n--- SWIX Manifest Template ---")
print(generate_manifest())
