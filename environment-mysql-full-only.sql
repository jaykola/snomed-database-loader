
/* create the Full S-CT data tables */

drop table if exists concept_f;
create table concept_f(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
definitionstatusid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_definitionstatusid(definitionstatusid)
) engine=myisam default charset=utf8;


drop table if exists description_f;
create table description_f(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
conceptid varchar(18) not null,
languagecode varchar(2) not null,
typeid varchar(18) not null,
term varchar(255) not null,
casesignificanceid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_conceptid(conceptid),
key idx_languagecode(languagecode),
key idx_typeid(typeid),
key idx_term(term),
key idx_casesignificanceid(casesignificanceid)
) engine=myisam default charset=utf8;

drop table if exists textdefinition_f;
create table textdefinition_f(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
conceptid varchar(18) not null,
languagecode varchar(2) not null,
typeid varchar(18) not null,
term varchar(1024) not null,
casesignificanceid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_conceptid(conceptid),
key idx_languagecode(languagecode),
key idx_typeid(typeid),
key idx_term(term),
key idx_casesignificanceid(casesignificanceid)
) engine=myisam default charset=utf8;

drop table if exists relationship_f;
create table relationship_f(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
sourceid varchar(18) not null,
destinationid varchar(18) not null,
relationshipgroup varchar(18) not null,
typeid varchar(18) not null,
characteristictypeid varchar(18) not null,
modifierid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_sourceid(sourceid),
key idx_destinationid(destinationid),
key idx_relationshipgroup(relationshipgroup),
key idx_typeid(typeid),
key idx_characteristictypeid(characteristictypeid),
key idx_modifierid(modifierid)
) engine=myisam default charset=utf8;

drop table if exists stated_relationship_f;
create table stated_relationship_f(
id varchar(18) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
sourceid varchar(18) not null,
destinationid varchar(18) not null,
relationshipgroup varchar(18) not null,
typeid varchar(18) not null,
characteristictypeid varchar(18) not null,
modifierid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_sourceid(sourceid),
key idx_destinationid(destinationid),
key idx_relationshipgroup(relationshipgroup),
key idx_typeid(typeid),
key idx_characteristictypeid(characteristictypeid),
key idx_modifierid(modifierid)
) engine=myisam default charset=utf8;

drop table if exists langrefset_f;
create table langrefset_f(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
acceptabilityid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_refsetid(refsetid),
key idx_referencedcomponentid(referencedcomponentid),
key idx_acceptabilityid(acceptabilityid)
) engine=myisam default charset=utf8;

drop table if exists associationrefset_f;
create table associationrefset_f(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
targetcomponentid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_refsetid(refsetid),
key idx_referencedcomponentid(referencedcomponentid),
key idx_targetcomponentid(targetcomponentid)
) engine=myisam default charset=utf8;

drop table if exists attributevaluerefset_f;
create table attributevaluerefset_f(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
valueid varchar(18) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_refsetid(refsetid),
key idx_referencedcomponentid(referencedcomponentid),
key idx_valueid(valueid)
) engine=myisam default charset=utf8;

drop table if exists simplemaprefset_f;
create table simplemaprefset_f(
id varchar(36) not null,
effectivetime char(8) not null,
active char(1) not null,
moduleid varchar(18) not null,
refsetid varchar(18) not null,
referencedcomponentid varchar(18) not null,
maptarget varchar(32) not null,
key idx_id(id),
key idx_effectivetime(effectivetime),
key idx_active(active),
key idx_moduleid(moduleid),
key idx_refsetid(refsetid),
key idx_referencedcomponentid(referencedcomponentid),
key idx_maptarget(maptarget)
) engine=myisam default charset=utf8;

drop table if exists simplerefset_f;
create table simplerefset_f(
	id varchar(36) not null,
	effectivetime char(8) not null,
	active char(1) not null,
	moduleid varchar(18) not null,
	refsetid varchar(18) not null,
	referencedcomponentid varchar(18) not null,
	key idx_id(id),
	key idx_effectivetime(effectivetime),
	key idx_active(active),
	key idx_moduleid(moduleid),
	key idx_refsetid(refsetid),
	key idx_referencedcomponentid(referencedcomponentid)
) engine=myisam default charset=utf8;

drop table if exists complexmaprefset_f;
create table complexmaprefset_f(
	id varchar(36) not null,
	effectivetime char(8) not null,
	active char(1) not null,
	moduleid varchar(18) not null,
	refsetid varchar(18) not null,
	referencedcomponentid varchar(18) not null,
	mapGroup smallint not null,
	mapPriority smallint not null,
	mapRule varchar(18),
	mapAdvice varchar(18),
	mapTarget varchar(18),
	correlationId varchar(18) not null,
	key idx_id(id),
	key idx_effectivetime(effectivetime),
	key idx_active(active),
	key idx_moduleid(moduleid),
	key idx_refsetid(refsetid),
	key idx_referencedcomponentid(referencedcomponentid),
	key idx_mapTarget(mapTarget)
) engine=myisam default charset=utf8;
