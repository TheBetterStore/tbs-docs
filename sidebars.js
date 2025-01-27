/**
 * Creating a sidebar enables you to:
 - create an ordered group of docs
 - render a sidebar for each doc of that group
 - provide next/previous navigation

 The sidebars can be generated from the filesystem, or explicitly defined here.

 Create as many sidebars as you want.
 */

// @ts-check

/** @type {import('@docusaurus/plugin-content-docs').SidebarsConfig} */
const sidebars = {
  // By default, Docusaurus generates a sidebar from the docs folder structure
  //tutorialSidebar: [{type: 'autogenerated', dirName: '.'}],

  docs: [
    'intro',
    {
      type: 'category',
      label: 'Part 1: Domain Driven Design',
      items: [
        'domain-driven-design/Overview',
        'domain-driven-design/Strategic Patterns',
        'domain-driven-design/Tactical Patterns']
    },
    {
      type: 'category',
      label: 'Part 2: Cloud Native Design & Implementation',
      items: [
        'cloud-native-design+implementation/Overview',
        'cloud-native-design+implementation/MSA Architecture Patterns',
        'cloud-native-design+implementation/Target View'
      ]
    },
    {
      type: 'category',
      label: 'Part 3: DevSecOps',
      items: [
        'devsecops/Overview',
      ]
    },
    {
      type: 'category',
      label: 'Part 4: FrontEnd',
      items: [
        'frontend/Overview',
      ]
    },
    {
      type: 'category',
      label: 'Part 5: Monitoring',
      items: [
        'monitoring/Overview',
      ]
    },
    {
      type: 'category',
      label: 'Part 6: Other Projects',
      items: [
        'other-projects/Overview',
      ]
    },
    {
      type: 'doc',
      id: 'References',
      label: 'References',
    }
  ]
  // But you can create a sidebar manually
  /*

  tutorialSidebar: [
    {
      type: 'category',
      label: 'Tutorial',
      items: ['hello'],
    },
  ],
   */
};

module.exports = sidebars;
