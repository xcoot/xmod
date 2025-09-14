.class public final Lcom/android/server/am/ProcessList$ProcessListSettingsListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mSdkSandboxApplyRestrictionsAudit:Z

.field public mSdkSandboxApplyRestrictionsNext:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 11
    const-string v0, "adservices"

    .line 13
    const-string v1, "apply_sdk_sandbox_audit_restrictions"

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    move-result v1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    .line 22
    const-string v1, "apply_sdk_sandbox_next_restrictions"

    .line 24
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    .line 30
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 24
    if-nez v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 30
    move-result v3

    .line 31
    const v4, -0x1b6d945b

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eq v3, v4, :cond_2

    .line 38
    const v4, 0x503e8299

    .line 41
    if-eq v3, v4, :cond_1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v3, "apply_sdk_sandbox_audit_restrictions"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 52
    move v2, v6

    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    const-string v3, "apply_sdk_sandbox_next_restrictions"

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 64
    move v2, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 67
    :goto_2
    if-eqz v2, :cond_5

    .line 69
    if-eq v2, v5, :cond_4

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string v2, "apply_sdk_sandbox_next_restrictions"

    .line 74
    invoke-virtual {p1, v2, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    move-result v2

    .line 78
    iput-boolean v2, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const-string v2, "apply_sdk_sandbox_audit_restrictions"

    .line 83
    invoke-virtual {p1, v2, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 86
    move-result v2

    .line 87
    iput-boolean v2, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    .line 89
    goto :goto_0

    .line 90
    :cond_6
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0
.end method

.method public unregisterObserver()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 4
    return-void
.end method
