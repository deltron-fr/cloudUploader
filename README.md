# Azure Blob Uploader CLI (Bash)

This is a lightweight Bash-based command-line tool that allows users to upload files to an Azure Blob Storage container using the Azure CLI.

---

## 🚀 What It Does

- Uploads a specified local file to a given Azure Blob container (`images` by default)
- Uses environment variables to keep credentials secure
- Validates file existence and arguments before upload

---

## 📂 Project Structure

```
├── .gitattributes
├── .gitignore # Ignores .env and other local files
├── README.md
└── file_uploader.sh # Main script to upload files
```


---

## ⚙️ Prerequisites

- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) installed and authenticated
- A storage account and container already created
- Blob container named `images` (or modify it in the script)
- `.env` file with your credentials (see below)

---

## 🔐 Environment Variables

Create a `.env` file in the root directory with the following format:

```env
AZURE_STORAGE_ACCOUNT=your_storage_account_name
AZURE_CONNECTION_STRING=your_connection_string
```
---

## 🛠️ How to Use

```bash
chmod +x file_uploader.sh

./file_uploader.sh /path/to/file.jpg uploaded_name.jpg
```

Example:

```bash
./file_uploader.sh ./images/photo.png photo-1.png
```

---

## 📝 To-Do (Planned Enhancements)

- Add logging or upload status feedback
- Add support for folders or batch upload


## License

[MIT](https://choosealicense.com/licenses/mit/)


