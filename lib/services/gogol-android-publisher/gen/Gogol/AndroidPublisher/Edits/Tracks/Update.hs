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
-- Module      : Gogol.AndroidPublisher.Edits.Tracks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a track.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.update@.
module Gogol.AndroidPublisher.Edits.Tracks.Update
  ( -- * Resource
    AndroidPublisherEditsTracksUpdateResource,

    -- ** Constructing a Request
    AndroidPublisherEditsTracksUpdate (..),
    newAndroidPublisherEditsTracksUpdate,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.edits.tracks.update@ method which the
-- 'AndroidPublisherEditsTracksUpdate' request conforms to.
type AndroidPublisherEditsTracksUpdateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "tracks"
    Core.:> Core.Capture "track" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Track
    Core.:> Core.Put '[Core.JSON] Track

-- | Updates a track.
--
-- /See:/ 'newAndroidPublisherEditsTracksUpdate' smart constructor.
data AndroidPublisherEditsTracksUpdate = AndroidPublisherEditsTracksUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: Track,
    -- | Identifier of the track. <https://developers.google.com/android-publisher/tracks#ff-track-name More on track name>
    track :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsTracksUpdate' with the minimum fields required to make a request.
newAndroidPublisherEditsTracksUpdate ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Track ->
  -- |  Identifier of the track. <https://developers.google.com/android-publisher/tracks#ff-track-name More on track name> See 'track'.
  Core.Text ->
  AndroidPublisherEditsTracksUpdate
newAndroidPublisherEditsTracksUpdate editId packageName payload track =
  AndroidPublisherEditsTracksUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      editId = editId,
      packageName = packageName,
      payload = payload,
      track = track,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsTracksUpdate
  where
  type Rs AndroidPublisherEditsTracksUpdate = Track
  type
    Scopes AndroidPublisherEditsTracksUpdate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsTracksUpdate {..} =
    go
      packageName
      editId
      track
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherEditsTracksUpdateResource
          )
          Core.mempty
