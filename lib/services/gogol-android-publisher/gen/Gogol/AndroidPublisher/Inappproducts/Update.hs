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
-- Module      : Gogol.AndroidPublisher.Inappproducts.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.update@.
module Gogol.AndroidPublisher.Inappproducts.Update
  ( -- * Resource
    AndroidPublisherInappproductsUpdateResource,

    -- ** Constructing a Request
    AndroidPublisherInappproductsUpdate (..),
    newAndroidPublisherInappproductsUpdate,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.inappproducts.update@ method which the
-- 'AndroidPublisherInappproductsUpdate' request conforms to.
type AndroidPublisherInappproductsUpdateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "inappproducts"
    Core.:> Core.Capture "sku" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "autoConvertMissingPrices" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] InAppProduct
    Core.:> Core.Put '[Core.JSON] InAppProduct

-- | Updates an in-app product (i.e. a managed product or a subscriptions).
--
-- /See:/ 'newAndroidPublisherInappproductsUpdate' smart constructor.
data AndroidPublisherInappproductsUpdate = AndroidPublisherInappproductsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If set to true, and the in-app product with the given package_name and sku doesn\'t exist, the in-app product will be created.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | If true the prices for all regions targeted by the parent app that don\'t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
    autoConvertMissingPrices :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: InAppProduct,
    -- | Unique identifier for the in-app product.
    sku :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInappproductsUpdate' with the minimum fields required to make a request.
newAndroidPublisherInappproductsUpdate ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InAppProduct ->
  -- |  Unique identifier for the in-app product. See 'sku'.
  Core.Text ->
  AndroidPublisherInappproductsUpdate
newAndroidPublisherInappproductsUpdate packageName payload sku =
  AndroidPublisherInappproductsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowMissing = Core.Nothing,
      autoConvertMissingPrices = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      sku = sku,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherInappproductsUpdate
  where
  type
    Rs AndroidPublisherInappproductsUpdate =
      InAppProduct
  type
    Scopes AndroidPublisherInappproductsUpdate =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherInappproductsUpdate {..} =
    go
      packageName
      sku
      xgafv
      accessToken
      allowMissing
      autoConvertMissingPrices
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
              Core.Proxy
                AndroidPublisherInappproductsUpdateResource
          )
          Core.mempty
