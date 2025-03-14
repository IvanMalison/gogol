{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Container.Projects.Zones.Clusters.LegacyAbac
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.clusters.legacyAbac@.
module Gogol.Container.Projects.Zones.Clusters.LegacyAbac
  ( -- * Resource
    ContainerProjectsZonesClustersLegacyAbacResource,

    -- ** Constructing a Request
    ContainerProjectsZonesClustersLegacyAbac (..),
    newContainerProjectsZonesClustersLegacyAbac,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.zones.clusters.legacyAbac@ method which the
-- 'ContainerProjectsZonesClustersLegacyAbac' request conforms to.
type ContainerProjectsZonesClustersLegacyAbacResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "clusters"
    Core.:> Core.Capture "clusterId" Core.Text
    Core.:> "legacyAbac"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetLegacyAbacRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Enables or disables the ABAC authorization mechanism on a cluster.
--
-- /See:/ 'newContainerProjectsZonesClustersLegacyAbac' smart constructor.
data ContainerProjectsZonesClustersLegacyAbac = ContainerProjectsZonesClustersLegacyAbac
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field.
    clusterId :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetLegacyAbacRequest,
    -- | Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesClustersLegacyAbac' with the minimum fields required to make a request.
newContainerProjectsZonesClustersLegacyAbac ::
  -- |  Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field. See 'clusterId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetLegacyAbacRequest ->
  -- |  Deprecated. The Google Developers Console <https://cloud.google.com/resource-manager/docs/creating-managing-projects project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the cluster resides. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesClustersLegacyAbac
newContainerProjectsZonesClustersLegacyAbac clusterId payload projectId zone =
  ContainerProjectsZonesClustersLegacyAbac
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clusterId = clusterId,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ContainerProjectsZonesClustersLegacyAbac
  where
  type
    Rs ContainerProjectsZonesClustersLegacyAbac =
      Operation
  type
    Scopes ContainerProjectsZonesClustersLegacyAbac =
      '[CloudPlatform'FullControl]
  requestClient
    ContainerProjectsZonesClustersLegacyAbac {..} =
      go
        projectId
        zone
        clusterId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsZonesClustersLegacyAbacResource
            )
            Core.mempty
