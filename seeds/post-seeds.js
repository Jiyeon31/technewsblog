const { Post } = require('../models');

const postdata = [
  {
    title: 'Donec posuere metus vitae ipsum.',
    post_url: 'https://getbootstrap.com/docs/5.1/layout/columns/',
    user_id: 10
  },
  {
    title: 'Morbi non quam nec dui luctus rutrum.',
    post_url: 'https://www.nasa.gov/multimedia/nasatv/index.html#public',
    user_id: 8
  },
  {
    title: 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',
    post_url: 'https://www.javascript.com/',
    user_id: 1
  },
  {
    title: 'Nunc purus.',
    post_url: 'https://www.geeksforgeeks.org/node-js-split-function/',
    user_id: 4
  },
  {
    title: 'Pellentesque eget nunc.',
    post_url: 'https://github.com/',
    user_id: 7
  },
  {
    title: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
    post_url: 'https://coding-boot-camp.github.io/full-stack/mysql/mysql-installation-guide',
    user_id: 4
  },
  {
    title: 'In hac habitasse platea dictumst.',
    post_url: 'https://devcenter.heroku.com/articles/git',
    user_id: 1
  },
  {
    title: 'Morbi non quam nec dui luctus rutrum.',
    post_url: 'https://www.google.com/',
    user_id: 1
  },
  {
    title: 'Duis ac nibh.',
    post_url: 'https://www.mit.edu/',
    user_id: 9
  },
  {
    title: 'Curabitur at ipsum ac tellus semper interdum.',
    post_url: 'https://www.columbia.edu/',
    user_id: 5
  },
  {
    title: 'In hac habitasse platea dictumst.',
    post_url: 'https://www.nytimes.com/',
    user_id: 3
  },
  {
    title: 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.',
    post_url: 'https://www.w3schools.com/',
    user_id: 10
  },
  {
    title: 'Donec dapibus.',
    post_url: 'https://instagram.com/',
    user_id: 8
  },
  {
    title: 'Nulla tellus.',
    post_url: 'https://www.mysql.com/',
    user_id: 3
  },
  {
    title: 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',
    post_url: 'https://expressjs.com/',
    user_id: 3
  },
  {
    title:
      'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',
    post_url: 'https://nodejs.org/en/',
    user_id: 7
  },
  {
    title: 'In hac habitasse platea dictumst.',
    post_url: 'https://en.wikipedia.org/wiki/Main_Page',
    user_id: 6
  },
  {
    title: 'Etiam justo.',
    post_url: 'https://www.salesforce.com/',
    user_id: 4
  },
  {
    title: 'Nulla ut erat id mauris vulputate elementum.',
    post_url: 'https://www.couchbase.com/',
    user_id: 6
  },
  {
    title: 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.',
    post_url: 'https://www.npmjs.com/package/mysql2',
    user_id: 7
  }
];

const seedPosts = () => Post.bulkCreate(postdata);

module.exports = seedPosts;
