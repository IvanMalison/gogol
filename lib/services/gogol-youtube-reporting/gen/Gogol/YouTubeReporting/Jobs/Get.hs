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
-- Module      : Gogol.YouTubeReporting.Jobs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference> for @youtubereporting.jobs.get@.
module Gogol.YouTubeReporting.Jobs.Get
  ( -- * Resource
    YouTubeReportingJobsGetResource,

    -- ** Constructing a Request
    YouTubeReportingJobsGet (..),
    newYouTubeReportingJobsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.YouTubeReporting.Types

-- | A resource alias for @youtubereporting.jobs.get@ method which the
-- 'YouTubeReportingJobsGet' request conforms to.
type YouTubeReportingJobsGetResource =
  "v1"
    Core.:> "jobs"
    Core.:> Core.Capture "jobId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "onBehalfOfContentOwner" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Job

-- | Gets a job.
--
-- /See:/ 'newYouTubeReportingJobsGet' smart constructor.
data YouTubeReportingJobsGet = YouTubeReportingJobsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the job to retrieve.
    jobId :: Core.Text,
    -- | The content owner\'s external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).
    onBehalfOfContentOwner :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'YouTubeReportingJobsGet' with the minimum fields required to make a request.
newYouTubeReportingJobsGet ::
  -- |  The ID of the job to retrieve. See 'jobId'.
  Core.Text ->
  YouTubeReportingJobsGet
newYouTubeReportingJobsGet jobId =
  YouTubeReportingJobsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      jobId = jobId,
      onBehalfOfContentOwner = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest YouTubeReportingJobsGet where
  type Rs YouTubeReportingJobsGet = Job
  type
    Scopes YouTubeReportingJobsGet =
      '[YtAnalyticsMonetary'Readonly, YtAnalytics'Readonly]
  requestClient YouTubeReportingJobsGet {..} =
    go
      jobId
      xgafv
      accessToken
      callback
      onBehalfOfContentOwner
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      youTubeReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy YouTubeReportingJobsGetResource
          )
          Core.mempty
