.class public final Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAssistData:Ljava/util/ArrayList;

.field public final mAssistScreenshot:Ljava/util/ArrayList;

.field public final mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field public final mCallbacksLock:Ljava/lang/Object;

.field public mCanceled:Z

.field public final mContext:Landroid/content/Context;

.field public mPendingDataCount:I

.field public mPendingScreenshotCount:I

.field public final mRequestScreenshotAppOps:I

.field public final mRequestStructureAppOps:I

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 18
    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 20
    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 24
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 30
    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 34
    const/16 p1, 0x31

    .line 36
    iput p1, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 38
    iput p6, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    .line 40
    return-void
.end method


# virtual methods
.method public final dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string/jumbo v0, "receiverExtras"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    const-string/jumbo v1, "index"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 20
    move-result v1

    .line 21
    const-string/jumbo v2, "count"

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    move v0, v1

    .line 31
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 33
    invoke-interface {p0, v1, v0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(IILandroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public final flushPendingAssistData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/os/Bundle;

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v0

    .line 36
    :goto_1
    if-ge v1, v0, :cond_1

    .line 38
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/graphics/Bitmap;

    .line 46
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 48
    invoke-interface {v3, v2}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 59
    return-void
.end method

.method public final onHandleAssistData(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 16
    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 18
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 20
    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 16
    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 18
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 20
    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 29
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 31
    invoke-interface {v1, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final requestData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 3
    invoke-static/range {p9 .. p9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-object/from16 v8, p1

    .line 8
    check-cast v8, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v9, 0x0

    .line 21
    :try_start_0
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 23
    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isAssistDataAllowed()Z

    .line 26
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move v0, v9

    .line 29
    :goto_0
    and-int v1, p5, v0

    .line 31
    const/4 v10, 0x1

    .line 32
    if-eqz p2, :cond_1

    .line 34
    if-eqz v0, :cond_1

    .line 36
    iget v0, v7, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    .line 38
    const/4 v2, -0x1

    .line 39
    if-eq v0, v2, :cond_1

    .line 41
    move v0, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v0, v9

    .line 44
    :goto_1
    and-int v11, p6, v0

    .line 46
    iput-boolean v9, v7, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 48
    iput v9, v7, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 50
    iput v9, v7, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 52
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    const/4 v12, 0x0

    .line 63
    if-eqz p2, :cond_a

    .line 65
    iget-object v13, v7, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 67
    iget v14, v7, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 69
    const/16 v18, 0x0

    .line 71
    move/from16 v15, p8

    .line 73
    move-object/from16 v16, p9

    .line 75
    move-object/from16 v17, p10

    .line 77
    invoke-virtual/range {v13 .. v18}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_8

    .line 83
    if-eqz v1, :cond_8

    .line 85
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v13

    .line 89
    move v14, v9

    .line 90
    :goto_2
    if-ge v14, v13, :cond_a

    .line 92
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    move-object v4, v0

    .line 97
    check-cast v4, Landroid/os/IBinder;

    .line 99
    :try_start_1
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 101
    const-string v1, "assist_with_context"

    .line 103
    invoke-static {v0, v1, v10}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 106
    new-instance v3, Landroid/os/Bundle;

    .line 108
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string/jumbo v0, "index"

    .line 114
    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string/jumbo v0, "count"

    .line 120
    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    if-eqz p4, :cond_2

    .line 125
    move v1, v10

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    const/4 v0, 0x3

    .line 128
    move v1, v0

    .line 129
    :goto_3
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 131
    if-nez v14, :cond_3

    .line 133
    if-nez p7, :cond_3

    .line 135
    move v5, v10

    .line 136
    goto :goto_4

    .line 137
    :cond_3
    move v5, v9

    .line 138
    :goto_4
    if-nez v14, :cond_4

    .line 140
    move v6, v10

    .line 141
    goto :goto_5

    .line 142
    :cond_4
    move v6, v9

    .line 143
    :goto_5
    move-object/from16 v2, p0

    .line 145
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityTaskManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_5

    .line 151
    iget v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 153
    add-int/2addr v0, v10

    .line 154
    iput v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 156
    goto :goto_6

    .line 157
    :cond_5
    if-nez v14, :cond_7

    .line 159
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 161
    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_6

    .line 167
    invoke-virtual {v7, v12}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 170
    goto :goto_7

    .line 171
    :cond_6
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    goto :goto_7

    .line 177
    :catch_1
    :cond_7
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 179
    goto :goto_2

    .line 180
    :cond_8
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 182
    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_9

    .line 188
    invoke-virtual {v7, v12}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 191
    goto :goto_7

    .line 192
    :cond_9
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_7

    .line 198
    :cond_a
    move v9, v11

    .line 199
    :goto_7
    if-eqz p3, :cond_e

    .line 201
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 203
    iget v1, v7, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    .line 205
    const/4 v2, 0x0

    .line 206
    move-object/from16 p1, v0

    .line 208
    move/from16 p2, v1

    .line 210
    move/from16 p3, p8

    .line 212
    move-object/from16 p4, p9

    .line 214
    move-object/from16 p5, p10

    .line 216
    move-object/from16 p6, v2

    .line 218
    invoke-virtual/range {p1 .. p6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_c

    .line 224
    if-eqz v9, :cond_c

    .line 226
    :try_start_2
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 228
    const-string v1, "assist_with_screen"

    .line 230
    invoke-static {v0, v1, v10}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 233
    iget v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 235
    add-int/2addr v0, v10

    .line 236
    iput v0, v7, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 238
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    .line 240
    if-eqz v0, :cond_b

    .line 242
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 244
    move/from16 v1, p11

    .line 246
    invoke-interface {v0, v7, v1}, Landroid/view/IWindowManager;->omniRequestAssistScreenshot(Landroid/app/IAssistDataReceiver;Z)Z

    .line 249
    goto :goto_8

    .line 250
    :cond_b
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 252
    invoke-interface {v0, v7}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    goto :goto_8

    .line 256
    :cond_c
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 258
    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_d

    .line 264
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 266
    invoke-interface {v0, v12}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    .line 269
    goto :goto_8

    .line 270
    :cond_d
    iget-object v0, v7, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    :catch_2
    :cond_e
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 278
    return-void
.end method

.method public final tryDispatchRequestComplete()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 27
    invoke-interface {p0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    .line 30
    :cond_0
    return-void
.end method
