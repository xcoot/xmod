.class public final Lcom/android/server/compat/CompatConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public mBackupOverridesFile:Ljava/io/File;

.field public final mChanges:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

.field public mOverridesFile:Ljava/io/File;

.field public final mOverridesFileLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/compat/OverrideValidatorImpl;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/compat/OverrideValidatorImpl;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public addChange(Lcom/android/server/compat/CompatChange;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    new-instance v4, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v4, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 37
    .line 38
    const-string v3, "Can\'t add overrides for a logging only change "

    .line 39
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-virtual {v3, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p3, v1, v2}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    const-string v1, "CompatConfig"

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p4}, Landroid/app/compat/PackageOverride;->isEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    if-eqz p4, :cond_0

    .line 68
    .line 69
    const-string p4, "Enabled"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string p4, "Disabled"

    .line 73
    .line 74
    :goto_0
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p4, " change "

    .line 78
    .line 79
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p2, " ["

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p0, "]"

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    const-string p0, ""

    .line 116
    .line 117
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p0, " for "

    .line 121
    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    return p0

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 146
    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_2
    monitor-exit p0

    .line 168
    throw p1
.end method

.method public final declared-synchronized addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public final addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Long;

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "Trying to add overrides for unknown Change ID "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ". Skipping Change ID."

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "CompatConfig"

    .line 56
    .line 57
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    iget-object v4, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/app/compat/PackageOverride;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3, p2, v1}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method

