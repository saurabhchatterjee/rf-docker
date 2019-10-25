FROM robotframework/rfdocker:latest
ENV DEPS="\
    firefox-esr \
    chromium \
    chromium-chromedriver \
"

COPY requirements.txt /tmp/requirements.txt
RUN apk update ;\
    apk add --no-cache ${DEPS} ;\
    pip install --no-cache-dir -r /tmp/requirements.txt ;\
    # Install geckodriver
    wget -q https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz ;\
    tar -C /usr/bin/ -xf geckodriver-*.tar.gz ;\
    # Chrome requires docker to have cap_add: SYS_ADMIN if sandbox is on.
    # Disabling sandbox and gpu as default.
    sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox',\ '--disable-gpu'\]/" $(python -c "import site; print(site.getsitepackages()[0])")/selenium/webdriver/chrome/options.py ;\
    # Cleanup
    rm -rf /var/cache/apk/* /tmp/requirements.txt /geckodriver-*.tar.gz
