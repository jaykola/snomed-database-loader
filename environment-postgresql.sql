/* create the Full S-CT data tables */

drop table if exists concept_f cascade;
create table concept_f(
  id varchar(18) not null primary key,
  effectivetime char(8) not null unique,
  active char(1) not null unique,
  moduleid varchar(18) not null unique,
  definitionstatusid varchar(18) not null unique 
);

drop table if exists description_f cascade;
create table description_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  conceptid varchar(18) not null unique,
  languagecode varchar(2) not null unique,
  typeid varchar(18) not null unique,
  term varchar(255) not null unique,
  casesignificanceid varchar(18) not null unique 
);

drop table if exists textdefinition_f cascade;
create table textdefinition_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null references concept_f(effectivetime),
  active char(1) not null references concept_f(active),
  moduleid varchar(18) not null references concept_f(moduleid),
  conceptid varchar(18) not null references description_f(conceptid),
  languagecode varchar(2) not null references description_f(conceptid),
  typeid varchar(18) not null references description_f(conceptid),
  term varchar(1024) not null unique,
  casesignificanceid varchar(18) not null references description_f(conceptid)
);

drop table if exists relationship_f cascade;
create table relationship_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null references concept_f(effectivetime),
  active char(1) not null references concept_f(active),
  moduleid varchar(18) not null references concept_f(moduleid),
  sourceid varchar(18) not null unique,
  destinationid varchar(18) not null unique,
  relationshipgroup varchar(18) not null unique,
  typeid varchar(18) not null references description_f(conceptid),
  characteristictypeid varchar(18) not null unique,
  modifierid varchar(18) not null unique 
);

drop table if exists stated_relationship_f cascade;
create table stated_relationship_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  sourceid varchar(18) not null references relationship(source_id),
  destinationid varchar(18) not null references relationship(destinationid),
  relationshipgroup varchar(18) not null references relationship_f(relationshipgroup),
  typeid varchar(18) not null references relationship_f(typeid),
  characteristictypeid varchar(18) not null references relationship_f(characteristictypeid),
  modifierid varchar(18) not null references relationship_f(modifierid)
);

drop table if exists langrefset_f cascade;
create table langrefset_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  refsetid varchar(18) not null unique,
  referencedcomponentid varchar(18) not null unique,
  acceptabilityid varchar(18) not null unique 
);

drop table if exists associationrefset_d cascade;
create table associationrefset_d(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  refsetid varchar(18) not null references langrefset_f(refsetid),
  referencedcomponentid varchar(18) not null references langrefset_f(referencedcomponentid),
  targetcomponentid varchar(18) not null unique 
);

drop table if exists attributevaluerefset_f cascade;
create table attributevaluerefset_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  refsetid varchar(18) not null references langrefset_f(refsetid),
  referencedcomponentid varchar(18) not null references langrefset_f(referencedcomponentid),
  valueid varchar(18) not null unique 
);

drop table if exists simplemaprefset_f cascade;
create table simplemaprefset_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  refsetid varchar(18) not null references langrefset_f(refsetid),
  referencedcomponentid varchar(18) not null references langrefset_f(referencedcomponentid),
  maptarget varchar(32) not null unique 
);

drop table if exists simplerefset_f cascade;
create table simplerefset_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  refsetid varchar(18) not null references langrefset_f(refsetid),
  referencedcomponentid varchar(18) not null references langrefset_f(referencedcomponentid)
);

drop table if exists complexmaprefset_f cascade;
create table complexmaprefset_f(
  id varchar(18) not null references concept_f(id),
  effectivetime char(8) not null  references concept_f(effectivetime),
  active char(1) not null  references concept_f(active),
  moduleid varchar(18) not null  references concept_f(moduleid),
  refsetid varchar(18) not null references langrefset_f(refsetid),
  referencedcomponentid varchar(18) not null references langrefset_f(referencedcomponentid),
  mapGroup smallint not null unique,
  mapPriority smallint not null unique,
  mapRule varchar(18) unique,
  mapAdvice varchar(18) unique,
  mapTarget varchar(18) unique,
  correlationId varchar(18) not null unique 
);
