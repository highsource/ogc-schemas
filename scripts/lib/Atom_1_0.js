var Atom_1_0_Module_Factory = function () {
  var Atom_1_0 = {
    n: 'Atom_1_0',
    dens: 'http:\/\/www.w3.org\/2005\/Atom',
    tis: [{
        ln: 'AtomPersonConstruct',
        ps: [{
            n: 'nameOrUriOrEmail',
            col: true,
            mx: false,
            dom: false,
            typed: false,
            etis: [{
                en: 'uri'
              }, {
                en: 'email'
              }, {
                en: 'name'
              }],
            t: 'ers'
          }]
      }, {
        ln: 'Link',
        ps: [{
            n: 'href',
            t: 'a'
          }, {
            n: 'rel',
            t: 'a'
          }, {
            n: 'type',
            t: 'a'
          }, {
            n: 'hreflang',
            t: 'a'
          }, {
            n: 'title',
            t: 'a'
          }, {
            n: 'length',
            t: 'a'
          }]
      }],
    eis: [{
        en: 'link',
        ti: 'Atom_1_0.Link'
      }, {
        en: 'author',
        ti: 'Atom_1_0.AtomPersonConstruct'
      }, {
        en: 'uri'
      }, {
        en: 'name'
      }, {
        en: 'email'
      }]
  };
  return {
    Atom_1_0: Atom_1_0
  };
};
if (typeof define === 'function' && define.amd) {
  define([], Atom_1_0_Module_Factory);
}
else {
  if (typeof module !== 'undefined' && module.exports) {
    module.exports.Atom_1_0 = Atom_1_0_Module_Factory().Atom_1_0;
  }
  else {
    var Atom_1_0 = Atom_1_0_Module_Factory().Atom_1_0;
  }
}