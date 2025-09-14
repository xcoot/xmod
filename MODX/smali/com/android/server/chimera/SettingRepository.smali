.class public final Lcom/android/server/chimera/SettingRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultCachedMax:I

.field public mIsAppCacheReclaimEnable:Z

.field public mIsConservativeMode:Z

.field public mIsCustomMode:Z

.field public final mIsDefaultConservativeMode:Z

.field public mIsDynamicTargetFreeEnabled:Z

.field public mIsFastMadviseEnable:Z

.field public mIsPSITrackerEnable:Z

.field public mIsSubProcEnable:Z

.field public mLastCachedMax:I

.field public mQuickReclaimEnable:Z

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "ro.slmk.chimera.quickreclaim_enable"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mQuickReclaimEnable:Z

    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mIsPSITrackerEnable:Z

    .line 17
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 19
    iput-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    .line 21
    iput v1, p0, Lcom/android/server/chimera/SettingRepository;->mDefaultCachedMax:I

    .line 23
    iput v1, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    .line 25
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 27
    iput-object p1, p0, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string/jumbo v0, "ro.slmk.dha_cached_max"

    .line 35
    const-string v1, "16"

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result v0

    .line 45
    iput v0, p0, Lcom/android/server/chimera/SettingRepository;->mDefaultCachedMax:I

    .line 47
    iput v0, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    const-string/jumbo p1, "ro.slmk.use_bg_keeping_policy"

    .line 55
    const-string/jumbo v0, "false"

    .line 58
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    const-string/jumbo v0, "true"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 71
    iput-boolean p1, p0, Lcom/android/server/chimera/SettingRepository;->mIsDefaultConservativeMode:Z

    .line 73
    return-void
.end method


# virtual methods
.method public final enableCustomMode(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "false"

    .line 9
    const-string/jumbo v1, "persist.config.chimera.enable"

    .line 12
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v2, ","

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    aget-object v0, v0, v2

    .line 25
    const-string/jumbo v2, "true"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    if-eqz p1, :cond_1

    .line 36
    if-eqz p2, :cond_0

    .line 38
    const-string p1, "CC"

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p1, "CA"

    .line 43
    :goto_0
    const-string/jumbo p2, "true,"

    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/chimera/SettingRepository;->initialize()V

    .line 60
    :cond_2
    return-void
.end method

.method public final initialize()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v1, "persist.config.chimera.enable"

    .line 9
    const-string/jumbo v2, "false"

    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 19
    iget-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsDefaultConservativeMode:Z

    .line 21
    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 23
    const-string v3, "/proc/proc_caches_reclaim"

    .line 25
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 28
    move-result v3

    .line 29
    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsAppCacheReclaimEnable:Z

    .line 31
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FAST_MADVISE_ENABLED:Z

    .line 33
    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsFastMadviseEnable:Z

    .line 35
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 37
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 45
    move-result v3

    .line 46
    iput-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsSubProcEnable:Z

    .line 48
    const-string v3, ","

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    iget-boolean v3, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 56
    iget-object v4, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_9

    .line 68
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v4

    .line 72
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_9

    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 84
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 86
    const-string/jumbo v6, "com.samsung.android.memoryguardian"

    .line 89
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_0

    .line 95
    aget-object v4, v1, v2

    .line 97
    const-string/jumbo v5, "true"

    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v4

    .line 104
    iget v6, p0, Lcom/android/server/chimera/SettingRepository;->mDefaultCachedMax:I

    .line 106
    if-eqz v4, :cond_3

    .line 108
    array-length v4, v1

    .line 109
    const/4 v7, 0x1

    .line 110
    if-le v4, v7, :cond_3

    .line 112
    aget-object v1, v1, v7

    .line 114
    const-string v4, "CC"

    .line 116
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_2

    .line 122
    iput-boolean v7, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 124
    iput-boolean v7, p0, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 126
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    .line 129
    move-result v1

    .line 130
    const/4 v2, 0x6

    .line 131
    if-gt v1, v2, :cond_1

    .line 133
    int-to-double v1, v6

    .line 134
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    .line 136
    mul-double/2addr v1, v6

    .line 137
    double-to-int v1, v1

    .line 138
    move v6, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    mul-int/lit8 v6, v6, 0x2

    .line 142
    :goto_0
    const/16 v1, 0x30

    .line 144
    if-le v6, v1, :cond_3

    .line 146
    move v6, v1

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    const-string v4, "CA"

    .line 150
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_3

    .line 156
    iput-boolean v2, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 158
    iput-boolean v7, p0, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    .line 160
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    .line 162
    if-ne v1, v6, :cond_4

    .line 164
    iget-boolean v1, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 166
    if-eq v3, v1, :cond_8

    .line 168
    :cond_4
    const-string/jumbo v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    .line 171
    const-string v2, "android"

    .line 173
    invoke-static {v1, v2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    move-result-object v1

    .line 177
    iget v2, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    .line 179
    if-eq v2, v6, :cond_5

    .line 181
    const-string/jumbo v2, "ro.slmk.dha_cached_max"

    .line 184
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iput v6, p0, Lcom/android/server/chimera/SettingRepository;->mLastCachedMax:I

    .line 193
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    .line 195
    if-eq v3, v2, :cond_7

    .line 197
    if-eqz v2, :cond_6

    .line 199
    const-string v2, "1"

    .line 201
    goto :goto_2

    .line 202
    :cond_6
    const-string v2, "0"

    .line 204
    :goto_2
    const-string/jumbo v3, "ro.slmk.use_bg_keeping_policy"

    .line 207
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :cond_7
    iget-object v0, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    :cond_8
    const-string/jumbo v0, "ro.slmk.psitracker_enable"

    .line 218
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 225
    move-result v0

    .line 226
    iput-boolean v0, p0, Lcom/android/server/chimera/SettingRepository;->mIsPSITrackerEnable:Z

    .line 228
    :cond_9
    return-void
.end method
