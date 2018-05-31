'use strict';

exports = module.exports = {
  // List of user roles
  userRoles: ['guest', 'user', 'admin'],
  path: '/qae',
  cpd_path: 'https://simpatico.business-engineering.it/cpd/es/diagram',
  gamification: true,
  gamification_path: 'http://simpatico:simpatico@gamification-engine:8010/gamification/',
  gamification_gameId:'5a5c9e5d3d30274522896607',
  language: 'en',
  secondlanguage: 'it',
  profanityFilter: true,
  home_searchbar: true,
  home_categories: true,
  home_ask_button: true,
  home_categories_list: [
    {title :'Benestar', link :'questions/list/BS607A', image :'assets/images/svg/tag.png' },
    {title :'School', link :'categories/list/5913170c65c17ab8c2406a96', image :'assets/images/svg/5913170c65c17ab8c2406a96.png' },
    {title :'Community', link :'categories/list/5913170c65c17ab8c2406a97', image :'assets/images/svg/5913170c65c17ab8c2406a97.png' },
    {title :'Social Service', link :'categories/list/5913170c65c17ab8c2406a98', image :'assets/images/svg/5913170c65c17ab8c2406a98.png' },
  ]
};
