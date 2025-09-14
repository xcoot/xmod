.class public final Lcom/android/server/power/AmbientDisplaySuppressionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/power/PowerManagerService$1;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSuppressionTokens:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "AmbientDisplaySuppressionController:"

    .line 2
    .line 3
    const-string v1, " ambientDisplaySuppressed="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, " mSuppressionTokens="

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final getSuppressionTokens(I)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/util/Pair;

    .line 26
    .line 27
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ne v3, p1, :cond_0

    .line 36
    .line 37
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    monitor-exit v1

    .line 48
    return-object v0

    .line 49
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final isSuppressed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final suppress(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eq p1, p2, :cond_5

    .line 34
    .line 35
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    .line 36
    .line 37
    iget-object p3, p2, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 38
    .line 39
    iget-object p3, p3, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p3

    .line 42
    :try_start_0
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 43
    .line 44
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    if-nez p1, :cond_3

    .line 50
    .line 51
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget v0, p2, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    :cond_2
    iget-object v0, p2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/server/power/PowerGroup;

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    const/16 v2, 0x3e8

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    invoke-virtual {p2, v2, v0, v1, v3}, Lcom/android/server/power/PowerManagerService;->napInternal(IJZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget v0, p2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 104
    .line 105
    or-int/lit8 v0, v0, 0x20

    .line 106
    .line 107
    iput v0, p2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    monitor-exit p3

    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_5
    :goto_2
    :try_start_1
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 118
    .line 119
    monitor-enter p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    :try_start_3
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 122
    .line 123
    if-nez p3, :cond_6

    .line 124
    .line 125
    const-string/jumbo p3, "statusbar"

    .line 126
    .line 127
    .line 128
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-static {p3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    iput-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    :goto_3
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    .line 143
    :try_start_4
    monitor-exit p0

    .line 144
    invoke-interface {p3, p1}, Lcom/android/internal/statusbar/IStatusBarService;->suppressAmbientDisplay(Z)V

    .line 145
    .line 146
    .line 147
    monitor-exit p2

    .line 148
    goto :goto_6

    .line 149
    :catchall_2
    move-exception p0

    .line 150
    goto :goto_5

    .line 151
    :goto_4
    monitor-exit p0

    .line 152
    throw p1

    .line 153
    :goto_5
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 154
    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 155
    :catch_0
    move-exception p0

    .line 156
    const-string p1, "AmbientDisplaySuppressionController"

    .line 157
    .line 158
    const-string p2, "Failed to suppress ambient display"

    .line 159
    .line 160
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    :goto_6
    return-void
.end method
