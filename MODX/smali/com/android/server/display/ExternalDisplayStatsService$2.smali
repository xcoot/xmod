.class public final Lcom/android/server/display/ExternalDisplayStatsService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 8
    iget-object p2, p2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 10
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_7

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    move v0, p2

    .line 23
    move v1, v0

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 26
    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 31
    move-result v2

    .line 32
    if-ge v0, v2, :cond_4

    .line 34
    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 36
    iget-object v3, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 38
    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 40
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 43
    move-result v2

    .line 44
    iget-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 46
    if-nez v4, :cond_1

    .line 48
    iget-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 50
    const-class v5, Landroid/os/PowerManager;

    .line 52
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/os/PowerManager;

    .line 58
    iput-object v4, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 60
    :cond_1
    iget-object v3, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->isInteractive(I)Z

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 70
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 72
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 78
    iget v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    .line 80
    if-ne v0, v1, :cond_5

    .line 82
    return-void

    .line 83
    :cond_5
    const/16 v2, 0x326

    .line 85
    const/4 v3, 0x1

    .line 86
    if-nez v1, :cond_8

    .line 88
    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 90
    monitor-enter v4

    .line 91
    :goto_1
    :try_start_1
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 93
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 96
    move-result v0

    .line 97
    if-ge p2, v0, :cond_7

    .line 99
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 101
    add-int/lit8 v5, p2, 0x1

    .line 103
    iget-boolean v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const/4 v0, 0x4

    .line 109
    invoke-static {v2, v0, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 112
    sget-boolean v6, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 114
    if-eqz v6, :cond_6

    .line 116
    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 118
    invoke-virtual {v6, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 121
    move-result p2

    .line 122
    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {v6, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 127
    move-result v6

    .line 128
    const-string v7, "ExternalDisplayStatsService"

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string/jumbo v9, "logExternalDisplayIdleStarted displayId="

    .line 138
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string p2, " currentState="

    .line 146
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string p2, " countOfExternalDisplays="

    .line 154
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string p2, " state="

    .line 162
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string p2, " mIsExternalDisplayUsedForAudio="

    .line 170
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-boolean p2, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 175
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    invoke-static {v7, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    goto :goto_2

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto :goto_3

    .line 188
    :cond_6
    :goto_2
    move p2, v5

    .line 189
    goto :goto_1

    .line 190
    :cond_7
    monitor-exit v4

    .line 191
    goto :goto_6

    .line 192
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    throw p0

    .line 194
    :cond_8
    const/4 v4, -0x1

    .line 195
    if-eq v4, v0, :cond_c

    .line 197
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 199
    monitor-enter v0

    .line 200
    :cond_9
    :goto_4
    :try_start_2
    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 202
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 205
    move-result v4

    .line 206
    if-ge p2, v4, :cond_b

    .line 208
    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 210
    invoke-virtual {v4, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 213
    move-result v4

    .line 214
    iget-object v5, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    .line 216
    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 219
    move-result v5

    .line 220
    if-ne v5, v3, :cond_a

    .line 222
    monitor-exit v0

    .line 223
    goto :goto_6

    .line 224
    :catchall_2
    move-exception p0

    .line 225
    goto :goto_5

    .line 226
    :cond_a
    iget-object v6, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    .line 228
    add-int/lit8 p2, p2, 0x1

    .line 230
    iget-boolean v7, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 232
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-static {v2, v5, p2, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    .line 238
    sget-boolean v6, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    .line 240
    if-eqz v6, :cond_9

    .line 242
    const-string v6, "ExternalDisplayStatsService"

    .line 244
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string/jumbo v8, "logExternalDisplayIdleEnded displayId="

    .line 252
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v4, " state="

    .line 260
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v4, " countOfExternalDisplays="

    .line 268
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    const-string v4, " mIsExternalDisplayUsedForAudio="

    .line 276
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-boolean v4, p1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    .line 281
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v4

    .line 288
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    goto :goto_4

    .line 292
    :cond_b
    monitor-exit v0

    .line 293
    goto :goto_6

    .line 294
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 295
    throw p0

    .line 296
    :cond_c
    :goto_6
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$2;->this$0:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 298
    iput v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    .line 300
    return-void

    .line 301
    :goto_7
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    throw p0
.end method
