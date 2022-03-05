import React from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'No limits on Technologies',
    Svg: require('@site/static/img/undraw_docusaurus_react.svg').default,
    description: (
      <>
        Tired and bored of making clones in <code>MERN</code>? We will go over scores of new technologies and APIs even
        as we keep building the application to explore a lot more possibilities. As they say, sky is the limit!
      </>
    ),
  },
  {
    title: 'Explore and Learn more',
    Svg: require('@site/static/img/undraw_docusaurus_mountain.svg').default,
    description: (
      <>
        In this series, we will deal with concepts which can be independently applied to any other project as well. The
        videos have been designed in a way that they can be watched as stand-alone tutorials.
      </>
    ),
  },
  {
    title: 'Look at Real Life examples',
    Svg: require('@site/static/img/undraw_docusaurus_tree.svg').default,
    description: (
      <>
        LinkedIn is a very commonly used application, and learning how to build one will provide deep insights into how
        applications like these work. This will help you to think on similar lines for other applications.
      </>
    ),
  },
];

function Feature({ Svg, title, description }) {
  return (
    <div className={clsx('col col--4')}>
      <div className='text--center'>
        <Svg className={styles.featureSvg} role='img' />
      </div>
      <div className='text--center padding-horiz--md'>
        <h3>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className='container'>
        <div className='row'>
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
