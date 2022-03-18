{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Dataflow.Projects.Locations.Jobs.Snapshots.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists snapshots.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.locations.jobs.snapshots.list@.
module Gogol.Dataflow.Projects.Locations.Jobs.Snapshots.List
    (
    -- * Resource
      DataflowProjectsLocationsJobsSnapshotsListResource

    -- ** Constructing a Request
    , newDataflowProjectsLocationsJobsSnapshotsList
    , DataflowProjectsLocationsJobsSnapshotsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Dataflow.Types

-- | A resource alias for @dataflow.projects.locations.jobs.snapshots.list@ method which the
-- 'DataflowProjectsLocationsJobsSnapshotsList' request conforms to.
type DataflowProjectsLocationsJobsSnapshotsListResource
     =
     "v1b3" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "locations" Core.:>
             Core.Capture "location" Core.Text Core.:>
               "jobs" Core.:>
                 Core.Capture "jobId" Core.Text Core.:>
                   "snapshots" Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] ListSnapshotsResponse

-- | Lists snapshots.
--
-- /See:/ 'newDataflowProjectsLocationsJobsSnapshotsList' smart constructor.
data DataflowProjectsLocationsJobsSnapshotsList = DataflowProjectsLocationsJobsSnapshotsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | If specified, list snapshots created from this job.
    , jobId :: Core.Text
      -- | The location to list snapshots in.
    , location :: Core.Text
      -- | The project ID to list snapshots for.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataflowProjectsLocationsJobsSnapshotsList' with the minimum fields required to make a request.
newDataflowProjectsLocationsJobsSnapshotsList 
    ::  Core.Text
       -- ^  If specified, list snapshots created from this job. See 'jobId'.
    -> Core.Text
       -- ^  The location to list snapshots in. See 'location'.
    -> Core.Text
       -- ^  The project ID to list snapshots for. See 'projectId'.
    -> DataflowProjectsLocationsJobsSnapshotsList
newDataflowProjectsLocationsJobsSnapshotsList jobId location projectId =
  DataflowProjectsLocationsJobsSnapshotsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , jobId = jobId
    , location = location
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DataflowProjectsLocationsJobsSnapshotsList
         where
        type Rs DataflowProjectsLocationsJobsSnapshotsList =
             ListSnapshotsResponse
        type Scopes
               DataflowProjectsLocationsJobsSnapshotsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient
          DataflowProjectsLocationsJobsSnapshotsList{..}
          = go projectId location jobId xgafv accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dataflowService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DataflowProjectsLocationsJobsSnapshotsListResource)
                      Core.mempty

