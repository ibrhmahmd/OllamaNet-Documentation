# Ollama UI Technical Context

## Technologies Used

### Frontend Framework
- **React 19.0.0**: Core UI library
- **Vite 6.2.0**: Build tool and development server
- **React Router 7.2.0**: Client-side routing

### State Management
- **React Context API**: Global state management
- **Custom Hooks**: Encapsulated state logic
- **TanStack React Query 5.80.7**: Data fetching and caching

### Styling
- **Tailwind CSS 4.1.10**: Utility-first CSS framework
- **Framer Motion 12.18.1**: Animation library
- **React Icons 5.5.0**: Icon components

### Data Handling
- **Axios 1.8.1**: HTTP client for API requests
- **Date-fns 4.1.0**: Date manipulation library

### Content Rendering
- **React Markdown 10.1.0**: Markdown rendering
- **Remark-gfm 4.0.1**: GitHub Flavored Markdown support
- **Rehype-raw 7.0.0**: HTML parsing for markdown
- **Rehype-sanitize 6.0.0**: Content sanitization

### Development Tools
- **ESLint 9.21.0**: Code linting
- **TypeScript (via @types/react)**: Type definitions

## Development Setup

### Prerequisites
- Node.js (latest LTS version recommended)
- npm or yarn package manager

### Local Development
1. Clone the repository
2. Install dependencies: `npm install`
3. Start development server: `npm run dev`
4. Access the application at `http://localhost:5173`

### Build Process
- Development build: `npm run dev`
- Production build: `npm run build`
- Preview production build: `npm run preview`

### Deployment
- GitHub Pages deployment: `npm run deploy`
- The application is configured for deployment to GitHub Pages
- Base URL: `https://3bhafez.github.io/olloma-ui/`

## Technical Constraints

### Browser Compatibility
- Modern browsers (Chrome, Firefox, Safari, Edge)
- No explicit support for legacy browsers

### API Dependencies
- Requires connection to Ollama backend API
- Authentication services for user management
- Model management API for AI model interactions

### Performance Considerations
- Client-side rendering may impact initial load performance
- Large conversations may require pagination or virtualization
- Model loading and response times depend on backend performance

## Dependencies

### Core Dependencies
```
"dependencies": {
  "@tailwindcss/vite": "^4.0.11",
  "@tanstack/react-query": "^5.80.7",
  "axios": "^1.8.1",
  "date-fns": "^4.1.0",
  "framer-motion": "^12.18.1",
  "gh-pages": "^6.3.0",
  "react": "^19.0.0",
  "react-dom": "^19.0.0",
  "react-icons": "^5.5.0",
  "react-markdown": "^10.1.0",
  "react-router-dom": "^7.2.0",
  "rehype-raw": "^7.0.0",
  "rehype-sanitize": "^6.0.0",
  "remark-gfm": "^4.0.1",
  "tailwindcss": "^4.1.10"
}
```

### Development Dependencies
```
"devDependencies": {
  "@eslint/js": "^9.21.0",
  "@types/react": "^19.0.10",
  "@types/react-dom": "^19.0.4",
  "@vitejs/plugin-react": "^4.3.4",
  "eslint": "^9.21.0",
  "eslint-plugin-react-hooks": "^5.1.0",
  "eslint-plugin-react-refresh": "^0.4.19",
  "globals": "^15.15.0",
  "vite": "^6.2.0"
}
```