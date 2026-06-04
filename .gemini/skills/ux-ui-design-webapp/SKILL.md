---
name: ux-ui-design-webapp
description: Guidelines and best practices for creating stunning, modern, high-converting, and premium Web App UIs with advanced HSL color palettes, glassmorphism, responsive grids, custom typography, and micro-animations.
---

# UX/UI Web App Design Guidelines

A comprehensive guide for agentic software engineers to build visually stunning, user-friendly, responsive, and premium web application interfaces that wow users at first glance.

---

## 1. Visual Aesthetics & Theme Styling

### A. Curved Harmonious Color Palettes (Avoid Generic Colors)
- Never use basic primary/secondary CSS colors like `red`, `blue`, `green`, `yellow`, or raw `#ff0000` / `#0000ff`.
- Prefer curated HSL-tailored colors for seamless dark modes, glassmorphism, and smooth transitions.
- Use HSL values because they allow easy creation of variants (lighter, darker, translucent) by adjusting lightness and opacity:
  - **Primary (Indigo/Indigo Violet):** `hsl(239, 84%, 67%)` -> `#6366f1`
  - **Secondary (Emerald/Green):** `hsl(142, 70%, 45%)` -> `#10b981`
  - **Accent (Fuchsia/Pink):** `hsl(328, 86%, 60%)` -> `#db2777`
  - **Dark Glass Background:** `rgba(15, 23, 42, 0.45)` with `backdrop-filter: blur(16px)`
  - **Glass Borders:** `1px solid rgba(255, 255, 255, 0.08)`
  - **Shadows:** Use large, soft, colored shadows instead of stark black. Example: `box-shadow: 0 10px 30px rgba(99, 102, 241, 0.15);`

### B. Glassmorphism & Translucency
- For modern web apps, adopt a "glassmorphic" panel system overlaying vibrant, flowing background gradients:
  ```css
  .glass-card {
      background: rgba(255, 255, 255, 0.04);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border: 1px solid rgba(255, 255, 255, 0.08);
      border-radius: 16px;
      box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.3);
  }
  ```
- Make background patterns interesting: Use multi-layered radial gradients with dynamic sizing to simulate subtle color clouds moving slowly under the interface.

---

## 2. Typography & Layout Systems

### A. Typography Hierarchy
- **Typography Selection:** Avoid default browser fonts (`system-ui`, `sans-serif` without fallbacks). Import premium fonts from Google Fonts:
    - *Geometric Modern:* **Outfit**, **Inter**, or **Montserrat**
    - *Elegant Serif (for accents):* **Playfair Display** or **Cinzel**
- **Sizing Scale:**
  - `h1`: `1.875rem` to `2.5rem` (bold, slightly tighter letter spacing: `-0.05em`)
  - `h2`: `1.25rem` to `1.5rem` (semi-bold)
  - `body`: `0.925rem` to `1rem` (line-height: `1.5` to `1.6` for optimal readability)
- **Gradient Headings:** Apply text-clipping gradients to main headlines to establish high-end aesthetic authority:
  ```css
  .gradient-text {
      background: linear-gradient(135deg, #a5b4fc 0%, #6366f1 50%, #db2777 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
  }
  ```

### B. Fluid Flexbox & Grid Systems
- Avoid raw pixel coordinates (`left: 140px`) or fixed table structures when creating app layouts.
- Always use **CSS Grid** for main dashboards and card collections:
  ```css
  .card-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 1.5rem;
      padding: 1rem;
  }
  ```
- Use **Flexbox** for toolbars, forms, and inline alignments to guarantee responsive adaptivity across mobile, tablet, and desktop views.

---

## 3. Interaction & Micro-Animations

### A. Responsive Hover & Active States
- Every interactive element (buttons, cards, list items) **must** have clear hover/focus/active visual feedback.
- Use cubic-bezier timing functions instead of standard `ease` for custom-feeling, snappy interactions:
  ```css
  .btn-interactive {
      transition: all 0.25s cubic-bezier(0.4, 0, 0.2, 1);
  }
  .btn-interactive:hover {
      transform: translateY(-2px) scale(1.02);
      box-shadow: 0 8px 24px rgba(99, 102, 241, 0.25);
  }
  .btn-interactive:active {
      transform: translateY(1px);
  }
  ```

### B. Subtle Animations (Transitions)
- Load in components smoothly by using keyframes for fading/sliding:
  ```css
  @keyframes fadeInUp {
      from {
          opacity: 0;
          transform: translateY(20px);
      }
      to {
          opacity: 1;
          transform: translateY(0);
      }
  }
  .animate-fade-in {
      animation: fadeInUp 0.5s cubic-bezier(0.16, 1, 0.3, 1) forwards;
  }
  ```

---

## 4. Web Component Design Checklist

### A. Buttons
- **Primary:** Strong solid HSL color with a subtle inner glow or dynamic hover gradient.
- **Secondary:** Clear border (`1px solid var(--border)`) and colored background on hover.
- **Icon Buttons:** Circle or square-rounded frames with central icons; ensure they have explicit aria-labels and clean tooltips on hover.

### B. Input Fields & Focus States
- Use border transitions that animate when a user clicks/taps into a field:
  ```css
  .input-field {
      border: 1px solid rgba(255, 255, 255, 0.1);
      background: rgba(0, 0, 0, 0.2);
      transition: border-color 0.2s, box-shadow 0.2s;
  }
  .input-field:focus {
      border-color: var(--primary);
      box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.25);
      outline: none;
  }
  ```

### C. Modals and Overlays
- Ensure modal backgrounds blur out the content behind them to create clear depth.
- Position the modal close button (`&times;`) in a highly visible corner, and close on clicking the overlay mask.

---

## 5. UI/UX Implementation Checklist

- [ ] **Contrast Check:** Are background and text colors sufficiently contrasted? (WCAG compliance, especially for older or visually-impaired users).
- [ ] **Loading States:** If an operation takes longer than 200ms, does the UI show a loading spinner, skeleton screen, or progress bar?
- [ ] **Scrollbars:** Have custom scrollbars been configured with beautiful styles (e.g., matching the app's scroll theme)?
- [ ] **No Placeholders:** Ensure real descriptive images or mock representations (generated using image synthesis) are utilized instead of generic wireframe placeholders.
- [ ] **Mobile Responsiveness:** Do sidebars collapse elegantly on mobile? Is touch targets size at least 44x44px?
