select 
	*
from
    umbracoPropertyData,
    cmsPropertyType,
    umbracoContentVersion
where
    umbracoPropertyData.propertyTypeId = cmsPropertyType.id
	-- For a specific Alias
    -- and cmsPropertyType.Alias = 'propertyAlias'
    and umbracoPropertyData.versionId = umbracoContentVersion.id
    and umbracoContentVersion.[current] = 1
	-- FOR a specific node
    -- and umbracoContentVersion.nodeId = 12345