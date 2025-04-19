import React from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Using Domain Driven Design',
    Svg: require('../../../static/img/ddd.svg').default,
    description: (
      <>
        Domain Driven Design provides an ideal methodology for the high-level design of a Microservice-based system architectures (MSA), and for sharing a common understanding
        and requirements of a system between technical staff and business stakeholders.
      </>
    ),
  },
  {
    title: 'Implementing with Cloud-Native Architecture',
    Svg: require('../../../static/img/cncf.svg').default,
    description: (
      <>
        Cloud-Native Architectures are oriented towards implementation of cohesive and loosely-coupled microservices, that may be quickly-scaled to meet user demands,
        and deployed frequently with less-risk for change agility,  using DevOps tooling and methodologies.
      </>
    ),
  },
  {
    title: 'Powering with AWS DevOps Tools and Cloud Platform',
    Svg: require('../../../static/img/AWS.svg').default,
    description: (
      <>
        AWS has been selected as the Cloud provider for hosting The Better Store, due to its breadth of service offerings and existing skills within our development team.
        TBS is aimed at demonstrating the AWS Well-Architected Framework, and evaluating + demonstrating AWS services that are deemed best-suited to function.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <Svg className={styles.featureSvg} alt={title} baseProfile="full">
        </Svg>
      </div>
      <div className="text--center padding-horiz--md">
        <h3>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
