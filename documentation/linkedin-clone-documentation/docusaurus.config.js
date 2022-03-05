// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'LinkedIn Clone',
  tagline:
    "Let's explore all the amazing features of LinkedIn and explore them together, while building the application from scratch.",
  url: 'https://imperial-lord.github.io',
  baseUrl: '/',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'Imperial-lord', // Usually your GitHub org/user name.
  projectName: 'linkedin-clone', // Usually your repo name.
  trailingSlash: false,

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          // Please change this to your repo.
          editUrl: 'https://github.com/Imperial-lord/linkedin-clone',
        },
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          editUrl: 'https://github.com/Imperial-lord/linkedin-clone',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      announcementBar: {
        id: 'support_me',
        content:
          'If you loved this project, subscribe to my <a target="_blank" rel="noopener noreferrer" href="https://www.youtube.com/channel/UCJ6D0HS8c9Il-eX5lGbAyGg">Youtube</a> channel and star this repository on <a target="_blank" rel="noopener noreferrer" href="https://github.com/Imperial-lord/linkedin-clone">GitHub</a>.',
        backgroundColor: '#fafbfc',
        textColor: '#091E42',
        isCloseable: false,
      },
      navbar: {
        title: 'LinkedIn Clone',
        logo: {
          alt: 'My Site Logo',
          src: 'img/logo.svg',
        },
        items: [
          {
            type: 'doc',
            docId: 'intro',
            position: 'left',
            label: 'Tutorial',
          },
          { to: '/blog', label: 'Blog', position: 'left' },
          {
            href: 'https://github.com/Imperial-lord/linkedin-clone',
            label: 'GitHub',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Docs',
            items: [
              {
                label: 'Tutorial',
                to: '/docs/intro',
              },
            ],
          },
          {
            title: 'Follow me',
            items: [
              {
                label: 'LinkedIn',
                href: 'https://discordapp.com/invite/docusaurus',
              },
              {
                label: 'Medium',
                href: 'https://medium.com/@absatyaprakash01',
              },
              {
                label: 'Twitter',
                href: 'https://twitter.com/AbSatyaprakash',
              },
            ],
          },
          {
            title: 'More',
            items: [
              {
                label: 'Blog',
                to: '/blog',
              },
              {
                label: 'GitHub',
                href: 'https://github.com/Imperial-lord/linkedin-clone',
              },
            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} LinkedIn Clone, Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
