.class public final Lcom/android/server/enterprise/EDMProxyService;
.super Landroid/sec/enterprise/IEDMProxy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/EDMProxyService;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public final addCallsCount(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo p0, "device_info"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-gez v0, :cond_2

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string v0, "DeviceInfo"

    .line 31
    const-string/jumbo v2, "could not parse integer "

    .line 34
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    :goto_0
    move v0, v1

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 49
    return-void
.end method

.method public final addNumberOfIncomingCalls()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final addNumberOfIncomingSms()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final addNumberOfOutgoingCalls()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final addNumberOfOutgoingSms()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final auditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string p0, "auditlog"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v8, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, p1

    .line 16
    move v3, p2

    .line 17
    move v4, p3

    .line 18
    move v5, p4

    .line 19
    move-object v6, p5

    .line 20
    move-object v7, p6

    .line 21
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public final auditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v9, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    move v6, p4

    .line 19
    move-object/from16 v7, p5

    .line 21
    move-object/from16 v8, p6

    .line 23
    move/from16 v10, p7

    .line 25
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 28
    return-void
.end method

.method public final auditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    move-object/from16 v0, p6

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v8

    .line 25
    const/4 v10, -0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    move v3, p1

    .line 29
    move v4, p2

    .line 30
    move v5, p3

    .line 31
    move v6, p4

    .line 32
    move-object/from16 v7, p5

    .line 34
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    :cond_1
    return-void
.end method

.method public final auditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    move-object/from16 v0, p6

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v8

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move v3, p1

    .line 28
    move v4, p2

    .line 29
    move v5, p3

    .line 30
    move v6, p4

    .line 31
    move-object/from16 v7, p5

    .line 33
    move/from16 v10, p7

    .line 35
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    :cond_1
    return-void
.end method

.method public final bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    move-result v1

    .line 19
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method public final canIncomingCall(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final canIncomingSms(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final canOutgoingCall(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final canOutgoingSms(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final decreaseNumberOfOutgoingSms()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getAddHomeShorcutRequested()Z
    .locals 0

    .line 1
    const-string p0, "application_policy"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    sget-boolean p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->addHomeShorcutRequested:Z

    .line 15
    return p0
.end method

.method public final getAllowBluetoothDataTransfer(Z)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getAllowBluetoothDataTransfer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final getApplicationIconFromDb(Ljava/lang/String;I)[B
    .locals 0

    .line 1
    const-string p0, "application_policy"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDbAsUser(ILjava/lang/String;)[B

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getApplicationNameForComponent(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "application_policy"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 19
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    :cond_1
    return-object p1
.end method

.method public final getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "application_policy"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final getBrowserSettingStatus(I)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "browser_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    const-string/jumbo p0, "enterprise_license_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getEmergencyCallOnly(Z)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final getExtendedCallInfoState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getExtendedCallInfoState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getKeyboardMode()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getKeyboardMode()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getNtpServer()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "date_time_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getNtpTimeout()J
    .locals 2

    .line 1
    const-string/jumbo p0, "date_time_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Lcom/samsung/android/knox/datetime/NtpInfo;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getTimeout()J

    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public final getProKioskHideNotificationMessages()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getHideNotificationMessages()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getProKioskNotificationMessagesState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskNotificationMessagesState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getProKioskState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getSensorDisabled()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getSensorDisabled()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getToastEnabledState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastEnabledState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getToastGravity()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravity()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getToastGravityEnabledState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravityEnabledState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getToastGravityXOffset()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravityXOffset()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getToastGravityYOffset()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastGravityYOffset()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getToastShowPackageNameState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getToastShowPackageNameState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getUsbNetAddress(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final getUsbNetStateInternal()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getVolumeButtonRotationState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getVolumeButtonRotationState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getVolumeControlStream()I
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getVolumeControlStream()I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getVolumePanelEnabledState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getVolumePanelEnabledState()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getWifiState()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "device_account_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isAllowedMamPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "knoxcustom"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isAllowedMamPackage(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isAnyApplicationNameChangedAsUser(I)Z
    .locals 0

    .line 1
    const-string p0, "application_policy"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isAnyApplicationNameChangedAsUser(I)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isAudioRecordAllowed(Z)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isAuditLogEnabledAsUser(I)Z
    .locals 0

    .line 1
    const-string p0, "auditlog"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final isBackupAllowed(Z)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isBlockMmsWithStorageEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isBlockSmsWithStorageEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_3

    .line 31
    const p1, 0x104024d

    .line 34
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 39
    :cond_3
    :goto_1
    return p0
.end method

.method public final isBluetoothEnabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isBluetoothLogEnabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    const/4 v3, -0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v2, :cond_3

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 40
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 42
    check-cast v5, Ljava/util/HashMap;

    .line 44
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/util/List;

    .line 50
    move v6, v4

    .line 51
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 54
    move-result v7

    .line 55
    if-ge v6, v7, :cond_1

    .line 57
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Ljava/lang/String;

    .line 63
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v1

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v1, v3

    .line 78
    :goto_1
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 80
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_4

    .line 86
    invoke-static {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 89
    :goto_2
    move v0, v4

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    if-eq v1, v3, :cond_5

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(I)Z

    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_5

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    :goto_3
    return v0
.end method

.method public final isCaCertificateTrustedAsUser([BZZI)Z
    .locals 6

    .line 1
    const-string p0, "Could not convert certificate."

    .line 3
    const-string v0, "EDMProxyService"

    .line 5
    const-string/jumbo v1, "certificate_policy"

    .line 8
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 17
    return v2

    .line 18
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 24
    return v2

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    if-nez p1, :cond_2

    .line 28
    return v3

    .line 29
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_3

    .line 35
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_5

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertDerToPem([B)[B

    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_4

    .line 50
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 53
    move-result-object v4

    .line 54
    :cond_4
    if-eqz v4, :cond_9

    .line 56
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 59
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz p1, :cond_5

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    iget-object p0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 65
    new-array p1, v3, [Ljava/security/cert/Certificate;

    .line 67
    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, [Ljava/security/cert/Certificate;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/DarManagerService;->checkDeviceIntegrity([Ljava/security/cert/Certificate;)Z

    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_6

    .line 79
    return v2

    .line 80
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object p0

    .line 84
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_8

    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 96
    new-instance v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 98
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 101
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z

    .line 104
    move-result p1

    .line 105
    and-int/2addr v2, p1

    .line 106
    if-nez v2, :cond_7

    .line 108
    return v3

    .line 109
    :cond_8
    return v2

    .line 110
    :cond_9
    :goto_1
    :try_start_1
    const-string p1, "Could not convert one certificate."

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    return v3

    .line 116
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    const-string p2, "Not a certificate "

    .line 120
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v3

    .line 138
    :catch_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v3

    .line 142
    :catch_2
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v3
.end method

.method public final isCallingCaptureEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "device_info"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isCallingCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isCertificateTrustedUntrustedEnabledAsUser(I)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "certificate_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isCertificateValidationAtInstallEnabledAsUser(I)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "certificate_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isClipboardAllowed(Z)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isClipboardShareAllowed()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isCopyContactToSimAllowed(I)Z
    .locals 4

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    const-string/jumbo v1, "copyContactToSimEnabled"

    .line 19
    const/4 v2, 0x0

    .line 20
    const-string v3, "PHONERESTRICTION"

    .line 22
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 30
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v1, v0

    .line 50
    :goto_0
    if-nez v1, :cond_5

    .line 52
    const-string p0, "PhoneRestrictionPolicy"

    .line 54
    if-eq p1, v0, :cond_4

    .line 56
    const/4 v0, 0x3

    .line 57
    if-eq p1, v0, :cond_3

    .line 59
    const-string/jumbo v0, "isCopyContactToSimAllowed wrong message value: "

    .line 62
    invoke-static {p1, v0, p0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const-string p1, "Access to PB Edit "

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const p0, 0x10404c4

    .line 74
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const-string p1, "Access to PB ADD "

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const p0, 0x10401a0

    .line 86
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 89
    :cond_5
    :goto_1
    return v1
.end method

.method public final isDataAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isDiscoverableEnabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isFactoryResetAllowed()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isIncomingCallAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isIncomingMmsAllowed()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const-string v0, "allowIncomingMms"

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final isIncomingSmsAllowed()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    const-string v0, "allowIncomingSms"

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final isIncomingSmsAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x4

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isKnoxBluetoothEnabled(I)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "mum_container_policy"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final isLimitNumberOfSmsEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isMicrophoneEnabled(Z)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isMmsAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x6

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isMockLocationEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isNtpSetByMDM()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->isNtpSetByMDM()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isOcspCheckEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "certificate_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isOutgoingCallAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x3

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isOutgoingCallsAllowed()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isOutgoingSmsAllowed()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    const-string v0, "allowOutgoingSms"

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final isOutgoingSmsAllowedFromSimSlot(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x5

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isPackageAllowedToAccessExternalSdcard(II)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "mum_container_policy"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 19
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isPackageAllowedToAccessExternalSdcard(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 22
    return v0
.end method

.method public final isPackageInAvrWhitelist(I)Z
    .locals 2

    .line 1
    const-string p0, "application_policy"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    if-nez p0, :cond_0

    .line 11
    const-string p0, "EDMProxyService"

    .line 13
    const-string p1, "AVR Policy returning false due null applicationPolicy"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 v0, 0x3

    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final isPairingEnabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isProfileEnabled(I)Z
    .locals 1

    .line 1
    const-string/jumbo p0, "bluetooth_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p0, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isRevocationCheckEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "certificate_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isRoamingDataEnabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "roaming_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isRoamingPushEnabled()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "roaming_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final isSMSCaptureEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "device_info"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isSMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isScreenLockPatternVisibilityEnabled()Z
    .locals 2

    .line 1
    const-string/jumbo p0, "password_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isScreenLockPatternVisibilityEnabledAsUser(I)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "password_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isSmsPatternCheckRequired()Z
    .locals 0

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSmsPatternCheckRequired()Z

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isTaskManagerAllowed(Z)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "kioskmode"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowedAsUser(ZI)Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final isVideoRecordAllowed(Z)Z
    .locals 2

    .line 1
    const-string/jumbo p0, "restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final isWapPushAllowed()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final logEvent(IILjava/util/List;)V
    .locals 6

    .line 1
    const-string p0, "auditlog"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, -0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move-object v5, p3

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 21
    return-void
.end method

.method public final logEventAsUser(IIILjava/util/List;)V
    .locals 6

    .line 1
    const-string p0, "auditlog"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    move v2, p1

    .line 15
    move v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 21
    return-void
.end method

.method public final logEventForComponent(ILjava/lang/String;ILjava/util/List;)V
    .locals 6

    .line 1
    const-string p0, "auditlog"

    .line 3
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, -0x1

    .line 14
    move-object v1, p2

    .line 15
    move v3, p1

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 21
    return-void
.end method

.method public final notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    const-string/jumbo p0, "certificate_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 16
    return-void
.end method

.method public final notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string/jumbo p0, "certificate_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public final notifyPasswordPolicyOneLockChanged(ZI)V
    .locals 2

    .line 1
    const-string/jumbo p0, "password_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor$9(I)V

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    .line 20
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;II)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 32
    :cond_1
    return-void
.end method

.method public final redactedAuditLogger(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    move v6, p4

    .line 18
    move-object v7, p5

    .line 19
    move-object/from16 v8, p6

    .line 21
    move-object/from16 v9, p7

    .line 23
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public final redactedAuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    move v6, p4

    .line 18
    move-object/from16 v7, p5

    .line 20
    move-object/from16 v8, p6

    .line 22
    move-object/from16 v9, p7

    .line 24
    move/from16 v10, p8

    .line 26
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 29
    return-void
.end method

.method public final redactedAuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    move-object/from16 v0, p6

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v8

    .line 25
    const/4 v10, -0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, p1

    .line 28
    move v4, p2

    .line 29
    move v5, p3

    .line 30
    move v6, p4

    .line 31
    move-object/from16 v7, p5

    .line 33
    move-object/from16 v9, p7

    .line 35
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    :cond_1
    return-void
.end method

.method public final redactedAuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    const-string v0, "auditlog"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditPrivilegedAllowed(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    move-object/from16 v0, p6

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v8

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, p1

    .line 27
    move v4, p2

    .line 28
    move v5, p3

    .line 29
    move v6, p4

    .line 30
    move-object/from16 v7, p5

    .line 32
    move-object/from16 v9, p7

    .line 34
    move/from16 v10, p8

    .line 36
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    :cond_1
    return-void
.end method

.method public final registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "security_policy"

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/EDMProxyService;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v2, "registerSystemUICallback() is called "

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "SystemUIAdapter"

    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, -0x1

    .line 39
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object v5

    .line 45
    const-string/jumbo v6, "com.android.systemui"

    .line 48
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 51
    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v5

    .line 54
    const-string/jumbo v6, "isCalledFromSystemUI() : Unable to resolve SystemUI\'s UID."

    .line 57
    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    move v5, v4

    .line 61
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 64
    move-result v6

    .line 65
    sget-object v7, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_4

    .line 77
    const-string v7, ":"

    .line 79
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 82
    move-result v7

    .line 83
    if-eq v7, v4, :cond_0

    .line 85
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    :cond_0
    const-string v4, "android.uid.systemui"

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 97
    if-ne v6, v5, :cond_4

    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_1

    .line 106
    const-string/jumbo p0, "registerSystemUICallback() has failed because it\'s only allowed user_system, but userId = "

    .line 109
    invoke-static {v1, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    goto/16 :goto_6

    .line 114
    :cond_1
    if-eqz p1, :cond_3

    .line 116
    const/4 v1, 0x1

    .line 117
    :try_start_1
    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 119
    add-int/2addr v4, v1

    .line 120
    iput v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 122
    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {p1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    .line 134
    move-result-object p1

    .line 135
    new-instance v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;

    .line 137
    invoke-direct {v5, p0, v4}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;-><init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V

    .line 140
    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 143
    const-string/jumbo p1, "registerSystemUICallback() successfully added"

    .line 146
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :catch_1
    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v4, "registerSystemUICallback() callback has registered. "

    .line 156
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    iget v4, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mRegisteredCount:I

    .line 161
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 174
    move-result-wide v4

    .line 175
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->updateSystemUIMonitor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :catch_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    goto :goto_1

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw p0

    .line 187
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 190
    move-result-wide v4

    .line 191
    :try_start_3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 194
    move-result-object p1

    .line 195
    invoke-static {p1}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_2

    .line 201
    iget-boolean p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    .line 203
    if-eqz p1, :cond_2

    .line 205
    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isFistcalled:Z

    .line 207
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 210
    move-result-object p0

    .line 211
    invoke-static {p0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISecurityPolicy;

    .line 214
    move-result-object p0

    .line 215
    invoke-interface {p0}, Lcom/samsung/android/knox/ISecurityPolicy;->onKeyguardLaunched()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    goto :goto_2

    .line 219
    :catchall_1
    move-exception p0

    .line 220
    goto :goto_5

    .line 221
    :catch_3
    move-exception p0

    .line 222
    goto :goto_3

    .line 223
    :cond_2
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    goto :goto_4

    .line 227
    :goto_3
    :try_start_4
    const-string/jumbo p1, "onKeyguardLaunched() has failed."

    .line 230
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    goto :goto_2

    .line 234
    :goto_4
    move v3, v1

    .line 235
    goto :goto_6

    .line 236
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    throw p0

    .line 240
    :cond_3
    const-string/jumbo p0, "registerSystemUICallback() has failed."

    .line 243
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    goto :goto_6

    .line 247
    :cond_4
    const-string/jumbo p0, "registerSystemUICallback() has failed because it\'s only allowed to call by SystemUI "

    .line 250
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_6
    return v3
.end method

.method public final shallForceNtpMdmValues()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->shallForceNtpMdmValues()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string/jumbo p0, "phone_restriction_policy"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "PhoneRestrictionPolicy"

    .line 15
    invoke-static {}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 18
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    const-string v1, "SMSMMSBlockedDelivery"

    .line 24
    const-string/jumbo v2, "smsMmsPdu"

    .line 27
    invoke-static {v2, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 30
    move-result-object p2

    .line 31
    const-string/jumbo v2, "smsMmsSendType"

    .line 34
    const-string/jumbo v3, "smsMmsType"

    .line 37
    invoke-static {p4, p2, v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    const-string/jumbo p4, "smsMmsOrigAddress"

    .line 43
    invoke-virtual {p2, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-nez p1, :cond_1

    .line 48
    const-string/jumbo p1, "smsMmsTimeStamp"

    .line 51
    invoke-virtual {p2, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo p1, "smsMmsMessageId"

    .line 57
    invoke-virtual {p2, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo p1, "smsMmsSubId"

    .line 63
    invoke-virtual {p2, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 71
    const-string/jumbo p0, "sms/mms stored successfully"

    .line 74
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    const-string/jumbo p0, "could not write sms/mms into edm database"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void
.end method

.method public final storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-string/jumbo p0, "device_info"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    move v5, p5

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/device/DeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public final storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string/jumbo p0, "device_info"

    .line 4
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/device/DeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method

.method public final ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.ucs.ucsservice"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 20
    return-object p0
.end method

.method public final ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)[B
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.ucs.ucsservice"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 20
    return-object p0
.end method

.method public final ucmGetCertificateChain(Ljava/lang/String;)[B
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.ucs.ucsservice"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 20
    return-object p0
.end method

.method public final ucmMac(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.ucs.ucsservice"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mac(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 20
    return-object p0
.end method

.method public final ucmSign(Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.ucs.ucsservice"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 20
    return-object p0
.end method

.method public final validateCertificateAtInstallAsUser([BI)I
    .locals 5

    .line 1
    const-string p0, "Could not convert certificate."

    .line 3
    const-string v0, "EDMProxyService"

    .line 5
    const-string/jumbo v1, "certificate_policy"

    .line 8
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 14
    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 22
    goto/16 :goto_4

    .line 24
    :cond_0
    const/4 v2, 0x7

    .line 25
    if-nez p1, :cond_1

    .line 27
    return v2

    .line 28
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_2

    .line 34
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_4

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertDerToPem([B)[B

    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 49
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 52
    move-result-object v3

    .line 53
    :cond_3
    if-eqz v3, :cond_7

    .line 55
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 58
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz p1, :cond_4

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p1

    .line 71
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5

    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 83
    new-instance v2, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 85
    invoke-direct {v2, v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 88
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 95
    move-result p1

    .line 96
    const/4 v0, 0x1

    .line 97
    if-ne p1, v0, :cond_6

    .line 99
    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 106
    invoke-virtual {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    .line 109
    move-result p0

    .line 110
    return p0

    .line 111
    :cond_6
    invoke-virtual {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    .line 114
    move-result p0

    .line 115
    return p0

    .line 116
    :cond_7
    :goto_2
    :try_start_1
    const-string p1, "Could not convert one certificate."

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    return v2

    .line 122
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    const-string p2, "Not a certificate "

    .line 126
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v2

    .line 144
    :catch_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v2

    .line 148
    :catch_2
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v2

    .line 152
    :cond_8
    :goto_4
    const/4 p0, -0x1

    .line 153
    return p0
.end method
