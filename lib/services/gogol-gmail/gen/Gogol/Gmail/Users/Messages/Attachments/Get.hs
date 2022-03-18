{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Gmail.Users.Messages.Attachments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the specified message attachment.
--
-- /See:/ <https://developers.google.com/gmail/api/ Gmail API Reference> for @gmail.users.messages.attachments.get@.
module Gogol.Gmail.Users.Messages.Attachments.Get
    (
    -- * Resource
      GmailUsersMessagesAttachmentsGetResource

    -- ** Constructing a Request
    , newGmailUsersMessagesAttachmentsGet
    , GmailUsersMessagesAttachmentsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Gmail.Types

-- | A resource alias for @gmail.users.messages.attachments.get@ method which the
-- 'GmailUsersMessagesAttachmentsGet' request conforms to.
type GmailUsersMessagesAttachmentsGetResource =
     "gmail" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "messages" Core.:>
               Core.Capture "messageId" Core.Text Core.:>
                 "attachments" Core.:>
                   Core.Capture "id" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] MessagePartBody

-- | Gets the specified message attachment.
--
-- /See:/ 'newGmailUsersMessagesAttachmentsGet' smart constructor.
data GmailUsersMessagesAttachmentsGet = GmailUsersMessagesAttachmentsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the attachment.
    , id :: Core.Text
      -- | The ID of the message containing the attachment.
    , messageId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The user\'s email address. The special value @me@ can be used to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GmailUsersMessagesAttachmentsGet' with the minimum fields required to make a request.
newGmailUsersMessagesAttachmentsGet 
    ::  Core.Text
       -- ^  The ID of the attachment. See 'id'.
    -> Core.Text
       -- ^  The ID of the message containing the attachment. See 'messageId'.
    -> GmailUsersMessagesAttachmentsGet
newGmailUsersMessagesAttachmentsGet id messageId =
  GmailUsersMessagesAttachmentsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = id
    , messageId = messageId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = "me"
    }

instance Core.GoogleRequest
           GmailUsersMessagesAttachmentsGet
         where
        type Rs GmailUsersMessagesAttachmentsGet =
             MessagePartBody
        type Scopes GmailUsersMessagesAttachmentsGet =
             '["https://mail.google.com/",
               "https://www.googleapis.com/auth/gmail.addons.current.message.action",
               "https://www.googleapis.com/auth/gmail.addons.current.message.readonly",
               "https://www.googleapis.com/auth/gmail.modify",
               "https://www.googleapis.com/auth/gmail.readonly"]
        requestClient GmailUsersMessagesAttachmentsGet{..}
          = go userId messageId id xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              gmailService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy GmailUsersMessagesAttachmentsGetResource)
                      Core.mempty

