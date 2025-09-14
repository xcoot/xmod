.class public final Lcom/android/server/enterprise/restriction/RoamingPolicy;
.super Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mPolicyState:Ljava/lang/String;

.field public final mReceiver:Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

.field public final mSimFactoryIntentReceiver:Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

.field public final mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mSimFactoryIntentReceiver:Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string/jumbo v3, "phone"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 35
    .line 36
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 37
    .line 38
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    invoke-direct {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const-string v1, "RoamingPolicy"

    .line 52
    .line 53
    const-string/jumbo v3, "registering roaming listener"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroid/content/IntentFilter;

    .line 60
    .line 61
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "android.intent.action.SERVICE_STATE"

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    :cond_0
    new-instance p0, Landroid/content/IntentFilter;

    .line 75
    .line 76
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x2

    .line 86
    invoke-virtual {p1, v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static setMasterSyncAutomatically(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    invoke-static {p0, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v5, "setMasterSyncAutomatically : userid = "

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "RoamingPolicy"

    .line 34
    .line 35
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final deregisterRoamingListener()V
    .locals 2

    .line 1
    const-string v0, "RoamingPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "unregistering roaming listener"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mSimFactoryIntentReceiver:Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v1, "Exception thrown!"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "android.permission.DUMP"

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string p0, "Permission Denial: can\'t dump Roaming Policy"

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ROAMING"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "ROAMING"

    .line 4
    .line 5
    const-string/jumbo v0, "roamingDataEnabled"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    const-string/jumbo p0, "isDataRoamingEnabled : "

    .line 38
    .line 39
    .line 40
    const-string v0, "RoamingPolicy"

    .line 41
    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method public final isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "ROAMING"

    .line 4
    .line 5
    const-string/jumbo v0, "roamingPushEnabled"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    const-string/jumbo p0, "isRoamingPushEnabled : "

    .line 38
    .line 39
    .line 40
    const-string v0, "RoamingPolicy"

    .line 41
    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method public final isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "ROAMING"

    .line 4
    .line 5
    const-string/jumbo v0, "roamingSyncEnabled"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    const-string/jumbo p0, "isRoamingSyncEnabled : "

    .line 38
    .line 39
    .line 40
    const-string v0, "RoamingPolicy"

    .line 41
    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method public final isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string p1, "ROAMING"

    .line 4
    .line 5
    const-string/jumbo v0, "roamingVoiceCallsEnabled"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    return p1
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
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onAdminRemoved : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "RoamingPolicy"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, p1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string v2, "Roaming Sync is not being applied, so de-register listener and restore sync setting"

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->deregisterRoamingListener()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne p1, v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setRoamingDataAllowedSystemUI(IZ)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final restoreUserAutoSyncSetting()V
    .locals 5

    .line 1
    const-string/jumbo v0, "name"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "nonRoamingAutoSyncSetting"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    .line 13
    const-string/jumbo v2, "generic"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "value"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v3, "restoreUserAutoSyncSetting : stored user sync setting is "

    .line 24
    .line 25
    .line 26
    const-string v4, "RoamingPolicy"

    .line 27
    .line 28
    invoke-static {v3, v1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v3, "1"

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setMasterSyncAutomatically(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    .line 44
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "ROAMING"

    .line 11
    .line 12
    const-string/jumbo v5, "roamingDataEnabled"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.ROAMING_SETROAMINGDATA_INTERNAL"

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v2, "com.samsung.android.app.telephonyui"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "roamingData"

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_ROAMING"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v2, "setDataRoaming : "

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "RoamingPolicy"

    .line 86
    .line 87
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->setRoamingDataAllowedSystemUI(IZ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    .line 98
    .line 99
    .line 100
    return p2
.end method

.method public final setRoamingDataAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setRoamingDataAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "RoamingPolicy"

    .line 22
    .line 23
    const-string/jumbo p2, "setRoamingDataAllowedSystemUI() failed. "

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "ROAMING"

    .line 11
    .line 12
    const-string/jumbo v5, "roamingPushEnabled"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v1, "setRoamingPush : "

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v0, "RoamingPolicy"

    .line 36
    .line 37
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    .line 41
    .line 42
    .line 43
    return p1
.end method

.method public final setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const-string v1, "ROAMING"

    .line 10
    .line 11
    const-string/jumbo v5, "roamingSyncEnabled"

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v2, "setRoamingSync : "

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v1, "RoamingPolicy"

    .line 36
    .line 37
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    const-string/jumbo p1, "registering roaming listener"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/content/IntentFilter;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string p2, "android.intent.action.SERVICE_STATE"

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mSimFactoryIntentReceiver:Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    .line 69
    .line 70
    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->deregisterRoamingListener()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->restoreUserAutoSyncSetting()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    .line 84
    .line 85
    .line 86
    return v0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->enforceOwnerOnlyAndRoamingPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "ROAMING"

    .line 11
    .line 12
    const-string/jumbo v5, "roamingVoiceCallsEnabled"

    .line 13
    .line 14
    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    .line 21
    .line 22
    .line 23
    return p1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->updatePolicyState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updatePolicyState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 15
    .line 16
    const-string/jumbo v1, "roamingDataEnabled"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "roamingVoiceCallsEnabled"

    .line 20
    .line 21
    .line 22
    const-string v3, "adminUid"

    .line 23
    .line 24
    const-string/jumbo v4, "roamingSyncEnabled"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "roamingPushEnabled"

    .line 28
    .line 29
    .line 30
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const-string v3, "ROAMING"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->readColumns(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy;->mPolicyState:Ljava/lang/String;

    .line 47
    .line 48
    return-void
.end method
