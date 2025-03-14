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
-- Module      : Gogol.Drive.Drives.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.create@.
module Gogol.Drive.Drives.Create
  ( -- * Resource
    DriveDrivesCreateResource,

    -- ** Constructing a Request
    DriveDrivesCreate (..),
    newDriveDrivesCreate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.drives.create@ method which the
-- 'DriveDrivesCreate' request conforms to.
type DriveDrivesCreateResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Drive
    Core.:> Core.Post '[Core.JSON] Drive

-- | Creates a shared drive.
--
-- /See:/ 'newDriveDrivesCreate' smart constructor.
data DriveDrivesCreate = DriveDrivesCreate
  { -- | Multipart request metadata.
    payload :: Drive,
    -- | An ID, such as a random UUID, which uniquely identifies this user\'s request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.
    requestId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesCreate' with the minimum fields required to make a request.
newDriveDrivesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Drive ->
  -- |  An ID, such as a random UUID, which uniquely identifies this user\'s request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned. See 'requestId'.
  Core.Text ->
  DriveDrivesCreate
newDriveDrivesCreate payload requestId =
  DriveDrivesCreate {payload = payload, requestId = requestId}

instance Core.GoogleRequest DriveDrivesCreate where
  type Rs DriveDrivesCreate = Drive
  type Scopes DriveDrivesCreate = '[Drive'FullControl]
  requestClient DriveDrivesCreate {..} =
    go
      (Core.Just requestId)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesCreateResource)
          Core.mempty
