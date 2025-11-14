import subprocess

subprocess.call(["build.sh"], shell=True)
subprocess.call("streamlit run src/main.py", shell=True)