.method public clearChanges()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public forceNonDebuggableFinalForTest(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    .line 4
    .line 5
    return-void
.end method

.method public final getAllowedChangesSinceTargetSdkForPackage(ILjava/lang/String;)[J
    .locals 7

    .line 1
    new-instance v0, Landroid/util/LongArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eq v3, p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    const/4 v5, 0x0

    .line 40
    iget-object v6, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 41
    .line 42
    invoke-virtual {v6, p2, v3, v4, v5}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget v3, v3, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    .line 47
    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public final getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/high16 v0, 0x400000

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-wide p0, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 14
    .line 15
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public final initConfigFromLib(Ljava/io/File;)V
    .locals 23

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CompatConfig"

    .line 6
    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_10

    .line 16
    .line 17
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v3, v2

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, v3, :cond_a

    .line 24
    .line 25
    aget-object v0, v2, v5

    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v7, "Found a config file: "

    .line 30
    .line 31
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 49
    .line 50
    new-instance v7, Ljava/io/FileInputStream;

    .line 51
    .line 52
    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    .line 57
    .line 58
    :try_start_1
    invoke-static {v6}, Lcom/android/server/compat/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v7, v0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 63
    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    new-instance v7, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v7, v0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 72
    .line 73
    :cond_1
    iget-object v0, v0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 74
    .line 75
    check-cast v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_9

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Lcom/android/server/compat/config/Change;

    .line 92
    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v9, "Adding: "

    .line 99
    .line 100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .line 116
    .line 117
    move-object/from16 v8, p0

    .line 118
    .line 119
    :try_start_2
    iget-object v9, v8, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    iget-object v10, v7, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    .line 122
    .line 123
    const-wide/16 v11, 0x0

    .line 124
    .line 125
    if-nez v10, :cond_2

    .line 126
    .line 127
    move-wide v13, v11

    .line 128
    goto :goto_2

    .line 129
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 130
    .line 131
    .line 132
    move-result-wide v13

    .line 133
    :goto_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    new-instance v14, Lcom/android/server/compat/CompatChange;

    .line 138
    .line 139
    iget-object v13, v7, Lcom/android/server/compat/config/Change;->id:Ljava/lang/Long;

    .line 140
    .line 141
    if-nez v13, :cond_3

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v11

    .line 148
    :goto_3
    iget-object v15, v7, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v13, v7, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:Ljava/lang/Integer;

    .line 151
    .line 152
    if-nez v13, :cond_4

    .line 153
    .line 154
    const/16 v17, 0x0

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    move/from16 v17, v13

    .line 162
    .line 163
    :goto_4
    iget-object v13, v7, Lcom/android/server/compat/config/Change;->enableSinceTargetSdk:Ljava/lang/Integer;

    .line 164
    .line 165
    if-nez v13, :cond_5

    .line 166
    .line 167
    const/16 v18, 0x0

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    move/from16 v18, v13

    .line 175
    .line 176
    :goto_5
    iget-object v13, v7, Lcom/android/server/compat/config/Change;->disabled:Ljava/lang/Boolean;

    .line 177
    .line 178
    if-nez v13, :cond_6

    .line 179
    .line 180
    const/16 v19, 0x0

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_6
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    move/from16 v19, v13

    .line 188
    .line 189
    :goto_6
    iget-object v13, v7, Lcom/android/server/compat/config/Change;->loggingOnly:Ljava/lang/Boolean;

    .line 190
    .line 191
    if-nez v13, :cond_7

    .line 192
    .line 193
    const/16 v20, 0x0

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_7
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    move/from16 v20, v13

    .line 201
    .line 202
    :goto_7
    iget-object v13, v7, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v7, v7, Lcom/android/server/compat/config/Change;->overridable:Ljava/lang/Boolean;

    .line 205
    .line 206
    if-nez v7, :cond_8

    .line 207
    .line 208
    move-object v7, v13

    .line 209
    const/16 v22, 0x0

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    move/from16 v22, v7

    .line 217
    .line 218
    move-object v7, v13

    .line 219
    :goto_8
    move-object v13, v14

    .line 220
    move-object v4, v14

    .line 221
    move-object/from16 v16, v15

    .line 222
    .line 223
    move-wide v14, v11

    .line 224
    move-object/from16 v21, v7

    .line 225
    .line 226
    invoke-direct/range {v13 .. v22}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9, v10, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :catchall_0
    move-exception v0

    .line 235
    :goto_9
    move-object v4, v0

    .line 236
    goto :goto_b

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    move-object/from16 v8, p0

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_9
    move-object/from16 v8, p0

    .line 242
    .line 243
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 244
    .line 245
    .line 246
    :goto_a
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 247
    .line 248
    .line 249
    goto :goto_e

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    goto :goto_f

    .line 252
    :catch_0
    move-exception v0

    .line 253
    goto :goto_d

    .line 254
    :goto_b
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 255
    .line 256
    .line 257
    goto :goto_c

    .line 258
    :catchall_3
    move-exception v0

    .line 259
    move-object v6, v0

    .line 260
    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    :goto_c
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 264
    :catch_1
    move-exception v0

    .line 265
    move-object/from16 v8, p0

    .line 266
    .line 267
    :goto_d
    :try_start_6
    const-string v4, "Encountered an error while reading/parsing compat config file"

    .line 268
    .line 269
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 270
    .line 271
    .line 272
    goto :goto_a

    .line 273
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :goto_f
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_a
    return-void

    .line 282
    :cond_b
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v2, "No directory "

    .line 285
    .line 286
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    move-object/from16 v2, p1

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v2, ", skipping"

    .line 295
    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method public initOverrides(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, v1, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1

    .line 38
    throw p0

    .line 39
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_1
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 46
    .line 47
    new-instance v1, Ljava/io/File;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ".bak"

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    goto :goto_2

    .line 96
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 99
    .line 100
    .line 101
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void

    .line 112
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    throw p0
.end method

.method public final loadOverrides(Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "CompatConfig"

    .line 2
    .line 3
    const-string v1, "Parsing "

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    new-instance v3, Ljava/io/FileInputStream;

    .line 15
    .line 16
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {v2}, Lcom/android/server/compat/overrides/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/overrides/Overrides;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " failed"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_4

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_6

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 81
    .line 82
    iget-object v4, v3, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 83
    .line 84
    if-nez v4, :cond_2

    .line 85
    .line 86
    const-wide/16 v4, 0x0

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    :goto_1
    iget-object v6, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    .line 95
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lcom/android/server/compat/CompatChange;

    .line 104
    .line 105
    if-nez v6, :cond_3

    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v6, "Change ID "

    .line 113
    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v4, " not found. Skipping overrides for it."

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v6, v3}, Lcom/android/server/compat/CompatChange;->loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_2
    move-exception v1

    .line 146
    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    :goto_5
    return-void

    .line 154
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "Error processing "

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, " "

    .line 165
    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v3, p1, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p1

    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    monitor-exit p1

    .line 42
    :goto_0
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const-string p0, "CompatConfig"

    .line 45
    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Reset change "

    .line 49
    .line 50
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, " ["

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, "]"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string p1, ""

    .line 87
    .line 88
    :goto_1
    const-string v0, " for "

    .line 89
    .line 90
    const-string v1, " to default value."

    .line 91
    .line 92
    invoke-static {p3, p1, v0, p2, v1}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_2
    return v2

    .line 100
    :goto_2
    monitor-exit p1

    .line 101
    throw p0
.end method

.method public final declared-synchronized removePackageOverrides(Ljava/lang/String;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 28
    .line 29
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    or-int/2addr v2, v3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_1
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "Trying to remove overrides for unknown Change ID "

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ". Skipping Change ID."

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "CompatConfig"

    .line 52
    .line 53
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v2, v0

    .line 77
    :goto_1
    or-int/2addr v1, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return v1
.end method

.method public final saveOverrides()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    new-instance v1, Lcom/android/server/compat/overrides/Overrides;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_2
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    const-string v1, "CompatConfig"

    .line 91
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "Couldn\'t rename file "

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v3, " to "

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 113
    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    return-void

    .line 126
    :cond_4
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_2
    new-instance v2, Ljava/io/PrintWriter;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 134
    .line 135
    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .line 137
    .line 138
    :try_start_3
    new-instance v3, Lcom/android/server/compat/overrides/XmlWriter;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v2, v3, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 144
    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v4, v3, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    iput v4, v3, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 154
    .line 155
    const/4 v4, 0x1

    .line 156
    iput-boolean v4, v3, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 157
    .line 158
    invoke-static {v3, v1}, Lcom/android/server/compat/overrides/XmlWriter;->write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 159
    .line 160
    .line 161
    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catch_0
    move-exception v1

    .line 166
    goto :goto_3

    .line 167
    :catchall_1
    move-exception v1

    .line 168
    :try_start_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_2
    move-exception v2

    .line 173
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    :goto_3
    :try_start_7
    const-string v2, "CompatConfig"

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :goto_4
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 189
    .line 190
    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 193
    :catch_1
    move-exception p0

    .line 194
    const-string v1, "CompatConfig"

    .line 195
    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v3, "Could not create override config file: "

    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 222
    :cond_5
    :goto_5
    monitor-exit v0

    .line 223
    return-void

    .line 224
    :goto_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 225
    throw p0
.end method

.method public final willChangeBeEnabled(JLjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return p1

    .line 17
    :cond_0
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    :goto_0
    xor-int/2addr p1, p0

    .line 24
    goto :goto_2

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/app/compat/PackageOverride;

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/app/compat/PackageOverride;->evaluateForAllVersions()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    if-eq p2, p1, :cond_5

    .line 42
    .line 43
    const/4 p3, 0x2

    .line 44
    if-eq p2, p3, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    goto :goto_0

    .line 59
    :cond_5
    :goto_2
    return p1
.end method
