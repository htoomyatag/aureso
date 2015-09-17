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
  {name:"OrgAOKMM", public_name:"AOKMM", pricing_policy:"Flexible", organization_type:"Show room", country_id:"1", parent_id:""},
  {name:"Org2AOKMM", public_name:"AOK2MM", pricing_policy:"Flexible", organization_type:"Show room", country_id:"1", parent_id:"1"},
  {name:"Org3AOKMM", public_name:"AOK3MM", pricing_policy:"Flexible", organization_type:"Show room", country_id:"1", parent_id:"2"},
# Organization BOKMM has two child organization. First level Org2BOKMM and second level Org3BOKMM.   
  {name:"OrgBOKMM", public_name:"BOKMM", pricing_policy:"Fixed", organization_type:"Show room", country_id:"1", parent_id:""},
  {name:"Org2BOKMM", public_name:"BOK2MM", pricing_policy:"Fixed", organization_type:"Show room", country_id:"1", parent_id:"4"},
  {name:"Org3BOKMM", public_name:"BOK3MM", pricing_policy:"Fixed", organization_type:"Show room", country_id:"1", parent_id:"5"},
   
  {name:"OrgCOKMM", public_name:"COKMM", pricing_policy:"Prestige", organization_type:"Show room", country_id:"1", parent_id:""},
  {name:"Org2COKMM", public_name:"COK2MM", pricing_policy:"Prestige", organization_type:"Show room", country_id:"1", parent_id:"7"},
  {name:"Org3COKMM", public_name:"COK3MM", pricing_policy:"Prestige", organization_type:"Show room", country_id:"1", parent_id:"8"},
   
  {name:"OrgDOKMM", public_name:"DOKMM", pricing_policy:"Flexible", organization_type:"Service", country_id:"1", parent_id:""},
  {name:"Org2DOKMM", public_name:"DOK2MM", pricing_policy:"Flexible", organization_type:"Show room", country_id:"1", parent_id:"10"},
  {name:"Org3DOKMM", public_name:"DOK3MM", pricing_policy:"Flexible", organization_type:"Show room", country_id:"1", parent_id:"11"},

  {name:"OrgEOKMM", public_name:"EOKMM", pricing_policy:"Fixed", organization_type:"Dealer", country_id:"1", parent_id:""},
  {name:"Org2EOKMM", public_name:"EOK2MM", pricing_policy:"Fixed", organization_type:"Show room", country_id:"1", parent_id:"13"},
  {name:"Org3EOKMM", public_name:"EOK3MM", pricing_policy:"Fixed", organization_type:"Show room", country_id:"1", parent_id:"14"},


# Singapore has five organization with two child organiaztion on each one.

# Organization AOKSG has two child organization. First level Org2AOKSG and second level Org3AOKSG.
  {name:"OrgAOKSG", public_name:"AOKSG", pricing_policy:"Prestige", organization_type:"Show room", country_id:"2", parent_id:""},
  {name:"Org2AOKSG", public_name:"AOK2SG", pricing_policy:"Prestige", organization_type:"Show room", country_id:"2", parent_id:"16"},
  {name:"Org3AOKSG", public_name:"AOK3SG", pricing_policy:"Prestige", organization_type:"Show room", country_id:"2", parent_id:"17"},
