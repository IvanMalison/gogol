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
-- Module      : Gogol.BigQuery.RowAccessPolicies.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a @NOT_FOUND@ error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.rowAccessPolicies.testIamPermissions@.
module Gogol.BigQuery.RowAccessPolicies.TestIamPermissions
  ( -- * Resource
    BigQueryRowAccessPoliciesTestIamPermissionsResource,

    -- ** Constructing a Request
    BigQueryRowAccessPoliciesTestIamPermissions (..),
    newBigQueryRowAccessPoliciesTestIamPermissions,
  )
where

import Gogol.BigQuery.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @bigquery.rowAccessPolicies.testIamPermissions@ method which the
-- 'BigQueryRowAccessPoliciesTestIamPermissions' request conforms to.
type BigQueryRowAccessPoliciesTestIamPermissionsResource =
  "bigquery"
    Core.:> "v2"
    Core.:> Core.CaptureMode
              "resource"
              "testIamPermissions"
              Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a @NOT_FOUND@ error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ 'newBigQueryRowAccessPoliciesTestIamPermissions' smart constructor.
data BigQueryRowAccessPoliciesTestIamPermissions = BigQueryRowAccessPoliciesTestIamPermissions
  { -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryRowAccessPoliciesTestIamPermissions' with the minimum fields required to make a request.
newBigQueryRowAccessPoliciesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  BigQueryRowAccessPoliciesTestIamPermissions
newBigQueryRowAccessPoliciesTestIamPermissions payload resource =
  BigQueryRowAccessPoliciesTestIamPermissions
    { payload = payload,
      resource = resource
    }

instance
  Core.GoogleRequest
    BigQueryRowAccessPoliciesTestIamPermissions
  where
  type
    Rs BigQueryRowAccessPoliciesTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes
      BigQueryRowAccessPoliciesTestIamPermissions =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient
    BigQueryRowAccessPoliciesTestIamPermissions {..} =
      go
        resource
        (Core.Just Core.AltJSON)
        payload
        bigQueryService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  BigQueryRowAccessPoliciesTestIamPermissionsResource
            )
            Core.mempty
