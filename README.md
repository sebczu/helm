### **HELM**

#### 1. Build image
```bash
docker build -t sebczu/personal:helm-0.0.1 service
```

#### 2. Docker-compose run container
```bash
docker-compose -f docker/docker-compose.yml up
```

#### 3. Docker run container
```bash
docker run -it \
-e "CREDENTIAL={CREDENTIAL}" \
sebczu/personal:helm-0.0.1
```

#### 4. Docker run container (interactive mode)
```bash
docker run -it \
-e "CREDENTIAL={CREDENTIAL}" \
sebczu/personal:helm-0.0.1 \
/bin/bash
```

#### 5. Remove chart from repository
```bash
docker run -it \
-e "CREDENTIAL={CREDENTIAL}" \
sebczu/personal:helm-0.0.1 \
/bin/bash

./clone-repository.sh
cd helm-charts/
rm -f CHART_NAME.tgz
helm repo index .
git add .
git commit -m "Update helm charts"
git push -u origin master
```