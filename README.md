# Codam TDD Training Repository

Welcome to the **Codam Test-Driven Development (TDD) Training** repository! This project is designed to help Codam students master TDD, unit testing, and code reviews while progressing through key projects like **libft**, **Minishell**, and **Webserver**.

## **Purpose**

This repository provides resources, guides, and a collaborative environment to help you:

- Understand and apply Test-Driven Development (TDD).
- Break down complex problems into manageable pieces.
- Write effective unit tests and larger scope tests.
- Collaborate through GitHub workflows and code reviews.

By the end of this training, you will have developed solid programming habits and a deeper understanding of how to manage complexity using TDD.

---

## **What You’ll Learn**

### 1. **libft: Foundations**

- Writing unit tests for small functions.
- Setting up a project structure for testing.
- Understanding the principles of TDD.

### 2. **Minishell: Expanding Scope**

- Writing larger scope tests.
- Automating tests with GitHub Actions.
- Establishing and maintaining contracts between modules.

### 3. **Webserver: The Endgame**

- Building a full-scale project with TDD.
- Collaborating effectively with teammates.
- Writing End-to-End (E2E) tests for complex systems.

---

## **How to Use This Repository**

### **1. Clone the Repository**

```bash
$ git clone --recurse-submodules https://github.com/yourusername/Codam-TDD-Training.git
$ cd Codam-TDD-Training
```
Note the project uses git submodules for dependencies.
If you cloned without the `--recurse-submodules` option, you will need to run `git submodule update --init`.

### **2. Navigate to the Current Project**

Each project has its own folder:

- `libft/`
- `Minishell/`
- `Webserver/`

Start with `libft` and work your way up.

### **3. Follow the Training Materials**

Each project includes guides and examples in the `training-materials/` folder. For example:

- `TDD-Basics.md`: Learn the fundamentals of TDD.
- `Unit-Testing-Guide.md`: Step-by-step instructions for writing tests.
- `Sample-Test-Walkthrough.md`: A practical example to get you started.

### **4. Write and Test Your Code**

- Use the `tests/` folder in each project to write your tests.
- Run tests locally using your preferred tools or the provided Makefile.
  - As a one-time operation, to build the dependencies (the testing framework), run `make deps`.
  - Run `make test` to build and run your tests.

### **5. Collaborate Through GitHub**

- Push your code to your branch in the shared GitHub repository.
- Open a pull request for code reviews.
- Use feedback from code reviews to refine your code.

---

## **Code Reviews and Feedback**

To ensure continuous improvement:

- Submit your code for review on GitHub.
- Reviews will focus on your TDD approach, coding standards, and overall structure.
- Use the provided **Code Review Template** in the `feedback/templates/` folder to give and receive structured feedback.

---

## **Resources**

- Recommended Reading: [Recommended-Books.md](resources/Recommended-Books.md)
- Additional Learning: [Useful-Links.md](resources/Useful-Links.md)

---

## **Contributing**

We welcome contributions! If you want to suggest improvements or add resources:

- Follow the guidelines in [CONTRIBUTING.md](CONTRIBUTING.md).
- Open an issue or a pull request.

---

## **License**

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## **Contact**

For questions or support, feel free to open an issue or reach out directly via GitHub Discussions.

Let’s make this training a collaborative and impactful experience for everyone!

