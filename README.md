# RStudio with Chinese Language Support
## Motivation

The default RStudio setup does not properly support Chinese characters, especially when generating plots with Chinese labels. This repository aims to solve the issue by providing a pre-configured Docker environment that enables RStudio to display Chinese characters correctly in both the UI and plots.

### Instructions

1. Building the Docker Image
To build the image, use the provided Dockerfile. Run the following command in the same directory as the Dockerfile:
`docker build -t rstudio-chinese .`
You can modify the Dockerfile if needed, such as adjusting environment variables or adding new packages.

2. Running with Docker Compose
To run the container, use the provided docker-compose.yml. If you want to customize the image or environment variables, you can modify the docker-compose.yml file. For example:

Change the image name under image:
Update the password in the environment: section
Then, run the following command:
`docker-compose up -d`
# 支持中文的 RStudio
## 動機

默認的 RStudio 設置在顯示中文字符時（特別是生成包含中文標籤的圖表）會出現問題。本倉庫提供了一個預配置的 Docker 環境，可以讓 RStudio 正確顯示中文字符，無論是在用戶界面還是圖表中。

### 使用說明

1. 建立 Docker images
建立images時，可以使用倉庫中的 Dockerfile。在與 Dockerfile 相同的目錄下運行以下命令：

`docker build -t rstudio-chinese .`
您可以根據需要修改 Dockerfile，例如調整環境變量或添加新的包。

2. 使用 Docker Compose 運行
要運行容器，可以使用倉庫中的 docker-compose.yml 文件。如果需要自定義images或環境變量，您可以修改 docker-compose.yml 文件。例如：

更改 image: 下的images名稱
更新 environment: 部分中的密碼
然後運行以下命令：
`docker-compose up -d`
