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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.delete@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Delete
  ( -- * Resource
    MlProjectsLocationsStudiesDeleteResource,

    -- ** Constructing a Request
    newMlProjectsLocationsStudiesDelete,
    MlProjectsLocationsStudiesDelete,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.delete@ method which the
-- 'MlProjectsLocationsStudiesDelete' request conforms to.
type MlProjectsLocationsStudiesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobuf__Empty

-- | Deletes a study.
--
-- /See:/ 'newMlProjectsLocationsStudiesDelete' smart constructor.
data MlProjectsLocationsStudiesDelete = MlProjectsLocationsStudiesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The study name.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesDelete' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesDelete ::
  -- |  Required. The study name. See 'name'.
  Core.Text ->
  MlProjectsLocationsStudiesDelete
newMlProjectsLocationsStudiesDelete name =
  MlProjectsLocationsStudiesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsLocationsStudiesDelete
  where
  type
    Rs MlProjectsLocationsStudiesDelete =
      GoogleProtobuf__Empty
  type
    Scopes MlProjectsLocationsStudiesDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient MlProjectsLocationsStudiesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      machineLearningService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MlProjectsLocationsStudiesDeleteResource
          )
          Core.mempty
