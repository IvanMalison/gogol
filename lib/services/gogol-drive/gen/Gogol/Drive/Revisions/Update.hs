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
-- Module      : Gogol.Drive.Revisions.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a revision with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.update@.
module Gogol.Drive.Revisions.Update
  ( -- * Resource
    DriveRevisionsUpdateResource,

    -- ** Constructing a Request
    DriveRevisionsUpdate (..),
    newDriveRevisionsUpdate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.revisions.update@ method which the
-- 'DriveRevisionsUpdate' request conforms to.
type DriveRevisionsUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "revisions"
    Core.:> Core.Capture "revisionId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Revision
    Core.:> Core.Patch '[Core.JSON] Revision

-- | Updates a revision with patch semantics.
--
-- /See:/ 'newDriveRevisionsUpdate' smart constructor.
data DriveRevisionsUpdate = DriveRevisionsUpdate
  { -- | The ID of the file.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Revision,
    -- | The ID of the revision.
    revisionId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveRevisionsUpdate' with the minimum fields required to make a request.
newDriveRevisionsUpdate ::
  -- |  The ID of the file. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Revision ->
  -- |  The ID of the revision. See 'revisionId'.
  Core.Text ->
  DriveRevisionsUpdate
newDriveRevisionsUpdate fileId payload revisionId =
  DriveRevisionsUpdate
    { fileId = fileId,
      payload = payload,
      revisionId = revisionId
    }

instance Core.GoogleRequest DriveRevisionsUpdate where
  type Rs DriveRevisionsUpdate = Revision
  type
    Scopes DriveRevisionsUpdate =
      '[Drive'FullControl, Drive'Appdata, Drive'File]
  requestClient DriveRevisionsUpdate {..} =
    go
      fileId
      revisionId
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveRevisionsUpdateResource
          )
          Core.mempty
