# AsyncAPI Generator - Quick Start Guide

## ✅ Setup Complete!

Your AsyncAPI Generator is now set up and ready to use.

## 🔧 Environment Setup

**Node.js Version:** v24.13.0  
**npm Version:** 11.6.2

### Switching to the Correct Node Version

Before working with the generator, always ensure you're using Node.js 24:

```bash
# Load nvm and switch to Node.js 24
source ~/.nvm/nvm.sh && nvm use 24

# Or use the setup script
./setup.sh
```

## 📦 What is AsyncAPI Generator?

The AsyncAPI Generator is a powerful tool that generates code, documentation, and configurations from AsyncAPI specification files. It uses templates to define what gets generated.

### Key Features:
- Generate HTML documentation, Markdown files, and interactive API docs
- Generate client libraries for various languages (Node.js, Java, Python, Go, .NET, PHP)
- Generate boilerplate code for microservices
- Extensible with custom templates
- React-based render engine

## 🚀 Common Commands

### Build the Project
```bash
source ~/.nvm/nvm.sh && nvm use 24
npm run build
```

### Run Tests
```bash
# All tests
npm test

# Unit tests only
npm run generator:test:unit

# Integration tests only
npm run generator:test:integration
```

### Lint Code
```bash
npm run lint

# Auto-fix linting issues
npm run lint:fix
```

### Generate Documentation
```bash
npm run generator:docs
```

## 🎯 Using the Generator

### Basic Usage

Generate output from an AsyncAPI document:

```bash
cd apps/generator
node ./test/cli <asyncapi-file> <template> -o <output-directory> --force-write
```

### Example

```bash
cd apps/generator
node ./test/cli ./test/docs/dummy.yml ./test/test-templates/react-template -o ./test/output --force-write
```

This generates files in `./test/output` based on the AsyncAPI document and template.

## 📚 Official Templates

The AsyncAPI community maintains several official templates:

| Template | Description |
|----------|-------------|
| `@asyncapi/nodejs-template` | Node.js service using Hermes |
| `@asyncapi/java-spring-template` | Java Spring service |
| `@asyncapi/html-template` | HTML documentation site |
| `@asyncapi/markdown-template` | Markdown documentation |
| `@asyncapi/python-paho-template` | Python service with Paho |
| `@asyncapi/go-watermill-template` | Go client using Watermill |
| `@asyncapi/dotnet-nats-template` | .NET C# client using NATS |

[View all templates](https://github.com/search?q=topic%3Aasyncapi+topic%3Agenerator+topic%3Atemplate)

## 🏗️ Project Structure

```
generator/
├── apps/
│   ├── generator/        # Main generator tool
│   ├── hooks/           # Template generation hooks
│   ├── react-sdk/       # React render engine
│   └── keeper/          # Utility package
├── packages/
│   ├── components/      # Reusable components
│   ├── helpers/         # Helper functions
│   └── templates/       # Baked-in templates
└── turbo.json          # Turborepo configuration
```

## 🐛 Troubleshooting

### Wrong Node.js Version
If you see "Unsupported engine" errors:
```bash
source ~/.nvm/nvm.sh && nvm use 24
```

### Build Errors
Clear node_modules and reinstall:
```bash
rm -rf node_modules package-lock.json
npm install --workspaces
npm run build
```

### Turbo Command Not Found
Use the local turbo:
```bash
./node_modules/.bin/turbo build
```

## 📖 Additional Resources

- [Official Documentation](https://www.asyncapi.com/docs/tools/generator)
- [GitHub Repository](https://github.com/asyncapi/generator)
- [Development Guide](Development.md)
- [Contributing Guide](CONTRIBUTING.md)
- [Onboarding Webinar](https://www.youtube.com/watch?v=Mkd7FgKOMNE)

## 🎓 Next Steps

1. **Explore the test templates** in `apps/generator/test/test-templates/`
2. **Try different AsyncAPI documents** in `apps/generator/test/docs/`
3. **Read the official documentation** to learn about creating custom templates
4. **Watch the onboarding webinar** to understand the architecture
5. **Contribute** by fixing bugs or adding features

## 💡 Tips

- Always use `source ~/.nvm/nvm.sh && nvm use 24` before running commands
- Use `--force-write` flag to overwrite existing output files
- Check `apps/generator/test/` for examples and test cases
- The generator supports both local and remote templates

---

**Happy Generating! 🎉**
