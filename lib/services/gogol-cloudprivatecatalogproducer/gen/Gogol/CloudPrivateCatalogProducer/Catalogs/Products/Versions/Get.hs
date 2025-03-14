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
-- Module      : Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the requested Version resource.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference> for @cloudprivatecatalogproducer.catalogs.products.versions.get@.
module Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get
  ( -- * Resource
    CloudPrivateCatalogProducerCatalogsProductsVersionsGetResource,

    -- ** Constructing a Request
    CloudPrivateCatalogProducerCatalogsProductsVersionsGet (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsGet,
  )
where

import Gogol.CloudPrivateCatalogProducer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudprivatecatalogproducer.catalogs.products.versions.get@ method which the
-- 'CloudPrivateCatalogProducerCatalogsProductsVersionsGet' request conforms to.
type CloudPrivateCatalogProducerCatalogsProductsVersionsGetResource =
  "v1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudPrivatecatalogproducerV1beta1Version

-- | Returns the requested Version resource.
--
-- /See:/ 'newCloudPrivateCatalogProducerCatalogsProductsVersionsGet' smart constructor.
data CloudPrivateCatalogProducerCatalogsProductsVersionsGet = CloudPrivateCatalogProducerCatalogsProductsVersionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the version.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudPrivateCatalogProducerCatalogsProductsVersionsGet' with the minimum fields required to make a request.
newCloudPrivateCatalogProducerCatalogsProductsVersionsGet ::
  -- |  The resource name of the version. See 'name'.
  Core.Text ->
  CloudPrivateCatalogProducerCatalogsProductsVersionsGet
newCloudPrivateCatalogProducerCatalogsProductsVersionsGet name =
  CloudPrivateCatalogProducerCatalogsProductsVersionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudPrivateCatalogProducerCatalogsProductsVersionsGet
  where
  type
    Rs
      CloudPrivateCatalogProducerCatalogsProductsVersionsGet =
      GoogleCloudPrivatecatalogproducerV1beta1Version
  type
    Scopes
      CloudPrivateCatalogProducerCatalogsProductsVersionsGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudPrivateCatalogProducerCatalogsProductsVersionsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudPrivateCatalogProducerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudPrivateCatalogProducerCatalogsProductsVersionsGetResource
            )
            Core.mempty
