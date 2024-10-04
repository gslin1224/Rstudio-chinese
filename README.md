# RStudio with Chinese Language Support

## English Instructions

### Running with Docker Compose

To run the container, simply use the provided `docker-compose.yml` file. There is no need to manually build the image, as the pre-configured image is already available for use.

If you want to customize the image or environment variables, you can modify the `docker-compose.yml` file:

- Change the image name under `image:`.
- Update the password in the `environment:` section.

To start the container, run:

```sh
docker-compose up -d
```

This command will start the RStudio container with proper Chinese language support out-of-the-box.

### Building with Dockerfile

If you prefer to build the Docker image manually using the Dockerfile, follow these steps:

1. **Build the Docker Image**

   Navigate to the directory containing the Dockerfile and run the following command to build the Docker image:

   ```sh
   docker build -t custom-rstudio-chinese .
   ```

2. **Run the Docker Container**

   Once the image is built, you can run the container with the following command:

   ```sh
   docker run -d -p 8787:8787 -e PASSWORD=password -e LANG=zh_TW.UTF-8 -e LC_ALL=zh_TW.UTF-8 --name rstudio_server_chinese custom-rstudio-chinese
   ```

   This will start the RStudio server container, using the custom-built image with proper Chinese language support.

---

## 中文說明

### 使用 Docker Compose 運行

要運行容器，只需使用倉庫中提供的 `docker-compose.yml` 文件。無需手動構建鏡像，因為預配置的鏡像已可供使用。

如果需要自定義鏡像或環境變量，您可以修改 `docker-compose.yml` 文件：

- 更改 `image:` 下的鏡像名稱。
- 更新 `environment:` 部分中的密碼。

運行以下命令來啟動容器：

```sh
docker-compose up -d
```

這個命令將啟動一個開箱即用、具備正確中文支持的 RStudio 容器。

### 使用 Dockerfile 構建

如果您更喜歡使用 Dockerfile 手動構建 Docker 鏡像，請按照以下步驟進行：

1. **構建 Docker 鏡像**

   進入包含 Dockerfile 的目錄，並運行以下命令來構建 Docker 鏡像：

   ```sh
   docker build -t custom-rstudio-chinese .
   ```

2. **運行 Docker 容器**

   鏡像構建完成後，您可以使用以下命令來運行容器：

   ```sh
   docker run -d -p 8787:8787 -e PASSWORD=password -e LANG=zh_TW.UTF-8 -e LC_ALL=zh_TW.UTF-8 --name rstudio_server_chinese custom-rstudio-chinese
   ```

   這將使用自定義構建的鏡像啟動 RStudio 服務器容器，具備正確的中文支持。
