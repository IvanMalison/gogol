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
-- Module      : Gogol.ServiceControl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides admission control and telemetry reporting for services integrated with Service Infrastructure.
--
-- /See:/ <https://cloud.google.com/service-control/ Service Control API Reference>
module Gogol.ServiceControl
  ( -- * Configuration
    serviceControlService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Servicecontrol'FullControl,

    -- * Resources

    -- ** servicecontrol.services.check
    ServiceControlServicesCheckResource,
    ServiceControlServicesCheck (..),
    newServiceControlServicesCheck,

    -- ** servicecontrol.services.report
    ServiceControlServicesReportResource,
    ServiceControlServicesReport (..),
    newServiceControlServicesReport,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Api
    Api (..),
    newApi,

    -- ** AttributeContext
    AttributeContext (..),
    newAttributeContext,

    -- ** AttributeContext_ExtensionsItem
    AttributeContext_ExtensionsItem (..),
    newAttributeContext_ExtensionsItem,

    -- ** AuditLog
    AuditLog (..),
    newAuditLog,

    -- ** AuditLog_Metadata
    AuditLog_Metadata (..),
    newAuditLog_Metadata,

    -- ** AuditLog_Request
    AuditLog_Request (..),
    newAuditLog_Request,

    -- ** AuditLog_ResourceOriginalState
    AuditLog_ResourceOriginalState (..),
    newAuditLog_ResourceOriginalState,

    -- ** AuditLog_Response
    AuditLog_Response (..),
    newAuditLog_Response,

    -- ** AuditLog_ServiceData
    AuditLog_ServiceData (..),
    newAuditLog_ServiceData,

    -- ** Auth
    Auth (..),
    newAuth,

    -- ** Auth_Claims
    Auth_Claims (..),
    newAuth_Claims,

    -- ** AuthenticationInfo
    AuthenticationInfo (..),
    newAuthenticationInfo,

    -- ** AuthenticationInfo_ThirdPartyPrincipal
    AuthenticationInfo_ThirdPartyPrincipal (..),
    newAuthenticationInfo_ThirdPartyPrincipal,

    -- ** AuthorizationInfo
    AuthorizationInfo (..),
    newAuthorizationInfo,

    -- ** CheckRequest
    CheckRequest (..),
    newCheckRequest,

    -- ** CheckResponse
    CheckResponse (..),
    newCheckResponse,

    -- ** CheckResponse_Headers
    CheckResponse_Headers (..),
    newCheckResponse_Headers,

    -- ** FirstPartyPrincipal
    FirstPartyPrincipal (..),
    newFirstPartyPrincipal,

    -- ** FirstPartyPrincipal_ServiceMetadata
    FirstPartyPrincipal_ServiceMetadata (..),
    newFirstPartyPrincipal_ServiceMetadata,

    -- ** OrgPolicyViolationInfo
    OrgPolicyViolationInfo (..),
    newOrgPolicyViolationInfo,

    -- ** OrgPolicyViolationInfo_Payload
    OrgPolicyViolationInfo_Payload (..),
    newOrgPolicyViolationInfo_Payload,

    -- ** OrgPolicyViolationInfo_ResourceTags
    OrgPolicyViolationInfo_ResourceTags (..),
    newOrgPolicyViolationInfo_ResourceTags,

    -- ** Peer
    Peer (..),
    newPeer,

    -- ** Peer_Labels
    Peer_Labels (..),
    newPeer_Labels,

    -- ** PolicyViolationInfo
    PolicyViolationInfo (..),
    newPolicyViolationInfo,

    -- ** ReportRequest
    ReportRequest (..),
    newReportRequest,

    -- ** ReportResponse
    ReportResponse (..),
    newReportResponse,

    -- ** Request'
    Request' (..),
    newRequest,

    -- ** Request_Headers
    Request_Headers (..),
    newRequest_Headers,

    -- ** RequestMetadata
    RequestMetadata (..),
    newRequestMetadata,

    -- ** Resource
    Resource (..),
    newResource,

    -- ** Resource_Annotations
    Resource_Annotations (..),
    newResource_Annotations,

    -- ** Resource_Labels
    Resource_Labels (..),
    newResource_Labels,

    -- ** ResourceInfo
    ResourceInfo (..),
    newResourceInfo,

    -- ** ResourceLocation
    ResourceLocation (..),
    newResourceLocation,

    -- ** Response
    Response (..),
    newResponse,

    -- ** Response_Headers
    Response_Headers (..),
    newResponse_Headers,

    -- ** ServiceAccountDelegationInfo
    ServiceAccountDelegationInfo (..),
    newServiceAccountDelegationInfo,

    -- ** SpanContext
    SpanContext (..),
    newSpanContext,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** ThirdPartyPrincipal
    ThirdPartyPrincipal (..),
    newThirdPartyPrincipal,

    -- ** ThirdPartyPrincipal_ThirdPartyClaims
    ThirdPartyPrincipal_ThirdPartyClaims (..),
    newThirdPartyPrincipal_ThirdPartyClaims,

    -- ** V2HttpRequest
    V2HttpRequest (..),
    newV2HttpRequest,

    -- ** V2LogEntry
    V2LogEntry (..),
    newV2LogEntry,

    -- ** V2LogEntry_Labels
    V2LogEntry_Labels (..),
    newV2LogEntry_Labels,

    -- ** V2LogEntry_MonitoredResourceLabels
    V2LogEntry_MonitoredResourceLabels (..),
    newV2LogEntry_MonitoredResourceLabels,

    -- ** V2LogEntry_ProtoPayload
    V2LogEntry_ProtoPayload (..),
    newV2LogEntry_ProtoPayload,

    -- ** V2LogEntry_Severity
    V2LogEntry_Severity (..),

    -- ** V2LogEntry_StructPayload
    V2LogEntry_StructPayload (..),
    newV2LogEntry_StructPayload,

    -- ** V2LogEntryOperation
    V2LogEntryOperation (..),
    newV2LogEntryOperation,

    -- ** V2LogEntrySourceLocation
    V2LogEntrySourceLocation (..),
    newV2LogEntrySourceLocation,

    -- ** ViolationInfo
    ViolationInfo (..),
    newViolationInfo,

    -- ** ViolationInfo_PolicyType
    ViolationInfo_PolicyType (..),
  )
where

import Gogol.ServiceControl.Services.Check
import Gogol.ServiceControl.Services.Report
import Gogol.ServiceControl.Types
