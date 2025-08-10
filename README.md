
````markdown
# 🚀 GitHub Daily Contribution Checker

👋 Hi! I'm **Shayan Taherkhani** ([@shayanthn](https://github.com/shayanthn)) —  
A passionate AI & Computational Biology researcher.  
🌐 [shayantaherkhani.ir](https://shayantaherkhani.ir/)

---

## 🧰 What is this?

This Python script helps you **check your GitHub daily contribution count** using the [GitHub GraphQL API](https://docs.github.com/en/graphql).  
It's a handy tool to keep track of your **commit streak** and never miss a contribution day! 🔥

---

## ⚙️ Features

- ✅ Fetches your total contributions for the current day (UTC)
- ⚠️ Warns you if you have zero contributions today and shows time remaining to reset ⏳
- 🔐 Uses environment variables for secure token management
- 🧪 Supports mock testing mode for development

---

## 🚦 Prerequisites

- Python 3.x  
- [Requests library](https://pypi.org/project/requests/) (`pip install requests`)  
- [python-dotenv](https://pypi.org/project/python-dotenv/) (`pip install python-dotenv`)

---

## 🔧 Setup

1. **Clone the repo** or copy the script.

2. **Create a `.env` file** based on `.env.example` with your credentials:

```env
GITHUB_USERNAME=your_github_username
GITHUB_PAT=your_github_personal_access_token
MOCK_CONTRIBUTIONS= # optional: set to "10" to test mock mode
````

> **Note:** You can create a [GitHub Personal Access Token (PAT)](https://github.com/settings/tokens) with minimal scopes like `read:user` and `repo`.

---

## 🚀 How to run

```bash
python your_script_name.py
```

It will print your today's contribution count and give you alerts if needed! 🎉

---

## 🛠️ How it works (brief)

* Uses GitHub GraphQL API
* Queries the contribution calendar for the UTC day
* Displays the number of commits, PRs, and other contributions
* Calculates time left to reset your daily contributions

---

## 🖼️ Screenshot

![Contribution Checker](./contribution_checker_screenshot.png)

---

## 🤝 Contribution

Feel free to open issues or suggest improvements! Pull Requests are very welcome.
Let's keep our GitHub streaks alive and thriving! 💪🔥

---

## 📬 Contact

👤 **Shayan Taherkhani**
🌐 [shayantaherkhani.ir](https://shayantaherkhani.ir/)
🐙 [GitHub: @shayanthn](https://github.com/shayanthn)

---

**Made with 💙 and ☕️ by Shayan Taherkhani**

---

> *"Keep coding, keep contributing!"* 🚀

```
