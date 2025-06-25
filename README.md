# Hugo Blog with Devcontainers

A sample Hugo static website configured to work with VS Code development containers.

## Features

- Hugo static site generator with extended features
- PaperMod theme for modern, responsive design
- Development container support for consistent environments
- Sample content and posts
- Automatic port forwarding for development server

## Quick Start

### Using Devcontainers (Recommended)

1. **Prerequisites:**
   - VS Code with the Dev Containers extension
   - Docker Desktop

2. **Setup:**

   ```bash
   git clone <your-repo-url>
   cd hugoblog
   ```

3. **Open in VS Code:**

   ```bash
   code .
   ```

4. **Reopen in Container:**
   - VS Code will prompt you to "Reopen in Container"
   - Click "Reopen in Container" or use Command Palette: "Dev Containers: Reopen in Container"

5. **Install Theme:**

   ```bash
   git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
   ```

6. **Start Development Server:**

   ```bash
   hugo server -D
   ```

7. **View Site:**
   - Open <http://localhost:1313> in your browser
   - The site will automatically reload when you make changes

### Local Development (Without Devcontainers)

1. **Install Hugo:**
   - macOS: `brew install hugo`
   - Windows: `choco install hugo-extended`
   - Linux: Download from [Hugo releases](https://github.com/gohugoio/hugo/releases)

2. **Install Theme:**

   ```bash
   git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
   ```

3. **Start Development Server:**

   ```bash
   hugo server -D
   ```

## Project Structure

```
hugoblog/
├── .devcontainer/
│   └── devcontainer.json      # Development container configuration
├── content/
│   ├── posts/                 # Blog posts
│   ├── about.md              # About page
│   └── _index.md             # Homepage content
├── layouts/                   # Custom layouts (optional)
├── static/                    # Static assets
├── themes/                    # Hugo themes
└── hugo.toml                 # Hugo configuration
```

## Creating Content

### New Post

```bash
hugo new posts/my-new-post.md
```

### New Page

```bash
hugo new about.md
```

## Building for Production

```bash
hugo --minify
```

The built site will be in the `public/` directory.

## Customization

- Edit `hugo.toml` to customize site configuration
- Modify content in the `content/` directory
- Add custom CSS/JS in the `static/` directory
- Create custom layouts in the `layouts/` directory

## Theme Documentation

This site uses the PaperMod theme. For theme-specific configuration and features, see:

- [PaperMod Documentation](https://github.com/adityatelange/hugo-PaperMod/wiki)

## Deployment

This site can be deployed to various platforms:

- **Netlify:** Connect your Git repository for automatic deployments
- **Vercel:** Import your project for instant deployments
- **GitHub Pages:** Use GitHub Actions for automated builds
- **AWS S3:** Upload the `public/` folder to an S3 bucket

## License

This project is open source and available under the [MIT License](LICENSE).
