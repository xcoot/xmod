.class public final synthetic Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p3, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput p2, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/am/AppStateBroadcaster$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    sget-boolean v2, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 9
    if-eqz v2, :cond_0

    .line 11
    const-string/jumbo v3, "sendApplicationStop("

    .line 14
    const-string v4, ", "

    .line 16
    const-string v5, ", "

    .line 18
    invoke-static {v1, v3, v0, v4, v5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v4, ")"

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 37
    :cond_0
    sget-boolean v3, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 39
    if-eqz v3, :cond_c

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_c

    .line 47
    if-ltz p0, :cond_c

    .line 49
    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    .line 51
    array-length v4, v3

    .line 52
    if-ge p0, v4, :cond_c

    .line 54
    const-string/jumbo v4, "packageStopped appState is null; send app exit with stopReason="

    .line 57
    const-string v5, "Removing "

    .line 59
    const-string v6, "Removing process "

    .line 61
    const-string/jumbo v7, "packageStopped for "

    .line 64
    const-string v8, ""

    .line 66
    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v9

    .line 70
    sget-object v10, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    .line 72
    monitor-enter v10

    .line 73
    if-eqz v2, :cond_1

    .line 75
    :try_start_0
    const-string v11, "AppStateBroadcaster"

    .line 77
    new-instance v12, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v7, " with processId="

    .line 87
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v7, " stopReason="

    .line 95
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v7

    .line 105
    invoke-static {v11, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto/16 :goto_5

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Lcom/android/server/am/ApplicationState;

    .line 118
    const/4 v11, 0x1

    .line 119
    const/4 v12, 0x0

    .line 120
    if-eqz v7, :cond_7

    .line 122
    if-eqz v2, :cond_2

    .line 124
    const-string v4, "AppStateBroadcaster"

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v6, ", packageName "

    .line 136
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v6, " from rootPackage "

    .line 144
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v6

    .line 154
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    iget v4, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 159
    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    .line 162
    move-result v4

    .line 163
    iput v4, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 165
    iget-object v4, v7, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v1, v7, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 176
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_5

    .line 182
    if-eqz v2, :cond_3

    .line 184
    const-string p0, "AppStateBroadcaster"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v4, " from running packages"

    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v1

    .line 203
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_3
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 208
    if-eqz p0, :cond_4

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    move-result p0

    .line 214
    if-eqz p0, :cond_4

    .line 216
    const/4 p0, 0x0

    .line 217
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 219
    move p0, v11

    .line 220
    goto :goto_1

    .line 221
    :cond_4
    move p0, v12

    .line 222
    :goto_1
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget v1, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 227
    aget-object v8, v3, v1

    .line 229
    goto :goto_3

    .line 230
    :cond_5
    const/4 v1, 0x2

    .line 231
    if-ge p0, v1, :cond_6

    .line 233
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget p0, v7, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 238
    aget-object v8, v3, p0

    .line 240
    :goto_2
    move p0, v12

    .line 241
    goto :goto_3

    .line 242
    :cond_6
    move p0, v12

    .line 243
    move v11, p0

    .line 244
    goto :goto_3

    .line 245
    :cond_7
    if-eqz v2, :cond_8

    .line 247
    const-string v1, "AppStateBroadcaster"

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v4

    .line 261
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_8
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    aget-object v8, v3, p0

    .line 269
    goto :goto_2

    .line 270
    :goto_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    if-eqz p0, :cond_9

    .line 273
    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusLoss(Ljava/lang/String;)V

    .line 276
    :cond_9
    if-eqz v11, :cond_c

    .line 278
    const-string p0, "AppStateBroadcaster"

    .line 280
    if-eqz v2, :cond_a

    .line 282
    const-string v0, " packageName : "

    .line 284
    const-string v1, " termReason : "

    .line 286
    invoke-static {v0, v9, v1, v8, p0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_a
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 291
    if-eqz v0, :cond_b

    .line 293
    if-eqz v9, :cond_b

    .line 295
    if-eqz v8, :cond_b

    .line 297
    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->sPackages:[Ljava/lang/String;

    .line 299
    array-length v0, p0

    .line 300
    :goto_4
    if-ge v12, v0, :cond_c

    .line 302
    aget-object v1, p0, v12

    .line 304
    const-string/jumbo v2, "diagandroid.app.ApplicationState"

    .line 307
    invoke-static {v2, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    move-result-object v1

    .line 311
    const-string v2, "ApplicationPackageName"

    .line 313
    invoke-static {v9}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v2, "ApplicationState"

    .line 322
    const-string v3, "EXITED"

    .line 324
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v2, "ApplicationTermReason"

    .line 329
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 335
    move-result-wide v2

    .line 336
    const-string/jumbo v4, "oemIntentTimestamp"

    .line 339
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 342
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mContext:Landroid/content/Context;

    .line 344
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 346
    const-string/jumbo v4, "diagandroid.app.receiveDetailedApplicationState"

    .line 349
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 352
    add-int/lit8 v12, v12, 0x1

    .line 354
    goto :goto_4

    .line 355
    :cond_b
    if-eqz v2, :cond_c

    .line 357
    const-string v0, "Can\'t send broadcast mContext is null"

    .line 359
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    goto :goto_6

    .line 363
    :goto_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    throw p0

    .line 365
    :cond_c
    :goto_6
    return-void
.end method
