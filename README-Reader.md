<div align="center">
  <a href="https://readest.com?utm_source=github&utm_medium=referral&utm_campaign=readme" target="_blank">
    <img src="https://github.com/readest/readest/blob/main/apps/readest-app/src-tauri/icons/icon.png?raw=true" alt="Readest Logo" width="20%" />
  </a>
  <h1>Readest</h1>
  <br>

[Readest][link-website] is an open-source ebook reader designed for immersive and deep reading experiences. Built as a modern rewrite of [Foliate](https://github.com/johnfactotum/foliate), it leverages [Next.js 16](https://github.com/vercel/next.js) and [Tauri v2](https://github.com/tauri-apps/tauri) to deliver a smooth, cross-platform experience across macOS, Windows, Linux, Android, iOS, and the Web.

[![Website][badge-website]][link-website]
[![Web App][badge-web-app]][link-web-readest]
[![OS][badge-platforms]][link-website]
<br>
[![Discord][badge-discord]][link-discord]
[![Reddit][badge-reddit]][link-reddit]
[![AGPL Licence][badge-license]](LICENSE)
[![Language Coverage][badge-language-coverage]][link-locales]
[![Donate][badge-donate]][link-donate]
[![Latest release][badge-release]][link-gh-releases]
[![Last commit][badge-last-commit]][link-gh-commits]
[![Commits][badge-commit-activity]][link-gh-pulse]
[![][badge-hellogithub]][link-hellogithub]
[![Ask DeepWiki][badge-deepwiki]][link-deepwiki]

</div>

<p align="center">
  <a href="#features">Features</a> •
  <a href="#planned-features">Planned Features</a> •
  <a href="#screenshots">Screenshots</a> •
  <a href="#downloads">Downloads</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#troubleshooting">Troubleshooting</a> •
  <a href="#support">Support</a> •
  <a href="#license">License</a>
</p>

<div align="center">
  <a href="https://readest.com" target="_blank">
    <img src="./data/screenshots/landing_all_platforms.png" alt="Readest Banner" width="100%" />
  </a>
</div>

## Workspace Quick Start (Docker)

For this workspace, you can start Reader with one command:

```bash
cd /Users/dr_puff/workspace/work_with_AI/Reader
./bootstrap.sh
```

`bootstrap.sh` will:

- create `Reader/.env` from `Reader/.env.example` if missing
- run `git submodule update --init --recursive`
- build and start `Reader/docker-compose.yml`

By default this workspace uses `READER_BUILD_TARGET=development-stage` to avoid
high-memory production builds on local Docker. Set it to
`production-stage` in `Reader/.env` when you need a production image build.

## Component Index (for maintenance)

This index is for this workspace (`Reader/apps/readest-app/src`) and maps component/file names to locations.

### Route Pages

- `app/page.tsx` -> `Reader/apps/readest-app/src/app/page.tsx`
- `app/library/page.tsx` -> `Reader/apps/readest-app/src/app/library/page.tsx`
- `app/reader/page.tsx` -> `Reader/apps/readest-app/src/app/reader/page.tsx`
- `app/auth/page.tsx` -> `Reader/apps/readest-app/src/app/auth/page.tsx`
- `app/auth/callback/page.tsx` -> `Reader/apps/readest-app/src/app/auth/callback/page.tsx`
- `app/auth/recovery/page.tsx` -> `Reader/apps/readest-app/src/app/auth/recovery/page.tsx`
- `app/auth/update/page.tsx` -> `Reader/apps/readest-app/src/app/auth/update/page.tsx`
- `app/auth/error/page.tsx` -> `Reader/apps/readest-app/src/app/auth/error/page.tsx`
- `app/user/page.tsx` -> `Reader/apps/readest-app/src/app/user/page.tsx`
- `app/user/subscription/success/page.tsx` -> `Reader/apps/readest-app/src/app/user/subscription/success/page.tsx`
- `app/opds/page.tsx` -> `Reader/apps/readest-app/src/app/opds/page.tsx`
- `app/offline/page.tsx` -> `Reader/apps/readest-app/src/app/offline/page.tsx`
- `app/updater/page.tsx` -> `Reader/apps/readest-app/src/app/updater/page.tsx`
- `pages/_app.tsx` -> `Reader/apps/readest-app/src/pages/_app.tsx`
- `pages/reader/[ids].tsx` -> `Reader/apps/readest-app/src/pages/reader/[ids].tsx`

### Library Components

- `BookItem` -> `Reader/apps/readest-app/src/app/library/components/BookItem.tsx`
- `Bookshelf` -> `Reader/apps/readest-app/src/app/library/components/Bookshelf.tsx`
- `BookshelfItem` -> `Reader/apps/readest-app/src/app/library/components/BookshelfItem.tsx`
- `GroupHeader` -> `Reader/apps/readest-app/src/app/library/components/GroupHeader.tsx`
- `GroupItem` -> `Reader/apps/readest-app/src/app/library/components/GroupItem.tsx`
- `GroupingModal` -> `Reader/apps/readest-app/src/app/library/components/GroupingModal.tsx`
- `ImportMenu` -> `Reader/apps/readest-app/src/app/library/components/ImportMenu.tsx`
- `LibraryHeader` -> `Reader/apps/readest-app/src/app/library/components/LibraryHeader.tsx`
- `MigrateDataWindow` -> `Reader/apps/readest-app/src/app/library/components/MigrateDataWindow.tsx`
- `OPDSDialog` -> `Reader/apps/readest-app/src/app/library/components/OPDSDialog.tsx`
- `ReadingProgress` -> `Reader/apps/readest-app/src/app/library/components/ReadingProgress.tsx`
- `SelectModeActions` -> `Reader/apps/readest-app/src/app/library/components/SelectModeActions.tsx`
- `SetStatusAlert` -> `Reader/apps/readest-app/src/app/library/components/SetStatusAlert.tsx`
- `SettingsMenu` -> `Reader/apps/readest-app/src/app/library/components/SettingsMenu.tsx`
- `StatusBadge` -> `Reader/apps/readest-app/src/app/library/components/StatusBadge.tsx`
- `TransferQueuePanel` -> `Reader/apps/readest-app/src/app/library/components/TransferQueuePanel.tsx`
- `ViewMenu` -> `Reader/apps/readest-app/src/app/library/components/ViewMenu.tsx`

### Reader Core Components

- `Reader` -> `Reader/apps/readest-app/src/app/reader/components/Reader.tsx`
- `ReaderContent` -> `Reader/apps/readest-app/src/app/reader/components/ReaderContent.tsx`
- `BooksGrid` -> `Reader/apps/readest-app/src/app/reader/components/BooksGrid.tsx`
- `FoliateViewer` -> `Reader/apps/readest-app/src/app/reader/components/FoliateViewer.tsx`
- `HeaderBar` -> `Reader/apps/readest-app/src/app/reader/components/HeaderBar.tsx`
- `FooterBar` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/FooterBar.tsx`
- `ProgressBar` -> `Reader/apps/readest-app/src/app/reader/components/ProgressBar.tsx`
- `PageNavigationButtons` -> `Reader/apps/readest-app/src/app/reader/components/PageNavigationButtons.tsx`
- `SectionInfo` -> `Reader/apps/readest-app/src/app/reader/components/SectionInfo.tsx`
- `StatusInfo` -> `Reader/apps/readest-app/src/app/reader/components/StatusInfo.tsx`
- `HintInfo` -> `Reader/apps/readest-app/src/app/reader/components/HintInfo.tsx`
- `Ribbon` -> `Reader/apps/readest-app/src/app/reader/components/Ribbon.tsx`
- `DoubleBorder` -> `Reader/apps/readest-app/src/app/reader/components/DoubleBorder.tsx`
- `ViewMenu` -> `Reader/apps/readest-app/src/app/reader/components/ViewMenu.tsx`
- `ZoomControls` -> `Reader/apps/readest-app/src/app/reader/components/ZoomControls.tsx`
- `ReadingRuler` -> `Reader/apps/readest-app/src/app/reader/components/ReadingRuler.tsx`
- `ImageViewer` -> `Reader/apps/readest-app/src/app/reader/components/ImageViewer.tsx`
- `TableViewer` -> `Reader/apps/readest-app/src/app/reader/components/TableViewer.tsx`
- `FootnotePopup` -> `Reader/apps/readest-app/src/app/reader/components/FootnotePopup.tsx`
- `BookmarkToggler` -> `Reader/apps/readest-app/src/app/reader/components/BookmarkToggler.tsx`
- `NotebookToggler` -> `Reader/apps/readest-app/src/app/reader/components/NotebookToggler.tsx`
- `SettingsToggler` -> `Reader/apps/readest-app/src/app/reader/components/SettingsToggler.tsx`
- `SidebarToggler` -> `Reader/apps/readest-app/src/app/reader/components/SidebarToggler.tsx`
- `TranslationToggler` -> `Reader/apps/readest-app/src/app/reader/components/TranslationToggler.tsx`
- `KOSyncSettings` -> `Reader/apps/readest-app/src/app/reader/components/KOSyncSettings.tsx`
- `KOSyncResolver` -> `Reader/apps/readest-app/src/app/reader/components/KOSyncResolver.tsx`
- `ReadwiseSettings` -> `Reader/apps/readest-app/src/app/reader/components/ReadwiseSettings.tsx`
- `ProofreadRules` -> `Reader/apps/readest-app/src/app/reader/components/ProofreadRules.tsx`

### Reader Sidebar Components

- `SideBar` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/SideBar.tsx`
- `Header` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/Header.tsx`
- `Content` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/Content.tsx`
- `ContentNavBar` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/ContentNavBar.tsx`
- `TabNavigation` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/TabNavigation.tsx`
- `TOCView` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/TOCView.tsx`
- `TOCItem` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/TOCItem.tsx`
- `SearchBar` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/SearchBar.tsx`
- `SearchOptions` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/SearchOptions.tsx`
- `SearchResults` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/SearchResults.tsx`
- `SearchResultsNav` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/SearchResultsNav.tsx`
- `BookCard` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/BookCard.tsx`
- `BookMenu` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/BookMenu.tsx`
- `BooknoteItem` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/BooknoteItem.tsx`
- `BooknoteView` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/BooknoteView.tsx`
- `BooknotesNav` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/BooknotesNav.tsx`
- `ChatHistoryView` -> `Reader/apps/readest-app/src/app/reader/components/sidebar/ChatHistoryView.tsx`

### Reader Annotator Components

- `Annotator` -> `Reader/apps/readest-app/src/app/reader/components/annotator/Annotator.tsx`
- `AnnotationPopup` -> `Reader/apps/readest-app/src/app/reader/components/annotator/AnnotationPopup.tsx`
- `AnnotationTools` -> `Reader/apps/readest-app/src/app/reader/components/annotator/AnnotationTools.tsx`
- `AnnotationToolButton` -> `Reader/apps/readest-app/src/app/reader/components/annotator/AnnotationToolButton.tsx`
- `AnnotationNotes` -> `Reader/apps/readest-app/src/app/reader/components/annotator/AnnotationNotes.tsx`
- `AnnotationRangeEditor` -> `Reader/apps/readest-app/src/app/reader/components/annotator/AnnotationRangeEditor.tsx`
- `HighlightOptions` -> `Reader/apps/readest-app/src/app/reader/components/annotator/HighlightOptions.tsx`
- `QuickActionMenu` -> `Reader/apps/readest-app/src/app/reader/components/annotator/QuickActionMenu.tsx`
- `TranslatorPopup` -> `Reader/apps/readest-app/src/app/reader/components/annotator/TranslatorPopup.tsx`
- `WikipediaPopup` -> `Reader/apps/readest-app/src/app/reader/components/annotator/WikipediaPopup.tsx`
- `WiktionaryPopup` -> `Reader/apps/readest-app/src/app/reader/components/annotator/WiktionaryPopup.tsx`
- `ProofreadPopup` -> `Reader/apps/readest-app/src/app/reader/components/annotator/ProofreadPopup.tsx`
- `MagnifierLoupe` -> `Reader/apps/readest-app/src/app/reader/components/annotator/MagnifierLoupe.tsx`
- `ExportMarkdownDialog` -> `Reader/apps/readest-app/src/app/reader/components/annotator/ExportMarkdownDialog.tsx`

### Reader Notebook / TTS / RSVP / Paragraph / Footer Components

- `Notebook` -> `Reader/apps/readest-app/src/app/reader/components/notebook/Notebook.tsx`
- `NotebookTabNavigation` -> `Reader/apps/readest-app/src/app/reader/components/notebook/NotebookTabNavigation.tsx`
- `NoteEditor` -> `Reader/apps/readest-app/src/app/reader/components/notebook/NoteEditor.tsx`
- `SearchBar` -> `Reader/apps/readest-app/src/app/reader/components/notebook/SearchBar.tsx`
- `AIAssistant` -> `Reader/apps/readest-app/src/app/reader/components/notebook/AIAssistant.tsx`
- `Header` -> `Reader/apps/readest-app/src/app/reader/components/notebook/Header.tsx`
- `TTSControl` -> `Reader/apps/readest-app/src/app/reader/components/tts/TTSControl.tsx`
- `TTSPanel` -> `Reader/apps/readest-app/src/app/reader/components/tts/TTSPanel.tsx`
- `TTSBar` -> `Reader/apps/readest-app/src/app/reader/components/tts/TTSBar.tsx`
- `TTSIcon` -> `Reader/apps/readest-app/src/app/reader/components/tts/TTSIcon.tsx`
- `RSVPControl` -> `Reader/apps/readest-app/src/app/reader/components/rsvp/RSVPControl.tsx`
- `RSVPOverlay` -> `Reader/apps/readest-app/src/app/reader/components/rsvp/RSVPOverlay.tsx`
- `RSVPStartDialog` -> `Reader/apps/readest-app/src/app/reader/components/rsvp/RSVPStartDialog.tsx`
- `ParagraphControl` -> `Reader/apps/readest-app/src/app/reader/components/paragraph/ParagraphControl.tsx`
- `ParagraphBar` -> `Reader/apps/readest-app/src/app/reader/components/paragraph/ParagraphBar.tsx`
- `ParagraphOverlay` -> `Reader/apps/readest-app/src/app/reader/components/paragraph/ParagraphOverlay.tsx`
- `ColorPanel` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/ColorPanel.tsx`
- `DesktopFooterBar` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/DesktopFooterBar.tsx`
- `FontLayoutPanel` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/FontLayoutPanel.tsx`
- `MobileFooterBar` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/MobileFooterBar.tsx`
- `NavigationBar` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/NavigationBar.tsx`
- `NavigationPanel` -> `Reader/apps/readest-app/src/app/reader/components/footerbar/NavigationPanel.tsx`

### OPDS Components

- `CatelogManager` -> `Reader/apps/readest-app/src/app/opds/components/CatelogManager.tsx`
- `Navigation` -> `Reader/apps/readest-app/src/app/opds/components/Navigation.tsx`
- `NavigationCard` -> `Reader/apps/readest-app/src/app/opds/components/NavigationCard.tsx`
- `FeedView` -> `Reader/apps/readest-app/src/app/opds/components/FeedView.tsx`
- `PublicationCard` -> `Reader/apps/readest-app/src/app/opds/components/PublicationCard.tsx`
- `PublicationView` -> `Reader/apps/readest-app/src/app/opds/components/PublicationView.tsx`
- `SearchView` -> `Reader/apps/readest-app/src/app/opds/components/SearchView.tsx`

### User Components

- `Header` -> `Reader/apps/readest-app/src/app/user/components/Header.tsx`
- `UserInfo` -> `Reader/apps/readest-app/src/app/user/components/UserInfo.tsx`
- `UsageStats` -> `Reader/apps/readest-app/src/app/user/components/UsageStats.tsx`
- `StorageManager` -> `Reader/apps/readest-app/src/app/user/components/StorageManager.tsx`
- `AccountActions` -> `Reader/apps/readest-app/src/app/user/components/AccountActions.tsx`
- `Checkout` -> `Reader/apps/readest-app/src/app/user/components/Checkout.tsx`
- `PlanNavigation` -> `Reader/apps/readest-app/src/app/user/components/PlanNavigation.tsx`
- `PlanCard` -> `Reader/apps/readest-app/src/app/user/components/PlanCard.tsx`
- `PlanActionButton` -> `Reader/apps/readest-app/src/app/user/components/PlanActionButton.tsx`
- `PlanIndicators` -> `Reader/apps/readest-app/src/app/user/components/PlanIndicators.tsx`
- `PlansComparison` -> `Reader/apps/readest-app/src/app/user/components/PlansComparison.tsx`
- `PurchaseCallToActions` -> `Reader/apps/readest-app/src/app/user/components/PurchaseCallToActions.tsx`

### Shared Components (`src/components`)

- `AboutWindow` -> `Reader/apps/readest-app/src/components/AboutWindow.tsx`
- `Alert` -> `Reader/apps/readest-app/src/components/Alert.tsx`
- `BookCover` -> `Reader/apps/readest-app/src/components/BookCover.tsx`
- `Button` -> `Reader/apps/readest-app/src/components/Button.tsx`
- `CachedImage` -> `Reader/apps/readest-app/src/components/CachedImage.tsx`
- `Dialog` -> `Reader/apps/readest-app/src/components/Dialog.tsx`
- `DropIndicator` -> `Reader/apps/readest-app/src/components/DropIndicator.tsx`
- `Dropdown` -> `Reader/apps/readest-app/src/components/Dropdown.tsx`
- `HighlighterIcon` -> `Reader/apps/readest-app/src/components/HighlighterIcon.tsx`
- `LegalLinks` -> `Reader/apps/readest-app/src/components/LegalLinks.tsx`
- `Link` -> `Reader/apps/readest-app/src/components/Link.tsx`
- `Menu` -> `Reader/apps/readest-app/src/components/Menu.tsx`
- `MenuItem` -> `Reader/apps/readest-app/src/components/MenuItem.tsx`
- `ModalPortal` -> `Reader/apps/readest-app/src/components/ModalPortal.tsx`
- `Overlay` -> `Reader/apps/readest-app/src/components/Overlay.tsx`
- `Popup` -> `Reader/apps/readest-app/src/components/Popup.tsx`
- `Providers` -> `Reader/apps/readest-app/src/components/Providers.tsx`
- `Quota` -> `Reader/apps/readest-app/src/components/Quota.tsx`
- `Select` -> `Reader/apps/readest-app/src/components/Select.tsx`
- `Slider` -> `Reader/apps/readest-app/src/components/Slider.tsx`
- `Spinner` -> `Reader/apps/readest-app/src/components/Spinner.tsx`
- `SupportLinks` -> `Reader/apps/readest-app/src/components/SupportLinks.tsx`
- `TextButton` -> `Reader/apps/readest-app/src/components/TextButton.tsx`
- `TextEditor` -> `Reader/apps/readest-app/src/components/TextEditor.tsx`
- `Toast` -> `Reader/apps/readest-app/src/components/Toast.tsx`
- `UpdaterWindow` -> `Reader/apps/readest-app/src/components/UpdaterWindow.tsx`
- `UserAvatar` -> `Reader/apps/readest-app/src/components/UserAvatar.tsx`
- `WindowButtons` -> `Reader/apps/readest-app/src/components/WindowButtons.tsx`
- `assistant/*` -> `Reader/apps/readest-app/src/components/assistant/*.tsx`
- `command-palette/*` -> `Reader/apps/readest-app/src/components/command-palette/*.tsx`
- `metadata/*` -> `Reader/apps/readest-app/src/components/metadata/*.tsx`
- `primitives/*` -> `Reader/apps/readest-app/src/components/primitives/*.tsx`
- `settings/*` -> `Reader/apps/readest-app/src/components/settings/*.tsx`
- `settings/color/*` -> `Reader/apps/readest-app/src/components/settings/color/*.tsx`

### Hooks / Store / Context Quick Map

- Reader hooks -> `Reader/apps/readest-app/src/app/reader/hooks/*.ts`
- Library hooks -> `Reader/apps/readest-app/src/app/library/hooks/*.ts`
- Reader utils -> `Reader/apps/readest-app/src/app/reader/utils/*.ts`
- Zustand stores -> `Reader/apps/readest-app/src/store/*.ts`
- React contexts -> `Reader/apps/readest-app/src/context/*.tsx`

### API Route Handlers (Next App Router)

- API routes -> `Reader/apps/readest-app/src/app/api/**/route.ts`
- Includes: `ai`, `apple`, `google`, `metadata`, `opds`, `stripe`, `tts`

## Features

<div align="left">✅ Implemented</div>

| **Feature**                             | **Description**                                                                                                        | **Status** |
| --------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------- |
| **Multi-Format Support**                | Support EPUB, MOBI, KF8 (AZW3), FB2, CBZ, TXT, PDF (experimental)                                                      | ✅         |
| **Scroll/Page View Modes**              | Switch between scrolling or paginated reading modes.                                                                   | ✅         |
| **Full-Text Search**                    | Search across the entire book to find relevant sections.                                                               | ✅         |
| **Annotations and Highlighting**        | Add highlights, bookmarks, and notes to enhance your reading experience and use instant mode for quicker interactions. | ✅         |
| **Dictionary/Wikipedia Lookup**         | Instantly look up words and terms when reading.                                                                        | ✅         |
| **[Parallel Read][link-parallel-read]** | Read two books or documents simultaneously in a split-screen view.                                                     | ✅         |
| **Customize Font and Layout**           | Adjust font, layout, theme mode, and theme colors for a personalized experience.                                       | ✅         |
| **Code Syntax Highlighting**            | Read software manuals with rich coloring of code examples.                                                             | ✅         |
| **File Association and Open With**      | Quickly open files in Readest in your file browser with one-click.                                                     | ✅         |
| **Library Management**                  | Organize, sort, and manage your entire ebook library.                                                                  | ✅         |
| **OPDS/Calibre Integration**            | Integrate OPDS/Calibre to access online libraries and catalogs.                                                        | ✅         |
| **Translate with DeepL and Yandex**     | From a single sentence to the entire book—translate instantly.                                                         | ✅         |
| **Text-to-Speech (TTS) Support**        | Enjoy smooth, multilingual narration—even within a single book.                                                        | ✅         |
| **Sync across Platforms**               | Synchronize book files, reading progress, notes, and bookmarks across all supported platforms.                         | ✅         |
| **Accessibility**                       | Provides full keyboard navigation and supports for screen readers such as VoiceOver, TalkBack, NVDA, and Orca.         | ✅         |
| **Visual & Focus Aids**                 | Reading ruler, paragraph-by-paragraph reading mode, and speed reading features.                                        | ✅         |

## Planned Features

<div align="left">🛠 Building</div>
<div align="left">🔄 Planned</div>

| **Feature**                                | **Description**                                                                            | **Priority** |
| ------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------ |
| [**Sync with Koreader**][link-kosync-wiki] | Synchronize reading progress, notes, and bookmarks with [Koreader][link-koreader] devices. | 🛠           |
| **AI-Powered Summarization**               | Generate summaries of books or chapters using AI for quick insights.                       | 🛠           |
| **Advanced Reading Stats**                 | Track reading time, pages read, and more for detailed insights.                            | 🛠           |
| **Audiobook Support**                      | Extend functionality to play and manage audiobooks.                                        | 🔄           |
| **Handwriting Annotations**                | Add support for handwriting annotations using a pen on compatible devices.                 | 🔄           |
| **In-Library Full-Text Search**            | Search across your entire ebook library to find topics and quotes.                         | 🔄           |

Stay tuned for continuous improvements and updates! Contributions and suggestions are always welcome—let's build the ultimate reading experience together. 😊

## Screenshots

![Annotations](./data/screenshots/annotations.png)

![TTS](./data/screenshots/tts_speak_aloud.png)

![DeepL](./data/screenshots/deepl.png)

![Footnote](./data/screenshots/footnote_popover.png)

![Wikipedia](./data/screenshots/wikipedia_vertical.png)

![Theming Dark Mode](./data/screenshots/theming_dark_mode.png)

---

## Downloads

### Mobile Apps

<div align="center">
  <a href="https://apps.apple.com/app/id6738622779">
    <img alt="Download on the App Store" src="https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg" style="height: 50px;" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="https://play.google.com/store/apps/details?id=com.bilingify.readest">
    <img alt="Get it on Google Play" src="https://upload.wikimedia.org/wikipedia/commons/7/78/Google_Play_Store_badge_EN.svg" style="height: 50px;" /></a>
</div>

### Platform-Specific Downloads

- macOS / iOS / iPadOS : Search and install **Readest** on the [App Store][link-appstore], _also_ available on TestFlight for beta test (send your Apple ID to <readestapp@gmail.com> to request access).
- Windows / Linux / Android: Visit and download **Readest** at [https://readest.com][link-website] or the [Releases on GitHub][link-gh-releases].
- Linux users can also install [Readest on Flathub][link-flathub].
- Web: Visit and use **Readest for Web** at [https://web.readest.com][link-web-readest].

## Requirements

- **Node.js** and **pnpm** for Next.js development
- **Rust** and **Cargo** for Tauri development

For the best experience to build Readest for yourself, use a recent version of Node.js and Rust. Refer to the [Tauri documentation](https://v2.tauri.app/start/prerequisites/) for details on setting up the development environment prerequisites on different platforms.

```bash
nvm install v24
nvm use v24
npm install -g pnpm
rustup update
```

## Getting Started

To get started with Readest, follow these steps to clone and build the project.

### 1. Clone the Repository

```bash
git clone https://github.com/readest/readest.git
cd readest
```

### 2. Install Dependencies

```bash
# might need to rerun this when code is updated
git submodule update --init --recursive
pnpm install
# copy vendors dist libs to public directory
pnpm --filter @readest/readest-app setup-vendors
```

### 3. Verify Dependencies Installation

To confirm that all dependencies are correctly installed, run the following command:

```bash
pnpm tauri info
```

This command will display information about the installed Tauri dependencies and configuration on your platform. Note that the output may vary depending on the operating system and environment setup. Please review the output specific to your platform for any potential issues.

For Windows targets, “Build Tools for Visual Studio 2022” (or a higher edition of Visual Studio) and the “Desktop development with C++” workflow must be installed. For Windows ARM64 targets, the “VS 2022 C++ ARM64 build tools” and "C++ Clang Compiler for Windows" components must be installed. And make sure `clang` can be found in the path by adding `C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\Llvm\x64\bin` for example in the environment variable `Path`.

### 4. Build for Development

```bash
# Start development for the Tauri app
pnpm tauri dev
# or start development for the Web app
pnpm dev-web
# preview with OpenNext build for the Web app
pnpm preview
```

For Android:

```bash
# Initialize the Android environment (run once)
rm apps/readest-app/src-tauri/gen/android
pnpm tauri android init
git checkout apps/readest-app/src-tauri/gen/android

pnpm tauri android dev
# or if you want to dev on a real device
pnpm tauri android dev --host
```

For iOS:

```bash
# Set up the iOS environment (run once)
pnpm tauri ios init

pnpm tauri ios dev
# or if you want to dev on a real device
pnpm tauri ios dev --host
```

### 5. Build for Production

```bash
pnpm tauri build
pnpm tauri android build
pnpm tauri ios build
```

Please refer to our release script if you experience any issues:
https://github.com/readest/readest/blob/main/.github/workflows/release.yml

### 6. Setup dev environment with Nix

If you have Nix installed, you can leverage flake to enter a development shell
with all the necessary dependencies:

```bash
nix develop ./ops  # enter a dev shell for the web app
nix develop ./ops#ios # enter a dev shell for the ios app
nix develop ./ops#android # enter a dev shell for the android app
```

### 7. More information

Please check the [wiki][link-gh-wiki] of this project for more information on development.

## Troubleshooting

### 1. Readest Won’t Launch on Windows (Missing Edge WebView2 Runtime)

**Symptom**

- When you double-click readest.exe, nothing happens. No window appears, and Task Manager does not show the process.
- This can affect both the standard installer and the portable version.

**Cause**

- Microsoft Edge WebView2 Runtime is either missing, outdated, or improperly installed on your system. Readest depends on WebView2 to render the interface on Windows.

**How to Fix**

1. Check if WebView2 is installed
   - Open “Add or Remove Programs” (a.k.a. Apps & features) on Windows. Look for “Microsoft Edge WebView2 Runtime.”
2. Install or Update WebView2
   - Download the WebView2 Runtime directly from Microsoft: [link](https://developer.microsoft.com/en-us/microsoft-edge/webview2?form=MA13LH).
   - If you prefer an offline installer, download the offline package and run it as an Administrator.
3. Re-run Readest
   - After installing/updating WebView2, launch readest.exe again.
   - If you still encounter problems, reboot your PC and try again.

**Additional Tips**

- If reinstalling once doesn’t work, uninstall Edge WebView2 completely, then reinstall it with Administrator privileges.
- Verify your Windows installation has the latest updates from Microsoft.

**Still Stuck?**

- See Issue [readest/readest#358](https://github.com/readest/readest/issues/358) for further details, or head over to our [Discord][link-discord] server and open a support discussion with detailed logs of your environment and the steps you’ve taken.

### 2. AppImage Launches but Only Shows a Taskbar Icon

On some Arch Linux systems—especially those using Wayland—the Readest AppImage may briefly show an icon in the taskbar and then exit without opening a window.

You might see logs such as:

```
Could not create default EGL display: EGL_BAD_PARAMETER. Aborting...
```

This behavior is usually caused by compatibility issues between the bundled AppImage libraries and the system’s EGL / Wayland environment.

**Workaround 1: Launch with LD_PRELOAD (recommended)**

You can preload the system Wayland client library before launching the AppImage:

```
LD_PRELOAD=/usr/lib/libwayland-client.so /path/to/Readest.AppImage
```

This workaround has been confirmed to resolve the issue on affected systems.

**Workaround 2: Use the Flatpak Version**

If you prefer a more reliable out-of-the-box experience on Arch Linux, consider using the [Flatpak build on Flathub][link-flathub] instead. The Flatpak runtime helps avoid system library mismatches and tends to behave more consistently across different Wayland and X11 setups.

## Contributors

Readest is open-source, and contributions are welcome! Feel free to open issues, suggest features, or submit pull requests. Please **review our [contributing guidelines](CONTRIBUTING.md) before you start**. We also welcome you to join our [Discord][link-discord] community for either support or contributing guidance.

<a href="https://github.com/readest/readest/graphs/contributors">
  <p align="left">
    <img width="500" src="https://contrib.rocks/image?repo=readest/readest" alt="A table of avatars from the project's contributors" />
  </p>
</a>

## Support

If Readest has been useful to you, consider supporting its development. You can [become a sponsor on GitHub](https://github.com/sponsors/readest), [donate via Stripe](https://donate.stripe.com/4gMcN5aZdcE52kW3TFgjC01), or [donate with crypto](https://donate.readest.com). Your contribution helps us squash bugs faster, improve performance, and keep building great features.

### Sponsors

<p align="center">
  <a title="Browser testing via TestMu AI" href="https://www.testmuai.com/?utm_medium=sponsor&utm_source=readest" target="_blank">
    <img src="https://raw.githubusercontent.com/readest/readest/refs/heads/main/data/sponsors/testmu-ai-logo.png" style="vertical-align: middle;" width="250" />
  </a>
</p>

## License

Readest is free software: you can redistribute it and/or modify it under the terms of the [GNU Affero General Public License](https://www.gnu.org/licenses/agpl-3.0.html) as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. See the [LICENSE](LICENSE) file for details.

The following libraries and frameworks are used in this software:

- [foliate-js](https://github.com/johnfactotum/foliate-js), which is MIT licensed.
- [zip.js](https://github.com/gildas-lormeau/zip.js), which is licensed under the BSD-3-Clause license.
- [fflate](https://github.com/101arrowz/fflate), which is MIT licensed.
- [PDF.js](https://github.com/mozilla/pdf.js), which is licensed under Apache License 2.0.
- [daisyUI](https://github.com/saadeghi/daisyui), which is MIT licensed.
- [marked](https://github.com/markedjs/marked), which is MIT licensed.
- [next.js](https://github.com/vercel/next.js), which is MIT licensed.
- [react-icons](https://github.com/react-icons/react-icons), which has various open-source licenses.
- [react](https://github.com/facebook/react), which is MIT licensed.
- [tauri](https://github.com/tauri-apps/tauri), which is MIT licensed.

The following fonts are utilized in this software, either bundled within the application or provided through web fonts:

[Bitter](https://fonts.google.com/specimen/Bitter), [Fira Code](https://fonts.google.com/specimen/Fira+Code), [Inter](https://fonts.google.com/specimen/Inter), [Literata](https://fonts.google.com/specimen/Literata), [Merriweather](https://fonts.google.com/specimen/Merriweather), [Noto Sans](https://fonts.google.com/specimen/Noto+Sans), [Roboto](https://fonts.google.com/specimen/Roboto), [LXGW WenKai](https://github.com/lxgw/LxgwWenKai), [MiSans](https://hyperos.mi.com/font/en/), [Source Han](https://github.com/adobe-fonts/source-han-sans/), [WenQuanYi Micro Hei](http://wenq.org/wqy2/)

We would also like to thank the [Web Chinese Fonts Plan](https://chinese-font.netlify.app) for offering open-source tools that enable the use of Chinese fonts on the web.

---

<div align="center" style="color: gray;">Happy reading with Readest!</div>

[badge-website]: https://img.shields.io/badge/website-readest.com-orange
[badge-web-app]: https://img.shields.io/badge/read%20online-web.readest.com-orange
[badge-license]: https://img.shields.io/github/license/readest/readest?color=teal
[badge-release]: https://img.shields.io/github/release/readest/readest?color=green
[badge-platforms]: https://img.shields.io/badge/platforms-macOS%2C%20Windows%2C%20Linux%2C%20Android%2C%20iOS%2C%20Web%2C%20PWA-green
[badge-last-commit]: https://img.shields.io/github/last-commit/readest/readest?color=blue
[badge-commit-activity]: https://img.shields.io/github/commit-activity/m/readest/readest?color=blue
[badge-discord]: https://img.shields.io/discord/1314226120886976544?color=5865F2&label=discord&labelColor=black&logo=discord&logoColor=white&style=flat-square
[badge-hellogithub]: https://abroad.hellogithub.com/v1/widgets/recommend.svg?rid=8a5b6ade2aee461a8bd94e59200682a7&claim_uid=eRLUbPOy2qZtDgw&theme=small
[badge-donate]: https://donate.readest.com/badge.svg
[badge-deepwiki]: https://deepwiki.com/badge.svg
[badge-reddit]: https://img.shields.io/reddit/subreddit-subscribers/readest?style=flat&logo=reddit&color=F37E41
[badge-language-coverage]: https://img.shields.io/badge/coverage-53%25%20population%20🌍-green
[link-donate]: https://donate.readest.com/?tickers=btc%2Ceth%2Csol%2Cusdc
[link-appstore]: https://apps.apple.com/app/apple-store/id6738622779?pt=127463130&ct=github&mt=8
[link-website]: https://readest.com?utm_source=github&utm_medium=referral&utm_campaign=readme
[link-flathub]: https://flathub.org/en/apps/com.bilingify.readest
[link-web-readest]: https://web.readest.com
[link-gh-releases]: https://github.com/readest/readest/releases
[link-gh-commits]: https://github.com/readest/readest/commits/main
[link-gh-pulse]: https://github.com/readest/readest/pulse
[link-gh-wiki]: https://github.com/readest/readest/wiki
[link-discord]: https://discord.gg/gntyVNk3BJ
[link-parallel-read]: https://readest.com/#parallel-read
[link-koreader]: https://github.com/koreader/koreader
[link-hellogithub]: https://hellogithub.com/repository/8a5b6ade2aee461a8bd94e59200682a7
[link-deepwiki]: https://deepwiki.com/readest/readest
[link-locales]: https://github.com/readest/readest/tree/main/apps/readest-app/public/locales
[link-kosync-wiki]: https://github.com/readest/readest/wiki/Sync-with-Koreader-devices
[link-reddit]: https://reddit.com/r/readest/
