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
-- Module      : Gogol.FireStore.Projects.Databases.Documents.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists documents.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.list@.
module Gogol.FireStore.Projects.Databases.Documents.List
  ( -- * Resource
    FireStoreProjectsDatabasesDocumentsListResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesDocumentsList,
    FireStoreProjectsDatabasesDocumentsList,
  )
where

import Gogol.FireStore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @firestore.projects.databases.documents.list@ method which the
-- 'FireStoreProjectsDatabasesDocumentsList' request conforms to.
type FireStoreProjectsDatabasesDocumentsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> Core.Capture "collectionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "mask.fieldPaths" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "readTime" Core.DateTime'
    Core.:> Core.QueryParam "showMissing" Core.Bool
    Core.:> Core.QueryParam "transaction" Core.Base64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDocumentsResponse

-- | Lists documents.
--
-- /See:/ 'newFireStoreProjectsDatabasesDocumentsList' smart constructor.
data FireStoreProjectsDatabasesDocumentsList = FireStoreProjectsDatabasesDocumentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The collection ID, relative to @parent@, to list. For example: @chatrooms@ or @messages@.
    collectionId :: Core.Text,
    -- | The list of field paths in the mask. See Document.fields for a field path syntax reference.
    maskFieldPaths :: (Core.Maybe [Core.Text]),
    -- | The order to sort results by. For example: @priority desc, name@.
    orderBy :: (Core.Maybe Core.Text),
    -- | The maximum number of documents to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The @next_page_token@ value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@
    parent :: Core.Text,
    -- | Reads documents as they were at the given time. This may not be older than 270 seconds.
    readTime :: (Core.Maybe Core.DateTime'),
    -- | If the list should show missing documents. A missing document is a document that does not exist but has sub-documents. These documents will be returned with a key but will not have fields, Document.create/time, or Document.update/time set. Requests with @show_missing@ may not specify @where@ or @order_by@.
    showMissing :: (Core.Maybe Core.Bool),
    -- | Reads documents in a transaction.
    transaction :: (Core.Maybe Core.Base64),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesDocumentsList' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesDocumentsList ::
  -- |  Required. The collection ID, relative to @parent@, to list. For example: @chatrooms@ or @messages@. See 'collectionId'.
  Core.Text ->
  -- |  Required. The parent resource name. In the format: @projects\/{project_id}\/databases\/{database_id}\/documents@ or @projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}@. For example: @projects\/my-project\/databases\/my-database\/documents@ or @projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom@ See 'parent'.
  Core.Text ->
  FireStoreProjectsDatabasesDocumentsList
newFireStoreProjectsDatabasesDocumentsList collectionId parent =
  FireStoreProjectsDatabasesDocumentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      collectionId = collectionId,
      maskFieldPaths = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      readTime = Core.Nothing,
      showMissing = Core.Nothing,
      transaction = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesDocumentsList
  where
  type
    Rs FireStoreProjectsDatabasesDocumentsList =
      ListDocumentsResponse
  type
    Scopes FireStoreProjectsDatabasesDocumentsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient
    FireStoreProjectsDatabasesDocumentsList {..} =
      go
        parent
        collectionId
        xgafv
        accessToken
        callback
        (maskFieldPaths Core.^. Core._Default)
        orderBy
        pageSize
        pageToken
        readTime
        showMissing
        transaction
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesDocumentsListResource
            )
            Core.mempty
