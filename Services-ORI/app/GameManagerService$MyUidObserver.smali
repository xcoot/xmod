.class public final Lcom/android/server/app/GameManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleUidMovedOffTop(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0xf

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v1, Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 40
    .line 41
    check-cast p1, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-static {}, Landroid/server/app/Flags;->disableGameModeWhenAppTop()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 58
    .line 59
    check-cast p1, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    :goto_0
    const-string p1, "GameManagerService"

    .line 71
    .line 72
    const-string v1, "Game power mode OFF (no games in foreground)"

    .line 73
    .line 74
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-static {}, Landroid/server/app/Flags;->disableGameModeWhenAppTop()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v1, Ljava/util/HashSet;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast v1, Ljava/util/HashSet;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 124
    .line 125
    check-cast p1, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 136
    .line 137
    check-cast p1, Ljava/util/HashSet;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_2

    .line 144
    .line 145
    const-string p1, "GameManagerService"

    .line 146
    .line 147
    const-string v1, "Game power mode ON (only games in foreground)"

    .line 148
    .line 149
    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 155
    .line 156
    const/4 p1, 0x1

    .line 157
    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 158
    .line 159
    .line 160
    :cond_2
    :goto_1
    monitor-exit v0

    .line 161
    return-void

    .line 162
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    throw p0
.end method

.method public final onUidGone(IZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit p2

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 2

    .line 1
    const/4 p3, 0x2

    .line 2
    if-eq p2, p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_8

    .line 17
    .line 18
    array-length p3, p2

    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    iget-object p3, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 24
    .line 25
    iget-object p3, p3, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance p4, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    invoke-direct {p4, p0, p3}, Lcom/android/server/app/GameManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/app/GameManagerService$MyUidObserver;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object p3, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 45
    .line 46
    iget-object p3, p3, Lcom/android/server/app/GameManagerService;->mUidObserverLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter p3

    .line 49
    const/16 p4, 0xf

    .line 50
    .line 51
    const/4 p5, 0x0

    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    :try_start_0
    invoke-static {}, Landroid/server/app/Flags;->disableGameModeWhenAppTop()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 63
    .line 64
    check-cast p2, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 75
    .line 76
    check-cast p2, Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    const-string p2, "GameManagerService"

    .line 85
    .line 86
    const-string v0, "Game power mode OFF (first non-game in foreground)"

    .line 87
    .line 88
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 94
    .line 95
    invoke-virtual {p2, p4, p5}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 104
    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p0, Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    monitor-exit p3

    .line 115
    goto :goto_2

    .line 116
    :cond_4
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 117
    .line 118
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 119
    .line 120
    check-cast p2, Ljava/util/HashSet;

    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    const/4 v0, 0x1

    .line 127
    if-eqz p2, :cond_6

    .line 128
    .line 129
    invoke-static {}, Landroid/server/app/Flags;->disableGameModeWhenAppTop()Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_5

    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 136
    .line 137
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mNonGameForegroundUids:Ljava/util/Set;

    .line 138
    .line 139
    check-cast p2, Ljava/util/HashSet;

    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_6

    .line 146
    .line 147
    :cond_5
    const-string p2, "GameManagerService"

    .line 148
    .line 149
    const-string v1, "Game power mode ON (first game in foreground)"

    .line 150
    .line 151
    invoke-static {p2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 155
    .line 156
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 157
    .line 158
    invoke-virtual {p2, p4, v0}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 159
    .line 160
    .line 161
    :cond_6
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 162
    .line 163
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mSysProps:Lcom/android/server/app/GameManagerService$Injector$1;

    .line 164
    .line 165
    const-string/jumbo p4, "debug.graphics.game_default_frame_rate.disabled"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {p4, p5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    iget-object p4, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 176
    .line 177
    xor-int/2addr p2, v0

    .line 178
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {}, Landroid/server/app/Flags;->gameDefaultFrameRate()Z

    .line 182
    .line 183
    .line 184
    move-result p5

    .line 185
    const/4 v0, 0x0

    .line 186
    if-eqz p5, :cond_7

    .line 187
    .line 188
    if-eqz p2, :cond_7

    .line 189
    .line 190
    iget v0, p4, Lcom/android/server/app/GameManagerService;->mGameDefaultFrameRateValue:F

    .line 191
    .line 192
    :cond_7
    invoke-virtual {p4, p1, v0}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/app/GameManagerService;->mGameForegroundUids:Ljava/util/Set;

    .line 198
    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p0, Ljava/util/HashSet;

    .line 204
    .line 205
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    monitor-exit p3

    .line 209
    goto :goto_2

    .line 210
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    throw p0

    .line 212
    :cond_8
    :goto_2
    return-void
.end method
