/* loads the SNOMED CT 'Full' release - replace filenames with relevant locations of base SNOMED CT release files*/
/* Filenames may need to change depending on the release you wish to upload, currently set to July 2014 release */

use snomedct;

COPY concept_f(id, effectivetime, active, moduleid, definitionstatusid) 
FROM 'RF2Release/Full/Terminology/sct2_Concept_Full_INT_20140731.txt' 
WITH DELIMITER '\t';
CSV HEADER;


COPY description_f(id, effectivetime, active, moduleid, conceptid, languagecode, typeid, term, casesignificanceid)
FROM 'RF2Release/Full/Terminology/sct2_Description_Full-en_INT_20140731.txt' 
WITH DELIMITER '\t';
CSV HEADER;


COPY textdefinition_f(id, effectivetime, active, moduleid, conceptid, languagecode, typeid, term, casesignificanceid)
FROM 'RF2Release/Full/Terminology/sct2_TextDefinition_Full-en_INT_20140731.txt'
WITH DELIMITER '\t';
CSV HEADER;


COPY relationship_f(id, effectivetime, active, moduleid, sourceid, destinationid, relationshipgroup, typeid,characteristictypeid, modifierid)
FROM 'RF2Release/Full/Terminology/sct2_Relationship_Full_INT_20140731.txt'
WITH DELIMITER '\t';
CSV HEADER;


COPY stated_relationship_f(id, effectivetime, active, moduleid, sourceid, destinationid, relationshipgroup, typeid,  characteristictypeid, modifierid)
FROM 'RF2Release/Full/Terminology/sct2_StatedRelationship_Full_INT_20140731.txt'  
WITH DELIMITER '\t';
CSV HEADER;

COPY langrefset_f(id, effectivetime, active, moduleid, refsetid, referencedcomponentid, acceptabilityid)
FROM 'RF2Release/Full/Refset/Language/der2_cRefset_LanguageFull-en_INT_20140731.txt' 
WITH DELIMITER '\t';
CSV HEADER;

COPY associationrefset_d(id, effectivetime, active, moduleid, refsetid, referencedcomponentid, targetcomponentid)
FROM 'RF2Release/Full/Refset/Content/der2_cRefset_AssociationReferenceFull_INT_20140731.txt'
WITH DELIMITER '\t';
CSV HEADER;


COPY attributevaluerefset_f(id, effectivetime, active, moduleid, refsetid, referencedcomponentid, valueid)
FROM 'RF2Release/Full/Refset/Content/der2_cRefset_AttributeValueFull_INT_20140731.txt'
WITH DELIMITER '\t';
CSV HEADER;

COPY simplemaprefset_f(id, effectivetime, active, moduleid, refsetid,  referencedcomponentid, maptarget);
FROM 'RF2Release/Full/Refset/Crossmap/der2_sRefset_SimpleMapFull_INT_20140731.txt'
WITH DELIMITER '\t';
CSV HEADER;

COPY simplerefset_f(id, effectivetime, active, moduleid, refsetid, referencedcomponentid)
FROM 'RF2Release/Full/Refset/Content/der2_Refset_SimpleFull_INT_20140731.txt' 
WITH DELIMITER '\t';
CSV HEADER;

COPY complexmaprefset_f(id, effectivetime, active, moduleid, refsetid, referencedcomponentid, mapGroup, mapPriority, mapRule,  mapAdvice, mapTarget, correlationId)
FROM 'RF2Release/Full/Refset/Map/der2_iissscRefset_ComplexMapFull_INT_20140731.txt'
WITH DELIMITER '\t';
CSV HEADER;
