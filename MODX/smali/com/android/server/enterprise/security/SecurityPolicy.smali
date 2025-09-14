.class public final Lcom/android/server/enterprise/security/SecurityPolicy;
.super Lcom/samsung/android/knox/ISecurityPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;


# static fields
.field public static mBannerMap:Ljava/util/Map;


# instance fields
.field public factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

.field public final mBlocker:Lcom/android/server/enterprise/security/SecurityPolicy$1;

.field public mBootCompleted:Z

.field public final mBootReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$3;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

.field public mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

.field public mMediaFormatRet:Z

.field public final mPendingGetCerificates:Ljava/util/HashMap;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static -$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "Device safe mode saved in generic table : "

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    const-string/jumbo v1, "deviceBootMode"

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 19
    const-string p0, "SecurityPolicy"

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;-><init>(Landroid/content/Context;)V

    .line 6
    const-string v1, "SecurityPolicy"

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/knox/ISecurityPolicy$Stub;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v4, 0x0

    .line 20
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 22
    new-instance v5, Landroid/os/Binder;

    .line 24
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 27
    iput-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    .line 29
    new-instance v5, Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .line 31
    invoke-direct {v5, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$1;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    .line 34
    iput-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .line 36
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 38
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 40
    new-instance v7, Lcom/android/server/enterprise/security/SecurityPolicy$3;

    .line 42
    invoke-direct {v7, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$3;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    .line 45
    new-instance v4, Ljava/util/HashMap;

    .line 47
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    iput-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 52
    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/Handler;

    .line 61
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    new-instance v9, Landroid/content/IntentFilter;

    .line 73
    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 78
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 84
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 90
    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    const/4 v12, 0x2

    .line 98
    move-object v6, p1

    .line 99
    invoke-virtual/range {v6 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    .line 104
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    sput-object v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 109
    const-string/jumbo v0, "com.samsung.android.email.provider"

    .line 112
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 117
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 120
    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 122
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 125
    move-result-object p1

    .line 126
    new-instance v0, Lcom/android/server/enterprise/security/SecurityPolicy$UserSwitchObserver;

    .line 128
    invoke-direct {v0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    .line 131
    const-class v3, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 133
    invoke-interface {p1, v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    const-string v0, "Exception during register UserSwitchObserver "

    .line 140
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 145
    iget-object p1, p1, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 153
    sget-object p1, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 155
    check-cast p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 157
    check-cast p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    sget-boolean p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mIsFirmwareUpgrade:Z

    .line 164
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_0

    .line 172
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 174
    invoke-direct {p1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 177
    const/4 v0, 0x1

    .line 178
    invoke-static {p1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 181
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;

    .line 183
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$LocalService;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    .line 186
    const-class p0, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    .line 188
    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public static addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 3

    .line 1
    const-string v0, "application_policy"

    .line 3
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string/jumbo v2, "com.samsung.android.mdm"

    .line 13
    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Lcom/samsung/android/knox/AppIdentity;

    .line 17
    invoke-direct {p1, v2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/samsung/android/knox/AppIdentity;

    .line 26
    invoke-direct {p1, v2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    .line 32
    :goto_0
    return-void
.end method

.method public static dumpAliases(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-eqz p0, :cond_2

    .line 8
    const-string/jumbo v1, "{"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    const-string v1, ", "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo p0, "}"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static getKeystoreString(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const-string v1, "Default"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_0
    and-int/lit8 v1, p0, 0x2

    .line 17
    const-string v2, "/"

    .line 19
    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_1
    const-string v1, "Wi-Fi"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_2
    and-int/lit8 p0, p0, 0x4

    .line 37
    if-eqz p0, :cond_4

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_3
    const-string p0, "VPN and Apps"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_5

    .line 59
    const-string p0, "None"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static getValidStr$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-lez v1, :cond_1

    .line 15
    move-object v0, p0

    .line 16
    :cond_1
    :goto_0
    return-object v0

    .line 17
    :catch_0
    const-string p0, "SecurityPolicy"

    .line 19
    const-string/jumbo v1, "is string valid?"

    .line 22
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-object v0
.end method

.method public static retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "retrieveCertificateAliasFromKeyChain: "

    .line 4
    const-string v1, "SecurityPolicy"

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_0
    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object p1, v2, v3

    .line 14
    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p0, p1}, Landroid/security/IKeyChainService;->getCertificateAlias([B)Ljava/lang/String;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_4

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catch_2
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_3

    .line 49
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_3

    .line 69
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_3
    const/4 p0, 0x0

    .line 89
    :goto_4
    return-object p0
.end method

.method public static validateKeystoreParam(I)Z
    .locals 2

    .line 1
    and-int/lit8 v0, p0, 0x7

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x7

    .line 8
    or-int/2addr p0, v0

    .line 9
    if-eq p0, v0, :cond_1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x1

    .line 13
    :goto_0
    return v1
.end method

.method public static validatePackageName$1(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_7

    .line 8
    const-string v0, "*"

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    const-string v0, "\\."

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    move v2, v1

    .line 24
    move v3, v2

    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    move-result v4

    .line 29
    if-ge v2, v4, :cond_2

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v4

    .line 35
    const/16 v5, 0x2e

    .line 37
    if-ne v4, v5, :cond_1

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    array-length p0, v0

    .line 45
    if-lt v3, p0, :cond_3

    .line 47
    return v1

    .line 48
    :cond_3
    array-length p0, v0

    .line 49
    move v2, v1

    .line 50
    :goto_1
    if-ge v2, p0, :cond_6

    .line 52
    aget-object v3, v0, v2

    .line 54
    const-string v4, "^[A-Za-z0-9_]+$"

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_5

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 65
    move-result v4

    .line 66
    const/16 v5, 0x5f

    .line 68
    if-eq v4, v5, :cond_5

    .line 70
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 73
    move-result v4

    .line 74
    const/16 v5, 0x30

    .line 76
    if-lt v4, v5, :cond_4

    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 81
    move-result v3

    .line 82
    const/16 v4, 0x39

    .line 84
    if-gt v3, v4, :cond_4

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    :goto_2
    return v1

    .line 91
    :cond_6
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :cond_7
    :goto_3
    return v1
.end method


# virtual methods
.method public final addPackagesToCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 13

    .line 1
    const-string v0, "ADD_PACKAGE_CERT_WHITE_LIST"

    .line 3
    invoke-static {p1, v0}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 15
    const-string v2, "android"

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    if-eqz p2, :cond_8

    .line 24
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_8

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v4

    .line 34
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p2

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    move-object v7, v2

    .line 41
    move v8, v6

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_7

    .line 48
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v9

    .line 52
    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    .line 54
    if-eqz v9, :cond_0

    .line 56
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 63
    move-result-object v7

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_6

    .line 68
    :cond_0
    :goto_1
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validatePackageName$1(Ljava/lang/String;)Z

    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_6

    .line 74
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isPackageAlreadyWhiteListed(ILjava/lang/String;)Z

    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_1

    .line 80
    goto :goto_5

    .line 81
    :cond_1
    if-eqz v7, :cond_3

    .line 83
    invoke-static {v3, v1, v2, v7}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-nez v9, :cond_3

    .line 89
    if-eqz v1, :cond_2

    .line 91
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 94
    move-result-object v9

    .line 95
    if-eqz v9, :cond_2

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 104
    move v9, v6

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    const-string v9, "SecurityPolicy"

    .line 108
    const-string/jumbo v10, "context or PackageManager is null : returning false"

    .line 111
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catch_0
    move v9, v3

    .line 115
    :goto_2
    move v10, v3

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    move v9, v3

    .line 118
    move v10, v6

    .line 119
    :goto_3
    if-nez v10, :cond_4

    .line 121
    if-nez v9, :cond_6

    .line 123
    :cond_4
    :try_start_2
    new-instance v9, Landroid/content/ContentValues;

    .line 125
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 128
    const-string v10, "adminUid"

    .line 130
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 132
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string/jumbo v10, "packageName"

    .line 142
    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v10, "signature"

    .line 148
    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v10, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 153
    const-string v11, "CertificateWhiteListTable"

    .line 155
    invoke-virtual {v10, v11, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    const-wide/16 v11, 0x0

    .line 161
    cmp-long v9, v9, v11

    .line 163
    if-lez v9, :cond_5

    .line 165
    move v9, v6

    .line 166
    goto :goto_4

    .line 167
    :cond_5
    move v9, v3

    .line 168
    :goto_4
    and-int/2addr v8, v9

    .line 169
    goto :goto_0

    .line 170
    :cond_6
    :goto_5
    move v8, v3

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    move v3, v8

    .line 177
    goto :goto_7

    .line 178
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    throw p0

    .line 182
    :cond_8
    :goto_7
    return v3
.end method

.method public final deleteCertificateFromKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p3

    .line 5
    const-string/jumbo v0, "deleteCertificateFromKeystore - is KeyChainService running for user "

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object/from16 v4, p1

    .line 11
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteListOrDangerousPermission(Lcom/samsung/android/knox/ContextInfo;IZ)Lcom/samsung/android/knox/ContextInfo;

    .line 14
    move-result-object v4

    .line 15
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 21
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 26
    move-result-object v5

    .line 27
    if-nez v5, :cond_1

    .line 29
    :cond_0
    move v1, v3

    .line 30
    goto/16 :goto_16

    .line 32
    :cond_1
    iget v5, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 34
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x0

    .line 39
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 42
    move-result-object v13

    .line 43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 47
    and-int/lit8 v16, v2, 0x1

    .line 49
    const-string v11, "SecurityPolicy"

    .line 51
    const-string/jumbo v10, "deleteCertificateFromKeystore: "

    .line 54
    if-eqz v16, :cond_2

    .line 56
    :try_start_1
    iget-object v7, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 58
    new-instance v8, Landroid/os/UserHandle;

    .line 60
    invoke-direct {v8, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 63
    invoke-static {v7, v8}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 66
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :try_start_2
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 70
    move-result-object v8
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    move-object/from16 v17, v7

    .line 73
    move-object v9, v8

    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object v6, v7

    .line 77
    goto/16 :goto_14

    .line 79
    :catch_0
    move-exception v0

    .line 80
    move-object/from16 v18, v6

    .line 82
    move-object/from16 v22, v18

    .line 84
    move-object v6, v7

    .line 85
    :goto_0
    move-object v3, v10

    .line 86
    move-object/from16 v23, v11

    .line 88
    goto/16 :goto_d

    .line 90
    :catch_1
    move-object/from16 v18, v6

    .line 92
    move-object/from16 v22, v18

    .line 94
    move-object v6, v7

    .line 95
    :goto_1
    move-object v3, v10

    .line 96
    move-object v7, v11

    .line 97
    goto/16 :goto_f

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    goto/16 :goto_14

    .line 102
    :catch_2
    move-exception v0

    .line 103
    move-object/from16 v18, v6

    .line 105
    move-object/from16 v22, v18

    .line 107
    goto :goto_0

    .line 108
    :catch_3
    move-object/from16 v18, v6

    .line 110
    move-object/from16 v22, v18

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move-object v9, v6

    .line 114
    move-object/from16 v17, v9

    .line 116
    :goto_2
    :try_start_3
    invoke-static {v5}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    .line 119
    move-result v7
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    if-eqz v7, :cond_6

    .line 122
    if-eqz v16, :cond_3

    .line 124
    :try_start_4
    invoke-static {v9, v13}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 127
    move-result-object v7
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 128
    :goto_3
    move-object/from16 v18, v7

    .line 130
    goto :goto_9

    .line 131
    :catchall_2
    move-exception v0

    .line 132
    move-object/from16 v6, v17

    .line 134
    goto/16 :goto_14

    .line 136
    :catch_4
    move-exception v0

    .line 137
    move-object/from16 v18, v6

    .line 139
    :goto_4
    move-object/from16 v22, v9

    .line 141
    :goto_5
    move-object v3, v10

    .line 142
    move-object/from16 v23, v11

    .line 144
    :goto_6
    move-object/from16 v6, v17

    .line 146
    goto/16 :goto_d

    .line 148
    :catch_5
    move-object/from16 v18, v6

    .line 150
    :catch_6
    move-object/from16 v22, v9

    .line 152
    :catch_7
    move-object v3, v10

    .line 153
    :goto_7
    move-object v7, v11

    .line 154
    :goto_8
    move-object/from16 v6, v17

    .line 156
    goto/16 :goto_f

    .line 158
    :cond_3
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    .line 161
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    goto :goto_3

    .line 163
    :goto_9
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 166
    move-result-object v7

    .line 167
    instance-of v8, v7, Ljava/security/cert/X509Certificate;

    .line 169
    if-eqz v8, :cond_4

    .line 171
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 173
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 176
    move-result-object v6

    .line 177
    invoke-interface {v6}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 180
    move-result-object v6

    .line 181
    goto :goto_a

    .line 182
    :catch_8
    move-exception v0

    .line 183
    goto :goto_4

    .line 184
    :cond_4
    :goto_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 187
    move-result v19

    .line 188
    const-string v20, "SecurityPolicy"

    .line 190
    const-string v7, "Admin %d has requested to delete a certificate. Keystore(s) : %s, Alias : %s, Subject : %s, Issuer : %s"

    .line 192
    iget v8, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 194
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v8

    .line 198
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    .line 201
    move-result-object v12

    .line 202
    if-nez v18, :cond_5

    .line 204
    const-string v21, "Not available"
    :try_end_6
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 206
    move-object/from16 v22, v9

    .line 208
    move-object/from16 v3, v21

    .line 210
    goto :goto_b

    .line 211
    :cond_5
    move-object/from16 v22, v9

    .line 213
    move-object/from16 v3, v18

    .line 215
    :goto_b
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getSubject()Ljava/lang/String;

    .line 218
    move-result-object v9

    .line 219
    filled-new-array {v8, v12, v3, v9, v6}, [Ljava/lang/Object;

    .line 222
    move-result-object v3

    .line 223
    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 227
    const/4 v7, 0x1

    .line 228
    const/4 v8, 0x1

    .line 229
    const/4 v6, 0x5

    .line 230
    move/from16 v9, v19

    .line 232
    move-object v12, v10

    .line 233
    move-object/from16 v10, v20

    .line 235
    move-object/from16 v23, v11

    .line 237
    move-object v11, v3

    .line 238
    move-object v3, v12

    .line 239
    move v12, v5

    .line 240
    :try_start_8
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 243
    move-object/from16 v6, v18

    .line 245
    goto :goto_c

    .line 246
    :catch_9
    move-exception v0

    .line 247
    goto :goto_6

    .line 248
    :catch_a
    move-object/from16 v6, v17

    .line 250
    move-object/from16 v7, v23

    .line 252
    goto :goto_f

    .line 253
    :catch_b
    move-exception v0

    .line 254
    goto :goto_5

    .line 255
    :catch_c
    move-exception v0

    .line 256
    move-object/from16 v22, v9

    .line 258
    move-object v3, v10

    .line 259
    move-object/from16 v23, v11

    .line 261
    move-object/from16 v18, v6

    .line 263
    goto :goto_6

    .line 264
    :catch_d
    move-object/from16 v22, v9

    .line 266
    move-object v3, v10

    .line 267
    move-object/from16 v18, v6

    .line 269
    goto :goto_7

    .line 270
    :cond_6
    move-object/from16 v22, v9

    .line 272
    move-object v3, v10

    .line 273
    move-object/from16 v23, v11

    .line 275
    :goto_c
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 278
    move-object/from16 v9, v22

    .line 280
    move-object/from16 v7, v23

    .line 282
    const/4 v12, 0x1

    .line 283
    goto :goto_10

    .line 284
    :catchall_3
    move-exception v0

    .line 285
    move-object/from16 v6, v17

    .line 287
    goto/16 :goto_15

    .line 289
    :goto_d
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    move-object/from16 v7, v23

    .line 307
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 310
    :goto_e
    :try_start_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 313
    move-object/from16 v17, v6

    .line 315
    move-object/from16 v6, v18

    .line 317
    move-object/from16 v9, v22

    .line 319
    const/4 v12, 0x0

    .line 320
    goto :goto_10

    .line 321
    :catchall_4
    move-exception v0

    .line 322
    goto/16 :goto_15

    .line 324
    :catch_e
    move-object/from16 v22, v9

    .line 326
    move-object v3, v10

    .line 327
    move-object v7, v11

    .line 328
    move-object/from16 v18, v6

    .line 330
    goto/16 :goto_8

    .line 332
    :goto_f
    :try_start_c
    new-instance v8, Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v0, "?"

    .line 342
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 349
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 352
    goto :goto_e

    .line 353
    :goto_10
    if-eqz v16, :cond_9

    .line 355
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 358
    move-result-wide v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 359
    if-nez v6, :cond_7

    .line 361
    :try_start_e
    invoke-static {v9, v13}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveCertificateAliasFromKeyChain(Landroid/security/IKeyChainService;Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 364
    move-result-object v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 365
    goto :goto_11

    .line 366
    :catchall_5
    move-exception v0

    .line 367
    goto :goto_12

    .line 368
    :cond_7
    :goto_11
    if-eqz v6, :cond_8

    .line 370
    if-eqz v9, :cond_8

    .line 372
    :try_start_f
    invoke-interface {v9, v6}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    .line 375
    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 376
    and-int/2addr v0, v12

    .line 377
    move v12, v0

    .line 378
    goto :goto_13

    .line 379
    :catch_f
    move-exception v0

    .line 380
    move-object v6, v0

    .line 381
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 397
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 400
    const/4 v12, 0x0

    .line 401
    goto :goto_13

    .line 402
    :goto_12
    :try_start_11
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    throw v0

    .line 406
    :cond_8
    :goto_13
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    :cond_9
    and-int/lit8 v0, v2, 0x2

    .line 411
    if-eqz v0, :cond_a

    .line 413
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    .line 416
    move-result-object v0

    .line 417
    const/4 v3, 0x2

    .line 418
    const/4 v6, 0x0

    .line 419
    invoke-virtual {v1, v13, v0, v3, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasAndDeleteCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    .line 422
    move-result v0

    .line 423
    and-int/2addr v12, v0

    .line 424
    :cond_a
    and-int/lit8 v0, v2, 0x4

    .line 426
    if-eqz v0, :cond_b

    .line 428
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getAlias()Ljava/lang/String;

    .line 431
    move-result-object v0

    .line 432
    const/4 v3, 0x4

    .line 433
    invoke-virtual {v1, v13, v0, v3, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasAndDeleteCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z

    .line 436
    move-result v0

    .line 437
    and-int/2addr v12, v0

    .line 438
    :cond_b
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 440
    iget-object v3, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 442
    invoke-direct {v0, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 445
    iget-boolean v3, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    .line 447
    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 450
    if-eqz v17, :cond_c

    .line 452
    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 455
    :cond_c
    if-eqz v12, :cond_d

    .line 457
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 459
    const-string v3, "KNOX_AKS"

    .line 461
    const-string v6, "API:deleteCertificateFromKeystore"

    .line 463
    const/4 v7, 0x1

    .line 464
    invoke-direct {v0, v3, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    const-string/jumbo v3, "cId"

    .line 470
    iget v6, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 472
    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 475
    const-string/jumbo v3, "uId"

    .line 478
    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 481
    iget-object v1, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 483
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 486
    move-result-object v1

    .line 487
    iget v3, v4, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 489
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 492
    move-result-object v1

    .line 493
    const-string/jumbo v3, "pN"

    .line 496
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string/jumbo v1, "key"

    .line 502
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 512
    :cond_d
    return v12

    .line 513
    :goto_14
    :try_start_12
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 517
    :goto_15
    if-eqz v6, :cond_e

    .line 519
    invoke-virtual {v6}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 522
    :cond_e
    throw v0

    .line 523
    :goto_16
    return v1
.end method

.method public final deleteCertificateFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateInfo;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string p1, "Failed to dump Default keystore "

    .line 3
    const-string p3, "SecurityPolicy"

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 7
    const-string v1, "android.permission.DUMP"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string p0, "Permission Denial: can\'t dump SecurityPolicy"

    .line 17
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v2, Ljava/util/Random;

    .line 35
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 38
    const-string/jumbo v2, "user"

    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/os/UserManager;

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    move-result-wide v3

    .line 56
    const/4 v5, 0x1

    .line 57
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 60
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 80
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "[VPN and Apps keystore]"

    .line 100
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v1

    .line 121
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v3

    .line 125
    const/4 v4, 0x0

    .line 126
    const-string v5, ": "

    .line 128
    const-string v6, "Aliases for user "

    .line 130
    if-eqz v3, :cond_3

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/Integer;

    .line 138
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 141
    move-result v3

    .line 142
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 153
    new-instance v6, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 155
    invoke-direct {v6, v5, v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 158
    const/4 v3, -0x1

    .line 159
    invoke-virtual {v6, v3, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(ILjava/lang/String;)[Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 166
    if-eqz v3, :cond_2

    .line 168
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 171
    move-result-object v4

    .line 172
    :cond_2
    invoke-static {v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_1

    .line 180
    :cond_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    const-string v3, "[Wifi keystore]"

    .line 191
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "Aliases: "

    .line 203
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 215
    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-direct {v3, v1, v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 221
    const/16 v1, 0x3f2

    .line 223
    invoke-virtual {v3, v1, v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(ILjava/lang/String;)[Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 230
    if-eqz v1, :cond_4

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 235
    move-result-object v1

    .line 236
    goto :goto_2

    .line 237
    :cond_4
    move-object v1, v4

    .line 238
    :goto_2
    invoke-static {v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    .line 254
    const-string v3, "[Default keystore]"

    .line 256
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 276
    move-result-wide v7

    .line 277
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 280
    move-result-object v1

    .line 281
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_6

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    move-result-object v2

    .line 291
    check-cast v2, Ljava/lang/Integer;

    .line 293
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 296
    move-result v2

    .line 297
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 299
    new-instance v9, Landroid/os/UserHandle;

    .line 301
    invoke-direct {v9, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 304
    invoke-static {v3, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 311
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    if-eqz v9, :cond_5

    .line 314
    :try_start_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-interface {v9}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    .line 326
    move-result-object v2

    .line 327
    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->dumpAliases(Ljava/util/List;)Ljava/lang/String;

    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    :goto_4
    :try_start_3
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 337
    goto :goto_3

    .line 338
    :catchall_0
    move-exception p0

    .line 339
    goto/16 :goto_a

    .line 341
    :catch_0
    move-exception v1

    .line 342
    goto :goto_7

    .line 343
    :catch_1
    move-exception v1

    .line 344
    goto :goto_8

    .line 345
    :catchall_1
    move-exception v1

    .line 346
    goto :goto_5

    .line 347
    :catch_2
    move-exception v2

    .line 348
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object v2

    .line 363
    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 366
    goto :goto_4

    .line 367
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 370
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    :cond_6
    :goto_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    goto :goto_9

    .line 375
    :goto_7
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    move-result-object p1

    .line 390
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    goto :goto_6

    .line 394
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-result-object p1

    .line 409
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 412
    goto :goto_6

    .line 413
    :goto_9
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 427
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 429
    const-string/jumbo p3, "deviceEnrolled"

    .line 432
    const-string v0, "bannerText"

    .line 434
    filled-new-array {p3, v0}, [Ljava/lang/String;

    .line 437
    move-result-object p3

    .line 438
    const-string v0, "SECURITY"

    .line 440
    invoke-virtual {p1, p2, v0, p3, v4}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 443
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 445
    const-string/jumbo p1, "deviceBootMode"

    .line 448
    const-string/jumbo p3, "dodBannerVisible"

    .line 451
    const-string/jumbo v0, "deviceLastAccessDate"

    .line 454
    filled-new-array {p3, v0, p1}, [Ljava/lang/String;

    .line 457
    move-result-object p1

    .line 458
    const-string/jumbo p3, "generic"

    .line 461
    invoke-virtual {p0, p2, p3, p1, v4}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 464
    return-void

    .line 465
    :goto_a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    throw p0

    .line 469
    :catchall_2
    move-exception p0

    .line 470
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 473
    throw p0
.end method

.method public final enableRebootBanner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 5
    move-result p0

    .line 6
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    move-result v7

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v8

    .line 18
    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 23
    move-result v4

    .line 24
    const-string v5, "SecurityPolicy"

    .line 26
    const-string p2, "Admin %d has enabled reboot banner."

    .line 28
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    const/4 v1, 0x5

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 54
    move-result v4

    .line 55
    const-string v5, "SecurityPolicy"

    .line 57
    const-string p2, "Admin %d has disabled reboot banner."

    .line 59
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p1

    .line 65
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    const/4 v1, 0x5

    .line 74
    const/4 v2, 0x1

    .line 75
    const/4 v3, 0x1

    .line 76
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    goto :goto_2

    .line 83
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0

    .line 87
    :cond_1
    :goto_2
    return p0
.end method

.method public final enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    if-nez p3, :cond_0

    .line 9
    const/4 p2, 0x0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    const-string v1, "SECURITY"

    .line 14
    const-string/jumbo v5, "deviceEnrolled"

    .line 17
    const/4 v4, 0x0

    .line 18
    move v2, v6

    .line 19
    move v3, p3

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    const-string v3, "SECURITY"

    .line 27
    const-string v4, "bannerText"

    .line 29
    const/4 v2, 0x0

    .line 30
    move v1, v6

    .line 31
    move-object v5, p2

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    invoke-static {p1, p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->addBannerAppToBatteryOptimizationWhitelist(Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 41
    return p0
.end method

.method public final enableRebootBannerWithText(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->enableRebootBannerInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    .line 4
    move-result p0

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v7

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v8

    .line 17
    if-eqz p2, :cond_0

    .line 19
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 22
    move-result v4

    .line 23
    const-string v5, "SecurityPolicy"

    .line 25
    const-string p2, "Admin %d has enabled reboot banner with text %s"

    .line 27
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    const/4 v1, 0x5

    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 53
    move-result v4

    .line 54
    const-string v5, "SecurityPolicy"

    .line 56
    const-string p2, "Admin %d has disabled reboot banner."

    .line 58
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    const/4 v1, 0x5

    .line 73
    const/4 v2, 0x1

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    goto :goto_2

    .line 82
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    throw p0

    .line 86
    :cond_1
    :goto_2
    return p0
.end method

.method public final enforceAdminPermissionIfCallerInCertWhiteListOrDangerousPermission(Lcom/samsung/android/knox/ContextInfo;IZ)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_3

    .line 27
    and-int/lit8 p0, p2, 0x2

    .line 29
    if-eqz p0, :cond_1

    .line 31
    if-eqz p3, :cond_0

    .line 33
    const-string p0, "INSTALL_CERT_TO_GLOBAL_SCOPE_KEYSTORE"

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "DELETE_CERT_FROM_GLOBAL_SCOPE_KEYSTORE"

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eqz p3, :cond_2

    .line 41
    const-string p0, "INSTALL_CERT_TO_USER_SCOPE_KEYSTORE"

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string p0, "DELETE_CERT_FROM_USER_SCOPE_KEYSTORE"

    .line 46
    :goto_0
    invoke-static {p1, p0}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 49
    move-result-object p0

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    and-int/lit8 p1, p2, 0x2

    .line 53
    if-eqz p1, :cond_5

    .line 55
    iget p1, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 57
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 66
    const-string p1, "Operation supported only on owner space"

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0

    .line 72
    :cond_5
    :goto_1
    return-object p0
.end method

.method public final enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 10
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 13
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final enforceOnlySecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final formatExternalStorageCard()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "storage"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 12
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lcom/android/server/enterprise/security/SecurityPolicy$4;

    .line 22
    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy$4;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V

    .line 25
    new-instance v2, Landroid/content/IntentFilter;

    .line 27
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 30
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 32
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v3, "file"

    .line 38
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    const-wide/16 v2, 0x1b58

    .line 49
    :try_start_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    :try_start_2
    const-string v2, "SecurityPolicy"

    .line 57
    const-string/jumbo v3, "formatStorageCard - InterruptedException"

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 72
    :catch_1
    const-string p0, "SecurityPolicy"

    .line 74
    const-string/jumbo v0, "formatStorageCard fail"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_2
    return-void
.end method

.method public final formatSelective(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getCertificatesFromKeystore(Lcom/samsung/android/knox/ContextInfo;II)Ljava/util/List;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    move-result-object v0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 12
    filled-new-array {v3}, [Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    and-int/lit8 v0, p2, 0x2

    .line 31
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    and-int/lit8 v2, p2, 0x2

    .line 45
    if-eqz v2, :cond_3

    .line 47
    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 49
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 58
    const-string v1, "Operation supported only on owner space"

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    :cond_3
    :goto_0
    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 66
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 69
    move-result v2

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 77
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    const/4 v4, 0x0

    .line 86
    if-eqz v0, :cond_4

    .line 88
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 90
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/util/Collection;

    .line 100
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    goto/16 :goto_d

    .line 105
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_d

    .line 111
    and-int/lit8 v0, p2, 0x1

    .line 113
    if-eqz v0, :cond_9

    .line 115
    const-string/jumbo v5, "getAndroidInstalledCertificates "

    .line 118
    const-string v6, "SecurityPolicy"

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 128
    move-result-wide v8

    .line 129
    const/4 v10, 0x1

    .line 130
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 132
    new-instance v11, Landroid/os/UserHandle;

    .line 134
    invoke-direct {v11, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 137
    invoke-static {v0, v11}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 140
    move-result-object v11

    .line 141
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 144
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    if-eqz v12, :cond_8

    .line 147
    :try_start_1
    invoke-interface {v12}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object v13

    .line 155
    :cond_5
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_7

    .line 161
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-interface {v12, v0, v4}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    .line 170
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-eqz v0, :cond_5

    .line 173
    :try_start_2
    invoke-static {v0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    move-result-object v0

    .line 181
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    move-result v14

    .line 185
    if-eqz v14, :cond_5

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    move-result-object v14

    .line 191
    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 193
    if-eqz v14, :cond_6

    .line 195
    new-instance v15, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 197
    invoke-direct {v15}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 200
    invoke-virtual {v15, v14}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 203
    invoke-virtual {v15, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 206
    invoke-virtual {v15, v4}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 209
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    goto :goto_2

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    goto :goto_7

    .line 215
    :catch_0
    move-exception v0

    .line 216
    goto :goto_6

    .line 217
    :catch_1
    move-exception v0

    .line 218
    goto :goto_3

    .line 219
    :catch_2
    move-exception v0

    .line 220
    goto :goto_4

    .line 221
    :goto_3
    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_1

    .line 240
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    goto :goto_1

    .line 259
    :cond_7
    :goto_5
    :try_start_4
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 262
    goto :goto_8

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    goto :goto_b

    .line 265
    :catch_3
    move-exception v0

    .line 266
    goto :goto_9

    .line 267
    :goto_6
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v0

    .line 282
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    goto :goto_5

    .line 286
    :goto_7
    :try_start_6
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 289
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 290
    :cond_8
    :goto_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    goto :goto_a

    .line 294
    :catch_4
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    const-string/jumbo v5, "getAndroidInstalledCertificatesAsUser - is KeyChainService running for user "

    .line 302
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    const-string v5, "?"

    .line 310
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v0

    .line 317
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    goto :goto_8

    .line 321
    :goto_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string/jumbo v11, "getSystemCertificatesAsUser "

    .line 329
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 342
    goto :goto_8

    .line 343
    :goto_a
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    invoke-virtual {v1, v2, v10}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(IZ)Ljava/util/List;

    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    goto :goto_c

    .line 354
    :goto_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    throw v0

    .line 358
    :cond_9
    :goto_c
    and-int/lit8 v0, p2, 0x2

    .line 360
    const-string v5, "CACERT_"

    .line 362
    const-string v6, "USRCERT_"

    .line 364
    if-eqz v0, :cond_a

    .line 366
    const/4 v0, 0x2

    .line 367
    invoke-virtual {v1, v0, v4, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(IILjava/lang/String;)Ljava/util/List;

    .line 370
    move-result-object v7

    .line 371
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(IILjava/lang/String;)Ljava/util/List;

    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    :cond_a
    const/4 v0, 0x4

    .line 382
    and-int/lit8 v7, p2, 0x4

    .line 384
    if-eqz v7, :cond_b

    .line 386
    invoke-virtual {v1, v0, v2, v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(IILjava/lang/String;)Ljava/util/List;

    .line 389
    move-result-object v6

    .line 390
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    invoke-virtual {v1, v0, v2, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->getNativeInstalledCertificatesAsUser(IILjava/lang/String;)Ljava/util/List;

    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 400
    :cond_b
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 403
    move-result v0

    .line 404
    sget v2, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    .line 406
    if-lt v0, v2, :cond_c

    .line 408
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 410
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    move-result-object v1

    .line 414
    sget v2, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    .line 416
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 419
    move-result v5

    .line 420
    invoke-virtual {v3, v2, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget v0, Lcom/samsung/android/knox/keystore/CertificateProvisioning;->MAXIMUM_CERTIFICATE_NUMBERS:I

    .line 429
    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 432
    move-result-object v0

    .line 433
    goto :goto_e

    .line 434
    :cond_c
    iget-object v0, v1, Lcom/android/server/enterprise/security/SecurityPolicy;->mPendingGetCerificates:Ljava/util/HashMap;

    .line 436
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 446
    move-result v0

    .line 447
    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 450
    move-result-object v0

    .line 451
    :goto_e
    return-object v0

    .line 452
    :cond_d
    const/4 v0, 0x0

    .line 453
    return-object v0
.end method

.method public final getCertificatesFromUserKeystore(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const-string/jumbo v0, "deviceLastAccessDate"

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mInjector:Lcom/android/server/enterprise/security/SecurityPolicy$Injector;

    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    return-object p0
.end method

.method public final getNativeInstalledCertificatesAsUser(IILjava/lang/String;)Ljava/util/List;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne p1, v2, :cond_0

    .line 8
    const/4 v2, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v2, 0x3f2

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    :try_start_0
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 15
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 17
    invoke-direct {v4, p0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {v4, v2, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(ILjava/lang/String;)[Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 26
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    move-object v3, v4

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v3, p0

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_1
    if-ge v5, v3, :cond_6

    .line 47
    aget-object v6, p0, v5

    .line 49
    invoke-virtual {v4, v2, v6, p3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    .line 52
    move-result-object v7

    .line 53
    if-nez v7, :cond_2

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    invoke-static {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    .line 59
    move-result-object v7

    .line 60
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v7

    .line 64
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_5

    .line 70
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 76
    if-nez v8, :cond_3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    new-instance v9, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 81
    invoke-direct {v9}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 84
    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 87
    invoke-virtual {v9, p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 90
    invoke-virtual {v9, v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setAlias(Ljava/lang/String;)V

    .line 93
    const-string v8, "USRCERT_"

    .line 95
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_4

    .line 101
    const/4 v8, 0x1

    .line 102
    invoke-virtual {v9, v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setHasPrivateKey(Z)V

    .line 105
    :cond_4
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    return-object p2

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    :goto_4
    if-eqz v3, :cond_7

    .line 122
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 125
    :cond_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw p0
.end method

.method public final getPackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "packageName"

    .line 8
    const-string/jumbo v1, "signature"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 20
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    const-string v4, "adminUid"

    .line 28
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    const-string p1, "CertificateWhiteListTable"

    .line 35
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/content/ContentValues;

    .line 62
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    .line 72
    invoke-direct {v4, v3, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    return-object p1
.end method

.method public final getRebootBannerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const-string v0, "SECURITY"

    .line 9
    const-string v1, "bannerText"

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 33
    if-eqz p1, :cond_0

    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final getRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 6
    const-string/jumbo p1, "device_policy"

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 15
    invoke-virtual {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo p2, "getRequireDeviceEncryption Ex"

    .line 26
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string p2, "SecurityPolicy"

    .line 42
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const/4 p0, 0x0

    .line 49
    return p0
.end method

.method public final getRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "getRequireStorageCardEncryption Ex"

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 13
    const-string/jumbo v3, "device_policy"

    .line 16
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 22
    iget-boolean p1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 24
    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)Z

    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_1
    const-string p1, "SecurityPolicy"

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public final getRestrictedKeyCodes()Ljava/util/Set;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    .line 5
    move-result p0

    .line 6
    if-eqz p0, :cond_0

    .line 8
    new-instance p0, Ljava/util/HashSet;

    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x3e9

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0xbb

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 38
    return-object p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final getServiceName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SecurityPolicy"

    .line 3
    return-object p0
.end method

.method public final getSystemCertificates(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getSystemCertificatesAsUser(IZ)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getSystemCertificatesAsUser(IZ)Ljava/util/List;
    .locals 11

    .line 1
    const-string/jumbo v0, "getSystemCertificatesAsUser "

    .line 4
    const-string v1, "SecurityPolicy"

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v3

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 17
    new-instance v5, Landroid/os/UserHandle;

    .line 19
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 22
    invoke-static {p0, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 29
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    if-eqz v5, :cond_3

    .line 32
    :try_start_1
    invoke-interface {v5}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v6

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_2

    .line 46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Ljava/lang/String;

    .line 52
    new-instance v8, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 54
    invoke-direct {v8}, Lcom/samsung/android/knox/keystore/CertificateInfo;-><init>()V

    .line 57
    invoke-interface {v5, v7, p2}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    .line 60
    move-result-object v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v9, :cond_0

    .line 63
    :try_start_2
    invoke-static {v9}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 66
    move-result-object v9

    .line 67
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v9

    .line 71
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_0

    .line 77
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v10

    .line 81
    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 83
    if-eqz v10, :cond_1

    .line 85
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setCertificate(Ljava/security/cert/Certificate;)V

    .line 88
    const/4 v10, 0x1

    .line 89
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setKeystore(I)V

    .line 92
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setSystemPreloaded(Z)V

    .line 95
    invoke-interface {v5, v7}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    .line 98
    move-result v10

    .line 99
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/keystore/CertificateInfo;->setEnabled(Z)V

    .line 102
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p2

    .line 107
    goto :goto_6

    .line 108
    :catch_0
    move-exception p2

    .line 109
    goto :goto_5

    .line 110
    :catch_1
    move-exception v7

    .line 111
    goto :goto_2

    .line 112
    :catch_2
    move-exception v7

    .line 113
    goto :goto_3

    .line 114
    :goto_2
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 129
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_0

    .line 133
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v7

    .line 148
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    goto :goto_7

    .line 156
    :catchall_1
    move-exception p0

    .line 157
    goto :goto_a

    .line 158
    :catch_3
    move-exception p0

    .line 159
    goto :goto_8

    .line 160
    :goto_5
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p2

    .line 175
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    goto :goto_4

    .line 179
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 182
    throw p2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 183
    :cond_3
    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    goto :goto_9

    .line 187
    :catch_4
    :try_start_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string/jumbo p2, "getSystemCertificatesAsUser - is KeyChainService running for user "

    .line 195
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string p1, "?"

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    goto :goto_7

    .line 214
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object p0

    .line 229
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 232
    goto :goto_7

    .line 233
    :goto_9
    return-object v2

    .line 234
    :goto_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 237
    throw p0
.end method

.method public final installCertificateToKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;IZ)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v3, p3

    .line 5
    const/4 v8, 0x1

    .line 6
    move-object/from16 v1, p1

    .line 8
    move/from16 v9, p6

    .line 10
    invoke-virtual {v0, v1, v9, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceAdminPermissionIfCallerInCertWhiteListOrDangerousPermission(Lcom/samsung/android/knox/ContextInfo;IZ)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    move-result-object v10

    .line 14
    iget v1, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    move-result v7

    .line 20
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr$2(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr$2(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    if-eqz p5, :cond_0

    .line 30
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    move-object v5, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object/from16 v5, p5

    .line 38
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    move-result-wide v18

    .line 42
    :try_start_0
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/security/SecurityPolicy;->validateKeystoreParam(I)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 48
    if-nez p7, :cond_2

    .line 50
    if-eqz v2, :cond_1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_1
    move v11, v7

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    :goto_2
    if-eqz v3, :cond_1

    .line 57
    array-length v1, v3

    .line 58
    if-eqz v1, :cond_1

    .line 60
    if-nez v4, :cond_3

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 66
    move-result v14

    .line 67
    const-string v15, "SecurityPolicy"

    .line 69
    const-string v1, "Admin %d has requested to install a certificate. Keystore(s) : %s, Name : %s"

    .line 71
    iget v6, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v6

    .line 77
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    .line 80
    move-result-object v11

    .line 81
    filled-new-array {v6, v11, v4}, [Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v16

    .line 89
    const/4 v12, 0x1

    .line 90
    const/4 v13, 0x1

    .line 91
    const/4 v11, 0x5

    .line 92
    move/from16 v17, v7

    .line 94
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 97
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 99
    iget-object v6, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {v1, v6}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 104
    move-object/from16 v3, p3

    .line 106
    move/from16 v6, p6

    .line 108
    move v11, v7

    .line 109
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)I

    .line 112
    move-result v1

    .line 113
    goto :goto_4

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_5

    .line 116
    :goto_3
    const-string v1, "SecurityPolicy"

    .line 118
    const-string/jumbo v2, "installCertificateToKeystore: Invalid parameter(s)"

    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, -0x1

    .line 125
    :goto_4
    new-instance v2, Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 127
    iget-object v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 129
    invoke-direct {v2, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 132
    iget-boolean v3, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    .line 134
    invoke-virtual {v2, v11, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    if-nez p7, :cond_4

    .line 142
    if-nez v1, :cond_4

    .line 144
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 146
    const-string v3, "KNOX_AKS"

    .line 148
    const-string v4, "API:installCertificateToKeystore"

    .line 150
    invoke-direct {v2, v3, v8, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    const-string/jumbo v3, "cId"

    .line 156
    iget v4, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 158
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 161
    const-string/jumbo v3, "uId"

    .line 164
    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 167
    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 172
    move-result-object v0

    .line 173
    iget v3, v10, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 175
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    const-string/jumbo v3, "pN"

    .line 182
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v0, "key"

    .line 188
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/security/SecurityPolicy;->getKeystoreString(I)Ljava/lang/String;

    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 198
    :cond_4
    return v1

    .line 199
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    throw v0
.end method

.method public final installCertificateToUserKeystore(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final installCertificateWithType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)V
    .locals 5

    .line 1
    const-string v0, "SecurityPolicy"

    .line 3
    const-string v1, "::installCertificateWithType() : "

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    invoke-static {p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr$2(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    if-eqz p3, :cond_0

    .line 16
    array-length p2, p3

    .line 17
    if-lez p2, :cond_0

    .line 19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v2

    .line 23
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 25
    const-string v4, "android.credentials.INSTALL"

    .line 27
    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    const/high16 v4, 0x10000000

    .line 32
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    const-string/jumbo v4, "senderpackagename"

    .line 38
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 44
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw p0

    .line 80
    :cond_0
    :goto_2
    return-void
.end method

.method public final installCertificatesFromSdCard(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 5

    .line 1
    const-string v0, "SecurityPolicy"

    .line 3
    const-string v1, "::installCertificatesFromSdCard() : "

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndCertProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v2

    .line 12
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 14
    const-string v4, "android.credentials.INSTALL"

    .line 16
    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    const/high16 v4, 0x10000000

    .line 21
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const-string/jumbo v4, "senderpackagename"

    .line 27
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    return-void

    .line 63
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method

.method public final isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isDodBannerVisibleAsUser(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v0, "dodBannerVisible"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string p0, "SecurityPolicy"

    .line 13
    const-string/jumbo p1, "isDodBannerVisibleAsUser facing exception, return default value"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 p0, 0x0

    .line 20
    :goto_0
    if-eqz p0, :cond_0

    .line 22
    const-string p1, "1"

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isExternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 21
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    :try_start_1
    const-string p0, "DirEncryptService"

    .line 26
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/security/IDirEncryptService;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0}, Lcom/samsung/android/security/IDirEncryptService;->isSdCardEncryped()Z

    .line 39
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :catch_0
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return p1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catch_1
    :try_start_2
    const-string p0, "SecurityPolicy"

    .line 48
    const-string/jumbo v2, "is External Storage Encrypted ?"

    .line 51
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    return p1

    .line 58
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method

.method public final isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 11
    const-string/jumbo v2, "device_policy"

    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 20
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v2, 0x3

    .line 25
    if-eq p0, v2, :cond_1

    .line 27
    const/4 v2, 0x5

    .line 28
    if-ne p0, v2, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return p1

    .line 35
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    :try_start_1
    const-string p0, "SecurityPolicy"

    .line 44
    const-string/jumbo v2, "is Internal Storage Encrypted ?"

    .line 47
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return p1

    .line 54
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw p0
.end method

.method public final isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 11
    const-string/jumbo v2, "device_policy"

    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 20
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v2, 0x4

    .line 25
    if-ne p0, v2, :cond_0

    .line 27
    const/4 p1, 0x1

    .line 28
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return p1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    :try_start_1
    const-string p0, "SecurityPolicy"

    .line 36
    const-string/jumbo v2, "is Internal Storage Encrypted by Default key?"

    .line 39
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return p1

    .line 46
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    throw p0
.end method

.method public final isKeyCodeInputAllowed(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    const/16 v0, 0xbb

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const/16 v0, 0x3e9

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    return v1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    .line 18
    move-result p0

    .line 19
    xor-int/2addr p0, v1

    .line 20
    return p0
.end method

.method public final isPackageAlreadyWhiteListed(ILjava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "adminUid"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "packageName"

    .line 10
    invoke-static {v2, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 13
    move-result-object p2

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v3, "#SelectClause#"

    .line 21
    invoke-virtual {p2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    const-string p1, "CertificateWhiteListTable"

    .line 28
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result p1

    .line 38
    const/4 p2, -0x1

    .line 39
    if-lez p1, :cond_0

    .line 41
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Landroid/content/ContentValues;

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result p0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p0, p2

    .line 57
    :goto_0
    if-eq p0, p2, :cond_1

    .line 59
    const/4 p0, 0x1

    .line 60
    return p0

    .line 61
    :cond_1
    return v2
.end method

.method public final isRebootBannerEnabled(I)Z
    .locals 2

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 4
    const-string v0, "SECURITY"

    const-string/jumbo v1, "deviceEnrolled"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isRebootBannerEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyguardLaunched()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->startBannerService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_3

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :goto_2
    return-void

    .line 41
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    throw p0
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeAccountsByType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string/jumbo v0, "removeAccountsByType() : there is no account for type - "

    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->getEDM$27()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 13
    filled-new-array {v3}, [Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    const-string v2, "SecurityPolicy"

    .line 31
    if-nez p2, :cond_0

    .line 33
    const-string/jumbo p0, "removeAccountsByType() failed - type is invalid"

    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v1

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 43
    move-result p1

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 47
    move-result-wide v3

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 53
    move-result-object p0

    .line 54
    new-instance v5, Landroid/os/UserHandle;

    .line 56
    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 59
    invoke-virtual {p0, p2, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    .line 62
    move-result-object v5

    .line 63
    if-eqz v5, :cond_1

    .line 65
    array-length v6, v5

    .line 66
    if-lez v6, :cond_1

    .line 68
    array-length v0, v5

    .line 69
    move v6, v1

    .line 70
    :goto_0
    if-ge v6, v0, :cond_2

    .line 72
    aget-object v7, v5, v6

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string/jumbo v9, "removeAccountsByType() account = "

    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v8

    .line 94
    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v8, Landroid/os/UserHandle;

    .line 99
    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 102
    const/4 v9, 0x0

    .line 103
    invoke-virtual {p0, v7, v9, v9, v8}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    const/4 v1, 0x1

    .line 124
    goto :goto_2

    .line 125
    :goto_1
    :try_start_1
    const-string/jumbo p1, "removeAccountsByType() : failed. error occurs."

    .line 128
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    :goto_2
    if-nez v1, :cond_3

    .line 136
    const-string/jumbo p0, "removeAccountsByType() : has failed. type - "

    .line 139
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_3
    return v1

    .line 147
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw p0
.end method

.method public final removePackagesFromCertificateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceCertificateProvisioningPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "CertificateWhiteListTable"

    .line 7
    const-string v1, "adminUid"

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz p2, :cond_4

    .line 13
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_5

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    move v4, v3

    .line 24
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3

    .line 30
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lcom/samsung/android/knox/AppIdentity;

    .line 36
    if-nez v5, :cond_0

    .line 38
    move v4, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    .line 42
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 45
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string/jumbo v7, "packageName"

    .line 57
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_1

    .line 70
    const-string/jumbo v7, "signature"

    .line 73
    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 82
    invoke-virtual {v5, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 85
    move-result v5

    .line 86
    if-lez v5, :cond_2

    .line 88
    move v5, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v5, v2

    .line 91
    :goto_1
    and-int/2addr v4, v5

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move v2, v4

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    new-instance p2, Landroid/content/ContentValues;

    .line 97
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 100
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 114
    move-result p0

    .line 115
    if-lez p0, :cond_5

    .line 117
    move v2, v3

    .line 118
    :cond_5
    :goto_2
    return v2
.end method

.method public final resetCredentialStorage(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 10

    .line 1
    const-string v0, "RESET_CREDENTIAL_STORAGE"

    .line 3
    invoke-static {p1, v0}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v8

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 20
    move-result v4

    .line 21
    const-string v5, "SecurityPolicy"

    .line 23
    const-string v1, "Admin %d has requested to clear credential storages"

    .line 25
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 39
    const/4 v2, 0x1

    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v1, 0x5

    .line 42
    move v7, v0

    .line 43
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 46
    const/16 v1, 0x3e8

    .line 48
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 51
    move-result v1

    .line 52
    int-to-long v1, v1

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static {v3, v1, v2}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x1

    .line 59
    if-nez v1, :cond_0

    .line 61
    move v1, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move v1, v3

    .line 64
    :goto_0
    if-nez v0, :cond_2

    .line 66
    const/4 v4, 0x2

    .line 67
    const-wide/16 v5, 0x66

    .line 69
    invoke-static {v4, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 72
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-nez v4, :cond_1

    .line 75
    move v3, v2

    .line 76
    :cond_1
    and-int/2addr v1, v3

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    :goto_1
    :try_start_1
    new-instance v3, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;

    .line 82
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$ResetKeyChain;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v4

    .line 89
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    move-result-object v3

    .line 97
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 99
    const-wide/16 v5, 0xbb8

    .line 101
    invoke-virtual {v3, v5, v6, v4}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    move-result v3

    .line 111
    and-int/2addr v1, v3

    .line 112
    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 114
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 116
    invoke-direct {v3, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 119
    iget-boolean v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBootCompleted:Z

    .line 121
    invoke-virtual {v3, v0, v4}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    :try_start_2
    const-string v3, "SecurityPolicy"

    .line 127
    const-string/jumbo v4, "resetCredentialStorage EX: "

    .line 130
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    if-eqz v1, :cond_3

    .line 138
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 140
    const-string v4, "KNOX_AKS"

    .line 142
    const-string v5, "API:resetCredentialStorage"

    .line 144
    invoke-direct {v3, v4, v2, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    const-string/jumbo v2, "cId"

    .line 150
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 152
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 155
    const-string/jumbo v2, "uId"

    .line 158
    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 161
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 166
    move-result-object p0

    .line 167
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 169
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 173
    const-string/jumbo p1, "pN"

    .line 176
    invoke-virtual {v3, p1, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 182
    :cond_3
    return v1

    .line 183
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw p0
.end method

.method public final retrieveAliasAndDeleteCertificate(Ljava/security/cert/Certificate;Ljava/lang/String;II)Z
    .locals 7

    .line 1
    const-string v3, "CACERT_"

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasToBeDeleted(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    const-string v4, "USRCERT_"

    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move v5, p3

    .line 20
    move v6, p4

    .line 21
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/security/SecurityPolicy;->retrieveAliasToBeDeleted(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    :cond_0
    const-string p1, "Delete state : "

    .line 27
    const-string p2, "SecurityPolicy"

    .line 29
    if-nez v0, :cond_1

    .line 31
    const-string/jumbo p0, "deleteCertificateFromNativeKeystoreAsUser: alias is null for keystore = "

    .line 34
    const-string p1, ", userId = "

    .line 36
    invoke-static {p3, p4, p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v1

    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_0
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 48
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {v4, p0, p4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    const/4 p0, 0x4

    .line 54
    if-ne p3, p0, :cond_2

    .line 56
    const/4 p0, -0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/16 p0, 0x3f2

    .line 60
    :goto_0
    :try_start_1
    invoke-virtual {v4, p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteEntry(ILjava/lang/String;)Z

    .line 63
    move-result p0

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 82
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    :goto_1
    return p0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    move-object v3, v4

    .line 88
    goto :goto_2

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    :goto_2
    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 95
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw p0
.end method

.method public final retrieveAliasToBeDeleted(Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p4

    .line 4
    move/from16 v2, p5

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v3

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v7

    .line 20
    const/16 v8, 0x3f2

    .line 22
    const/4 v9, -0x1

    .line 23
    const/4 v10, 0x4

    .line 24
    if-nez v7, :cond_0

    .line 26
    move-object/from16 v7, p2

    .line 28
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_2

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto/16 :goto_5

    .line 35
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/security/SecurityPolicy;->getValidStr$2(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    if-eqz v6, :cond_2

    .line 45
    if-ne v1, v10, :cond_1

    .line 47
    move v7, v9

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v7, v8

    .line 50
    :goto_0
    :try_start_1
    iget-object v13, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 52
    new-instance v14, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 54
    invoke-direct {v14, v13, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {v14, v7, v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->listAliases(ILjava/lang/String;)[Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v14}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    throw v0

    .line 70
    :cond_2
    move-object v6, v5

    .line 71
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    if-eqz v6, :cond_3

    .line 76
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    move-result-object v6

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    .line 83
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    :goto_2
    if-ne v1, v10, :cond_4

    .line 88
    move v8, v9

    .line 89
    :cond_4
    new-instance v1, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 91
    iget-object v0, v0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {v1, v0, v2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v0

    .line 100
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_8

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/String;

    .line 112
    move-object/from16 v6, p3

    .line 114
    invoke-virtual {v1, v8, v2, v6}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    .line 117
    move-result-object v7

    .line 118
    if-eqz v7, :cond_7

    .line 120
    invoke-static {v7}, Lcom/android/server/enterprise/utils/CertificateUtil;->toCertificates([B)Ljava/util/List;

    .line 123
    move-result-object v7

    .line 124
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v7

    .line 128
    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_7

    .line 134
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 140
    if-eqz v9, :cond_6

    .line 142
    move-object/from16 v10, p1

    .line 144
    invoke-virtual {v9, v10}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    if-eqz v9, :cond_5

    .line 150
    move-object v5, v2

    .line 151
    goto :goto_3

    .line 152
    :catchall_2
    move-exception v0

    .line 153
    move-object v5, v1

    .line 154
    goto :goto_5

    .line 155
    :cond_6
    move-object/from16 v10, p1

    .line 157
    goto :goto_4

    .line 158
    :cond_7
    move-object/from16 v10, p1

    .line 160
    goto :goto_3

    .line 161
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 164
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    return-object v5

    .line 168
    :goto_5
    if-eqz v5, :cond_9

    .line 170
    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 173
    :cond_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw v0
.end method

.method public final setDeviceLastAccessDate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "com.samsung.android.mdm"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 27
    return v1

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 31
    move-result p1

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string/jumbo v0, "deviceLastAccessDate"

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 40
    sget-object p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    check-cast p0, Ljava/util/HashMap;

    .line 48
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v1, 0x1

    .line 52
    :catch_0
    return v1
.end method

.method public final setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOnlySecurityPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "com.samsung.android.mdm"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 27
    return v1

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 31
    move-result p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string/jumbo v2, "dodBannerVisible"

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 44
    const/4 v0, 0x1

    .line 45
    if-nez p1, :cond_2

    .line 47
    const-string p1, "DexBlocker was failed"

    .line 49
    const-string/jumbo v2, "desktopmode"

    .line 52
    const-string v3, "SecurityPolicy"

    .line 54
    if-eqz p2, :cond_1

    .line 56
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    :try_start_2
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 72
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .line 74
    invoke-virtual {p2, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 77
    const-string p2, "DexBlocker was registered"

    .line 79
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    :try_start_3
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->setHomeAndRecentKey(Z)V

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 96
    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    :try_start_4
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 109
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mBlocker:Lcom/android/server/enterprise/security/SecurityPolicy$1;

    .line 111
    invoke-virtual {p2, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    .line 114
    const-string p2, "DexBlocker was unregistered"

    .line 116
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    :try_start_5
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->setHomeAndRecentKey(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :cond_2
    :goto_2
    move v1, v0

    .line 130
    :catch_2
    return v1
.end method

.method public final setExternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 10

    .line 1
    const-string v0, "SecurityPolicy"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 25
    const/4 p0, 0x0

    .line 26
    if-nez p2, :cond_0

    .line 28
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    .line 30
    const-string/jumbo v4, "device_policy"

    .line 33
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 39
    invoke-virtual {v3, p0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    const-string p0, "SD Encryption enabled by some other admin cannot decrypt"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_0
    const/4 v3, -0x1

    .line 57
    const/4 v4, 0x1

    .line 58
    if-ne p2, v4, :cond_1

    .line 60
    :try_start_1
    new-instance v5, Lcom/samsung/android/security/SemSdCardEncryption;

    .line 62
    sget-object v6, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {v5, v6}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v5, v4, v3, p0}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v4, Lcom/samsung/android/security/SemSdCardEncryption;

    .line 73
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {v4, v5}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-virtual {v4, v5, v3, p0}, Lcom/samsung/android/security/SemSdCardEncryption;->setSdCardEncryptionPolicy(IILjava/lang/String;)I

    .line 82
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 84
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 87
    move-result v6

    .line 88
    const-string v7, "SecurityPolicy"

    .line 90
    const-string p0, "Admin %d has requested encryption of external storage"

    .line 92
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p2

    .line 98
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 101
    move-result-object p2

    .line 102
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v8

    .line 106
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 108
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 111
    move-result v9

    .line 112
    const/4 v3, 0x5

    .line 113
    const/4 v4, 0x1

    .line 114
    const/4 v5, 0x1

    .line 115
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    goto :goto_2

    .line 122
    :catch_0
    :try_start_2
    const-string/jumbo p0, "is External Storage Encrypted?"

    .line 125
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    goto :goto_1

    .line 129
    :goto_2
    return-void

    .line 130
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    throw p0
.end method

.method public final setHomeAndRecentKey(Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 7
    if-nez v2, :cond_1

    .line 9
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 12
    if-nez v2, :cond_0

    .line 14
    const-string/jumbo v2, "statusbar"

    .line 17
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 27
    if-nez v2, :cond_0

    .line 29
    const-string v2, "SecurityPolicy"

    .line 31
    const-string/jumbo v3, "warning: no STATUS_BAR_SERVICE"

    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    monitor-exit p0

    .line 43
    iput-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 45
    goto :goto_2

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1

    .line 48
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 50
    if-eqz v2, :cond_3

    .line 52
    if-nez p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    .line 56
    const-string v3, "SecurityPolicy"

    .line 58
    const/high16 v4, 0x1200000

    .line 60
    invoke-interface {v2, v4, p1, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mToken:Landroid/os/IBinder;

    .line 66
    const-string v3, "SecurityPolicy"

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-interface {v2, v4, p1, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 72
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 74
    if-nez p1, :cond_4

    .line 76
    const-string p0, "SecurityPolicy"

    .line 78
    const-string/jumbo p1, "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction."

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/4 v2, 0x3

    .line 86
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 89
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 91
    const/16 v2, 0x3e9

    .line 93
    invoke-virtual {p1, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 96
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 98
    const/16 p1, 0xbb

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    goto :goto_4

    .line 104
    :catch_0
    const-string p0, "SecurityPolicy"

    .line 106
    const-string/jumbo p1, "setHomeAndRecentKey was failed"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return-void
.end method

.method public final setInternalStorageEncryption(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 10

    .line 1
    const-string v0, "SecurityPolicy"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 17
    const-string/jumbo v4, "device_policy"

    .line 20
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 26
    if-nez p2, :cond_1

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 35
    const-string p0, "SD Encryption enabled by some other admin cannot decrypt"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_3

    .line 47
    :cond_1
    if-nez p2, :cond_2

    .line 49
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 55
    const-string/jumbo p0, "setInternalStorageEncryption : Not encrypted"

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return-void

    .line 65
    :cond_2
    if-eqz p2, :cond_3

    .line 67
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncrypted(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 73
    const-string/jumbo p0, "setInternalStorageEncryption : device is already encrypted"

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    return-void

    .line 83
    :cond_3
    :try_start_3
    const-string/jumbo v3, "setInternalStorageEncryption : Launching Encrption activity"

    .line 86
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p2, :cond_5

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isInternalStorageEncryptedbyDefaultKey(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 94
    move-result p2

    .line 95
    const/high16 v3, 0x10000000

    .line 97
    if-eqz p2, :cond_4

    .line 99
    new-instance p2, Landroid/content/Intent;

    .line 101
    const-string v4, "android.app.action.START_CRYPT_INTERSTITIAL"

    .line 103
    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 117
    const-string v4, "android.app.action.START_ENCRYPTION"

    .line 119
    invoke-direct {p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 133
    move-result v6

    .line 134
    const-string v7, "SecurityPolicy"

    .line 136
    const-string p0, "Admin %d has requested encryption of internal storage"

    .line 138
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object p2

    .line 144
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 147
    move-result-object p2

    .line 148
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object v8

    .line 152
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 154
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 157
    move-result v9

    .line 158
    const/4 v3, 0x5

    .line 159
    const/4 v4, 0x1

    .line 160
    const/4 v5, 0x1

    .line 161
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :cond_5
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    goto :goto_2

    .line 168
    :catch_0
    :try_start_4
    const-string/jumbo p0, "is Internal Storage Encrypted?"

    .line 171
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    goto :goto_1

    .line 175
    :goto_2
    return-void

    .line 176
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw p0
.end method

.method public final setMediator(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 7
    iget-object p1, p1, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 9
    check-cast p1, Ljava/util/HashSet;

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public final setRequireDeviceEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setRequireDeviceEncryption Ex"

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 13
    const-string/jumbo p1, "device_policy"

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 22
    invoke-virtual {p0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_1
    const-string p1, "SecurityPolicy"

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_0

    .line 57
    :goto_1
    return-void

    .line 58
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method

.method public final setRequireStorageCardEncryption(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setRequireStorageCardEncryption Ex"

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 13
    const-string/jumbo v3, "device_policy"

    .line 16
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 22
    iget-boolean p1, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 24
    invoke-virtual {p0, p2, p3, p1}, Landroid/app/admin/DevicePolicyManager;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_1
    const-string p1, "SecurityPolicy"

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-void

    .line 60
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public final startBannerService()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 3
    const-string v1, "SecurityPolicy"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string/jumbo v0, "startBannerService() emergency service is null"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 19
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    const-string v2, "android.intent.action.MAIN"

    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v2, "android.intent.category.LAUNCHER"

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v2, "com.samsung.android.mdm"

    .line 35
    const-string/jumbo v3, "com.samsung.android.mdm.DodBanner"

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 43
    new-instance v2, Landroid/os/UserHandle;

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 49
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_1

    .line 55
    const/4 v3, 0x1

    .line 56
    :cond_1
    if-nez v3, :cond_2

    .line 58
    const-string/jumbo p0, "startBannerService() failed. userId = 0, ret = "

    .line 61
    invoke-static {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    :cond_2
    return-void
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    const-string p0, "SecurityPolicy"

    .line 3
    const-string/jumbo v0, "systemReady()"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final wipeDevice(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 10

    .line 1
    const-string v0, "android.intent.action.MASTER_CLEAR"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy;->enforceOwnerOnlyAndSecurityPermission$2(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v2

    .line 14
    sget-object v4, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 16
    const-class v5, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 18
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;

    .line 24
    check-cast v4, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 31
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 34
    move-result-object v4

    .line 35
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v4

    .line 39
    move v5, v1

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v6

    .line 44
    const/4 v7, 0x1

    .line 45
    if-eqz v6, :cond_1

    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 53
    if-eqz v6, :cond_0

    .line 55
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 58
    move-result v8

    .line 59
    if-nez v8, :cond_0

    .line 61
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 64
    move-result-object v8

    .line 65
    if-eqz v8, :cond_0

    .line 67
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_0

    .line 77
    move v5, v7

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v4, 0x3

    .line 80
    const/4 v6, 0x2

    .line 81
    const-string v8, "SecurityPolicy"

    .line 83
    if-eq p2, v6, :cond_2

    .line 85
    if-ne p2, v4, :cond_4

    .line 87
    :cond_2
    if-ne v5, v7, :cond_3

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    move v5, v7

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move v1, v7

    .line 95
    goto/16 :goto_4

    .line 97
    :cond_3
    :try_start_1
    const-string v5, "This device doesn\'t suppot External SD card"

    .line 99
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-boolean v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    :cond_4
    move v5, v1

    .line 105
    :goto_1
    if-eq p2, v7, :cond_5

    .line 107
    if-ne p2, v4, :cond_9

    .line 109
    :cond_5
    :try_start_2
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    move-result-object p2

    .line 115
    const-string/jumbo v4, "device_provisioned"

    .line 118
    invoke-static {p2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_6

    .line 124
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 126
    const-string/jumbo v4, "persistent_data_block"

    .line 129
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 135
    if-eqz p2, :cond_6

    .line 137
    invoke-virtual {p2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 140
    goto :goto_2

    .line 141
    :catch_1
    move v1, v5

    .line 142
    goto/16 :goto_4

    .line 144
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 146
    if-nez p2, :cond_7

    .line 148
    new-instance p2, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 150
    invoke-direct {p2, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    .line 153
    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 155
    :cond_7
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 157
    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 159
    new-instance p2, Landroid/content/IntentFilter;

    .line 161
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 169
    iget-object v9, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 171
    invoke-virtual {v4, v9, p2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 174
    new-instance p2, Landroid/content/Intent;

    .line 176
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 184
    move-result-object v0

    .line 185
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 187
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    const-string v4, "android.intent.extra.REASON"

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v9, "DeviceWipeByMDM("

    .line 200
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    if-eqz v0, :cond_8

    .line 205
    aget-object v0, v0, v1

    .line 207
    goto :goto_3

    .line 208
    :cond_8
    const-string/jumbo v0, "null!"

    .line 211
    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v0, ":"

    .line 216
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 221
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, ")"

    .line 226
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    iput-boolean v7, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 243
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 245
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 248
    move-result p2

    .line 249
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    move-result-object v0

    .line 255
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 258
    move-result-object v0

    .line 259
    const/16 v1, 0x2c

    .line 261
    invoke-static {p2, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    goto :goto_5

    .line 265
    :catch_2
    :goto_4
    const-string/jumbo p2, "formatStorageCard fail"

    .line 268
    invoke-static {v8, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move v5, v1

    .line 272
    :cond_9
    :goto_5
    iget-boolean p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 274
    if-eqz p2, :cond_a

    .line 276
    if-eqz v5, :cond_a

    .line 278
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 280
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 283
    move-result p2

    .line 284
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    move-result-object p1

    .line 290
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 293
    move-result-object p1

    .line 294
    const/16 v0, 0x2d

    .line 296
    invoke-static {p2, v0, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 299
    :cond_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo p2, "formatStorageCard() = "

    .line 307
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    iget-boolean p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 312
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 315
    const-string p2, ", isExternal = "

    .line 317
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object p1

    .line 327
    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z

    .line 332
    return p0
.end method
