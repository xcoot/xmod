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

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v0, "adservices"

    .line 12
    .line 13
    const-string v1, "apply_sdk_sandbox_audit_restrictions"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    .line 21
    .line 22
    const-string v1, "apply_sdk_sandbox_next_restrictions"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const v4, -0x1b6d945b

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    if-eq v3, v4, :cond_2

    .line 37
    .line 38
    const v4, 0x503e8299

    .line 39
    .line 40
    .line 41
    if-eq v3, v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v3, "apply_sdk_sandbox_audit_restrictions"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
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

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
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

    .line 68
    .line 69
    if-eq v2, v5, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string v2, "apply_sdk_sandbox_next_restrictions"

    .line 73
    .line 74
    invoke-virtual {p1, v2, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iput-boolean v2, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsNext:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const-string v2, "apply_sdk_sandbox_audit_restrictions"

    .line 82
    .line 83
    invoke-virtual {p1, v2, v6}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iput-boolean v2, p0, Lcom/android/server/am/ProcessList$ProcessListSettingsListener;->mSdkSandboxApplyRestrictionsAudit:Z

    .line 88
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

    .line 2
    .line 3
    .line 4
    return-void
.end method
