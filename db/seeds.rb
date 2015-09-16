# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# three country myanmar, singapore and japan
 country = Country.create([

  {name:"Myanmar", country_code:"+95"},
  {name:"Singapore", country_code:"+65"},
  {name:"Japan", country_code:"+81"}

])


 organization = Organization.create([

# Myanmar has five organization with two child organiaztion on each one.

# Organization AOKMM has two child organization. First level Org2AOKMM and second level Org3AOKMM.
  {name:"OrgAOKMM", public_name:"AOKMM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:""},
  {name:"Org2AOKMM", public_name:"AOK2MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"1"},
  {name:"Org3AOKMM", public_name:"AOK3MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"2"},
# Organization BOKMM has two child organization. First level Org2BOKMM and second level Org3BOKMM.   
  {name:"OrgBOKMM", public_name:"BOKMM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:""},
  {name:"Org2BOKMM", public_name:"BOK2MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"4"},
  {name:"Org3BOKMM", public_name:"BOK3MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"5"},
   
  {name:"OrgCOKMM", public_name:"COKMM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:""},
  {name:"Org2COKMM", public_name:"COK2MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"6"},
  {name:"Org3COKMM", public_name:"COK3MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"7"},
   
  {name:"OrgDOKMM", public_name:"DOKMM", type:"", pricing_policy:"Service", country_id:"1", parent_id:""},
  {name:"Org2DOKMM", public_name:"DOK2MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"9"},
  {name:"Org3DOKMM", public_name:"DOK3MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"10"},

  {name:"OrgEOKMM", public_name:"EOKMM", type:"", pricing_policy:"Dealer", country_id:"1", parent_id:""},
  {name:"Org2EOKMM", public_name:"EOK2MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"12"},
  {name:"Org3EOKMM", public_name:"EOK3MM", type:"", pricing_policy:"Show room", country_id:"1", parent_id:"13"},


# Singapore has five organization with two child organiaztion on each one.

# Organization AOKSG has two child organization. First level Org2AOKSG and second level Org3AOKSG.
  {name:"OrgAOKSG", public_name:"AOKSG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:""},
  {name:"Org2AOKSG", public_name:"AOK2SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"14"},
  {name:"Org3AOKSG", public_name:"AOK3SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"15"},
# Organization BOKSG has two child organization. First level Org2BOKSG and second level Org3BOKSG.   
  {name:"OrgBOKSG", public_name:"BOKSG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:""},
  {name:"Org2BOKSG", public_name:"BOK2SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"16"},
  {name:"Org3BOKSG", public_name:"BOK3SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"17"},
   
  {name:"OrgCOKSG", public_name:"COKSG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:""},
  {name:"Org2COKSG", public_name:"COK2SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"18"},
  {name:"Org3COKSG", public_name:"COK3SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"19"},
   
  {name:"OrgDOKSG", public_name:"DOKSG", type:"", pricing_policy:"Service", country_id:"2", parent_id:""},
  {name:"Org2DOKSG", public_name:"DOK2SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"20"},
  {name:"Org3DOKSG", public_name:"DOK3SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"21"},

  {name:"OrgEOKSG", public_name:"EOKSG", type:"", pricing_policy:"Dealer", country_id:"2", parent_id:""},
  {name:"Org2EOKSG", public_name:"EOK2SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"22"},
  {name:"Org3EOKSG", public_name:"EOK3SG", type:"", pricing_policy:"Show room", country_id:"2", parent_id:"23"},

# Japan has five organization with two child organiaztion on each one.

# Organization AOKJP has two child organization. First level Org2AOKJP and second level Org3AOKJP.
  {name:"OrgAOKJP", public_name:"AOKJP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:""},
  {name:"Org2AOKJP", public_name:"AOK2JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"24"},
  {name:"Org3AOKJP", public_name:"AOK3JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"25"},
# Organization BOKJP has two child organization. First level Org2BOKJP and second level Org3BOKJP.   
  {name:"OrgBOKJP", public_name:"BOKJP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:""},
  {name:"Org2BOKJP", public_name:"BOK2JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"26"},
  {name:"Org3BOKJP", public_name:"BOK3JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"27"},
   
  {name:"OrgCOKJP", public_name:"COKJP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:""},
  {name:"Org2COKJP", public_name:"COK2JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"28"},
  {name:"Org3COKJP", public_name:"COK3JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"29"},
   
  {name:"OrgDOKJP", public_name:"DOKJP", type:"", pricing_policy:"Service", country_id:"3", parent_id:""},
  {name:"Org2DOKJP", public_name:"DOK2JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"30"},
  {name:"Org3DOKJP", public_name:"DOK3JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"31"},

  {name:"OrgEOKJP", public_name:"EOKJP", type:"", pricing_policy:"Dealer", country_id:"3", parent_id:""},
  {name:"Org2EOKJP", public_name:"EOK2JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"32"},
  {name:"Org3EOKJP", public_name:"EOK3JP", type:"", pricing_policy:"Show room", country_id:"3", parent_id:"33"}


])



 location = Location.create([

  {name:"Yangon", address:"Yangon,Myanmar"},
  {name:"Jurong", address:"Jurong,Singapore"},
  {name:"Tokyo", address:"Tokyo,Japan"}

])