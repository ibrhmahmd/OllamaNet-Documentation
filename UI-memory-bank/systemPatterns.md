# Ollama UI System Patterns

## System Architecture

The Ollama UI application follows a client-side React architecture with a clear separation of concerns. The system is organized into the following key components:

1. **Frontend Application (React)**
   - Single-page application (SPA) built with React and Vite
   - Client-side routing with React Router
   - UI components built with Tailwind CSS

2. **State Management**
   - React Context API for global state management
   - Custom hooks for reusable logic
   - Local component state for UI-specific concerns

3. **API Integration**
   - Service modules for API communication
   - Axios for HTTP requests
   - Centralized error handling

4. **Authentication**
   - Token-based authentication
   - Protected routes
   - Role-based access control

## Key Technical Decisions

1. **React Context over Redux**
   - The application uses React Context API for state management instead of Redux
   - This decision simplifies the codebase while still providing effective state management
   - Context providers are organized by domain (Auth, Conversation)

2. **Tailwind CSS for Styling**
   - Utility-first CSS approach with Tailwind
   - Consistent design system
   - Responsive design patterns

3. **Component-Based Architecture**
   - Modular, reusable components
   - Clear separation between presentational and container components
   - Consistent component organization

4. **Client-Side Routing**
   - React Router for navigation
   - Protected routes for authenticated content
   - Role-based route protection

## Design Patterns

1. **Provider Pattern**
   - Context providers wrap the application to provide global state
   - Custom hooks expose context functionality to components
   - Example: `AuthProvider`, `ConversationProvider`

2. **Custom Hook Pattern**
   - Encapsulate and reuse complex logic
   - Abstract away implementation details
   - Examples: `useAuth`, `useConversation`, `useNotes`

3. **Container/Presentational Pattern**
   - Separation of data fetching/logic from presentation
   - Enhances component reusability
   - Simplifies testing and maintenance

4. **Service Module Pattern**
   - Centralized API communication
   - Consistent error handling
   - Examples: `authService`, `conversationService`, `modelService`

5. **Render Props and Component Composition**
   - Flexible component design
   - Reusable UI patterns
   - Examples: Layout components, protected route wrappers

## Component Relationships

1. **Page Components**
   - Top-level components rendered by routes
   - Compose multiple UI components
   - Handle page-specific state and logic
   - Examples: `Home`, `Chat`, `Models`, `Profile`

2. **Layout Components**
   - Provide consistent page structure
   - Include navigation, headers, footers
   - Example: `Layout` component with nested routes

3. **Feature Components**
   - Domain-specific components
   - Grouped by feature area
   - Examples: `chat/`, `models/`, `admin/` component directories

4. **UI Components**
   - Reusable, generic UI elements
   - Consistent styling and behavior
   - Examples: buttons, cards, modals, form elements

5. **Context Providers**
   - Wrap the application to provide global state
   - Expose state and functions through context
   - Examples: `AuthProvider`, `ConversationProvider`