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
-- Module      : Gogol.Fitness.Users.DataSources.Datasets.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs an inclusive delete of all data points whose start and end times have any overlap with the time range specified by the dataset ID. For most data types, the entire data point will be deleted. For data types where the time span represents a consistent value (such as com.google.activity.segment), and a data point straddles either end point of the dataset, only the overlapping portion of the data point will be deleted.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.datasets.delete@.
module Gogol.Fitness.Users.DataSources.Datasets.Delete
  ( -- * Resource
    FitnessUsersDataSourcesDatasetsDeleteResource,

    -- ** Constructing a Request
    FitnessUsersDataSourcesDatasetsDelete (..),
    newFitnessUsersDataSourcesDatasetsDelete,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.dataSources.datasets.delete@ method which the
-- 'FitnessUsersDataSourcesDatasetsDelete' request conforms to.
type FitnessUsersDataSourcesDatasetsDeleteResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataSources"
    Core.:> Core.Capture "dataSourceId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Performs an inclusive delete of all data points whose start and end times have any overlap with the time range specified by the dataset ID. For most data types, the entire data point will be deleted. For data types where the time span represents a consistent value (such as com.google.activity.segment), and a data point straddles either end point of the dataset, only the overlapping portion of the data point will be deleted.
--
-- /See:/ 'newFitnessUsersDataSourcesDatasetsDelete' smart constructor.
data FitnessUsersDataSourcesDatasetsDelete = FitnessUsersDataSourcesDatasetsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The data stream ID of the data source that created the dataset.
    dataSourceId :: Core.Text,
    -- | Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \"startTime-endTime\" where startTime and endTime are 64 bit integers.
    datasetId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Delete a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesDatasetsDelete' with the minimum fields required to make a request.
newFitnessUsersDataSourcesDatasetsDelete ::
  -- |  The data stream ID of the data source that created the dataset. See 'dataSourceId'.
  Core.Text ->
  -- |  Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \"startTime-endTime\" where startTime and endTime are 64 bit integers. See 'datasetId'.
  Core.Text ->
  -- |  Delete a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDataSourcesDatasetsDelete
newFitnessUsersDataSourcesDatasetsDelete dataSourceId datasetId userId =
  FitnessUsersDataSourcesDatasetsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataSourceId = dataSourceId,
      datasetId = datasetId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDataSourcesDatasetsDelete
  where
  type Rs FitnessUsersDataSourcesDatasetsDelete = ()
  type
    Scopes FitnessUsersDataSourcesDatasetsDelete =
      '[ Fitness'Activity'Write,
         Fitness'BloodGlucose'Write,
         Fitness'BloodPressure'Write,
         Fitness'Body'Write,
         Fitness'BodyTemperature'Write,
         Fitness'HeartRate'Write,
         Fitness'Location'Write,
         Fitness'Nutrition'Write,
         Fitness'OxygenSaturation'Write,
         Fitness'ReproductiveHealth'Write,
         Fitness'Sleep'Write
       ]
  requestClient
    FitnessUsersDataSourcesDatasetsDelete {..} =
      go
        userId
        dataSourceId
        datasetId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fitnessService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FitnessUsersDataSourcesDatasetsDeleteResource
            )
            Core.mempty