# Organization BOKSG has two child organization. First level Org2BOKSG and second level Org3BOKSG.   
  {name:"OrgBOKSG", public_name:"BOKSG", pricing_policy:"Flexible", organization_type:"Show room", country_id:"2", parent_id:""},
  {name:"Org2BOKSG", public_name:"BOK2SG", pricing_policy:"Flexible", organization_type:"Show room", country_id:"2", parent_id:"19"},
  {name:"Org3BOKSG", public_name:"BOK3SG", pricing_policy:"Flexible", organization_type:"Show room", country_id:"2", parent_id:"20"},
   
  {name:"OrgCOKSG", public_name:"COKSG", pricing_policy:"Fixed", organization_type:"Show room", country_id:"2", parent_id:""},
  {name:"Org2COKSG", public_name:"COK2SG", pricing_policy:"Fixed", organization_type:"Show room", country_id:"2", parent_id:"22"},
  {name:"Org3COKSG", public_name:"COK3SG", pricing_policy:"Fixed", organization_type:"Show room", country_id:"2", parent_id:"23"},
   
  {name:"OrgDOKSG", public_name:"DOKSG", pricing_policy:"Prestige", organization_type:"Service", country_id:"2", parent_id:""},
  {name:"Org2DOKSG", public_name:"DOK2SG", pricing_policy:"Prestige", organization_type:"Show room", country_id:"2", parent_id:"25"},
  {name:"Org3DOKSG", public_name:"DOK3SG", pricing_policy:"Prestige", organization_type:"Show room", country_id:"2", parent_id:"26"},

  {name:"OrgEOKSG", public_name:"EOKSG", pricing_policy:"Flexible", organization_type:"Dealer", country_id:"2", parent_id:""},
  {name:"Org2EOKSG", public_name:"EOK2SG", pricing_policy:"Flexible", organization_type:"Show room", country_id:"2", parent_id:"28"},
  {name:"Org3EOKSG", public_name:"EOK3SG", pricing_policy:"Flexible", organization_type:"Show room", country_id:"2", parent_id:"29"},

# Japan has five organization with two child organiaztion on each one.

# Organization AOKJP has two child organization. First level Org2AOKJP and second level Org3AOKJP.
  {name:"OrgAOKJP", public_name:"AOKJP", pricing_policy:"Prestige", organization_type:"Show room", country_id:"3", parent_id:""},
  {name:"Org2AOKJP", public_name:"AOK2JP", pricing_policy:"Prestige", organization_type:"Show room", country_id:"3", parent_id:"31"},
  {name:"Org3AOKJP", public_name:"AOK3JP", pricing_policy:"Prestige", organization_type:"Show room", country_id:"3", parent_id:"32"},
# Organization BOKJP has two child organization. First level Org2BOKJP and second level Org3BOKJP.   
  {name:"OrgBOKJP", public_name:"BOKJP", pricing_policy:"Flexible", organization_type:"Show room", country_id:"3", parent_id:""},
  {name:"Org2BOKJP", public_name:"BOK2JP", pricing_policy:"Flexible", organization_type:"Show room", country_id:"3", parent_id:"34"},
  {name:"Org3BOKJP", public_name:"BOK3JP", pricing_policy:"Flexible", organization_type:"Show room", country_id:"3", parent_id:"35"},
   
  {name:"OrgCOKJP", public_name:"COKJP", pricing_policy:"Prestige", organization_type:"Show room", country_id:"3", parent_id:""},
  {name:"Org2COKJP", public_name:"COK2JP", pricing_policy:"Prestige", organization_type:"Show room", country_id:"3", parent_id:"37"},
  {name:"Org3COKJP", public_name:"COK3JP", pricing_policy:"Prestige", organization_type:"Show room", country_id:"3", parent_id:"38"},
   
  {name:"OrgDOKJP", public_name:"DOKJP", pricing_policy:"Fixed", organization_type:"Service", country_id:"3", parent_id:""},
  {name:"Org2DOKJP", public_name:"DOK2JP", pricing_policy:"Fixed", organization_type:"Show room", country_id:"3", parent_id:"40"},
  {name:"Org3DOKJP", public_name:"DOK3JP", pricing_policy:"Fixed", organization_type:"Show room", country_id:"3", parent_id:"41"},

  {name:"OrgEOKJP", public_name:"EOKJP", pricing_policy:"Fixed", organization_type:"Dealer", country_id:"3", parent_id:""},
  {name:"Org2EOKJP", public_name:"EOK2JP", pricing_policy:"Fixed", organization_type:"Show room", country_id:"3", parent_id:"43"},
  {name:"Org3EOKJP", public_name:"EOK3JP", pricing_policy:"Fixed", organization_type:"Show room", country_id:"3", parent_id:"44"}


])



 location = Location.create([

  {name:"Yangon", address:"Yangon,Myanmar"},
  {name:"Jurong", address:"Jurong,Singapore"},
  {name:"Tokyo", address:"Tokyo,Japan"}

])