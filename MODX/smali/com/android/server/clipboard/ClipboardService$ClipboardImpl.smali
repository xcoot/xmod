.class public final Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClipboardClearHandler:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

.field public final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 6
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    .line 8
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;-><init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;Landroid/os/Looper;)V

    .line 17
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    .line 19
    return-void
.end method


# virtual methods
.method public final addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {v0, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 13
    invoke-static {v2, p5, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 20
    const-string p0, "ClipboardService"

    .line 22
    const-string p1, "addPrimaryClipChangedListener invalid deviceId for userId:"

    .line 24
    const-string p3, " uid:"

    .line 26
    const-string v1, " callingPackage:"

    .line 28
    invoke-static {p4, v0, p1, p3, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string p2, " requestedDeviceId:"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 51
    :cond_0
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 53
    iget-object p4, p4, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 55
    monitor-enter p4

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 58
    invoke-virtual {p0, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 61
    move-result-object p0

    .line 62
    if-nez p0, :cond_1

    .line 64
    monitor-exit p4

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 70
    new-instance p5, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 72
    invoke-direct {p5, v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1, p5}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 78
    monitor-exit p4

    .line 79
    return-void

    .line 80
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final areClipboardAccessNotificationsEnabledForUser(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object p0

    .line 29
    const-string/jumbo v2, "clipboard_show_access_notifications"

    .line 32
    const-string/jumbo v3, "show_access_notifications"

    .line 35
    const-string/jumbo v4, "clipboard"

    .line 38
    const/4 v5, 0x1

    .line 39
    invoke-static {v4, v3, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 42
    move-result v3

    .line 43
    invoke-static {p0, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz p0, :cond_0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v5, 0x0

    .line 51
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    return v5

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw p0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    const-string p1, "areClipboardAccessNotificationsEnable requires permission MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0
.end method

.method public final checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p4

    .line 6
    move-object/from16 v3, p6

    .line 8
    if-eqz v1, :cond_9

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 13
    move-result v4

    .line 14
    if-lez v4, :cond_9

    .line 16
    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 18
    move-object/from16 v10, p2

    .line 20
    invoke-static {v4, v10, v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    move-result v13

    .line 28
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 30
    move/from16 v6, p5

    .line 32
    invoke-static {v5, v6, v4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 35
    move-result v14

    .line 36
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 38
    const/4 v12, 0x1

    .line 39
    const/16 v6, 0x1e

    .line 41
    move v7, v4

    .line 42
    move v8, v13

    .line 43
    move v9, v14

    .line 44
    move-object/from16 v10, p2

    .line 46
    move-object/from16 v11, p3

    .line 48
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_0

    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 57
    invoke-static {v5}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_1

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_1

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 80
    move-result-object v5

    .line 81
    const-string/jumbo v6, "direct_clip"

    .line 84
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_1

    .line 90
    invoke-static {}, Landroid/sec/clipboard/util/SemClipboardPolicy;->getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;

    .line 93
    move-result-object v5

    .line 94
    iget-object v6, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 96
    iget-object v6, v6, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v5, v6, v3, v2}, Landroid/sec/clipboard/util/SemClipboardPolicy;->canAccessSemClipboard(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_1

    .line 104
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 106
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v1, v4}, Lcom/android/server/semclipboard/SemClipboardService;->setPrimaryClip(Landroid/content/ClipData;I)V

    .line 113
    return-void

    .line 114
    :cond_1
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 116
    iget-object v5, v5, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 118
    monitor-enter v5

    .line 119
    :try_start_0
    iget-object v6, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 121
    invoke-virtual {v6, v13, v14}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 128
    move-result v7

    .line 129
    invoke-virtual {p0, v7}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardAllowed(I)I

    .line 132
    move-result v7

    .line 133
    const/4 v8, 0x0

    .line 134
    if-nez v7, :cond_2

    .line 136
    iput-object v8, v6, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 138
    iget-object v1, v6, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 140
    check-cast v1, Ljava/util/HashMap;

    .line 142
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 145
    new-instance v1, Landroid/os/Handler;

    .line 147
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 150
    move-result-object v2

    .line 151
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    new-instance v2, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;

    .line 156
    invoke-direct {v2, p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$1;-><init>(Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    monitor-exit v5

    .line 163
    return-void

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_5

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 170
    move-result v7

    .line 171
    invoke-virtual {p0, v7}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    .line 174
    move-result v7

    .line 175
    if-nez v7, :cond_3

    .line 177
    iput-object v8, v6, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    iget-object v6, v6, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 182
    check-cast v6, Ljava/util/HashMap;

    .line 184
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 187
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 190
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    .line 196
    move-result v6

    .line 197
    const/4 v7, 0x0

    .line 198
    :goto_1
    if-ge v7, v6, :cond_6

    .line 200
    invoke-virtual {v1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 207
    move-result-object v9

    .line 208
    if-eqz v9, :cond_4

    .line 210
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 213
    move-result-object v9

    .line 214
    invoke-virtual {v5, v4, v9}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(ILandroid/net/Uri;)V

    .line 217
    :cond_4
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 220
    move-result-object v8

    .line 221
    if-eqz v8, :cond_5

    .line 223
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 226
    move-result-object v9

    .line 227
    if-eqz v9, :cond_5

    .line 229
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 232
    move-result-object v8

    .line 233
    invoke-virtual {v5, v4, v8}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(ILandroid/net/Uri;)V

    .line 236
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 238
    goto :goto_1

    .line 239
    :cond_6
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 241
    iget-object v6, v5, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 243
    monitor-enter v6

    .line 244
    :try_start_1
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 246
    invoke-virtual {v5, v13, v14}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 253
    move-result v7

    .line 254
    invoke-virtual {p0, v7}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    .line 257
    move-result v7

    .line 258
    if-nez v7, :cond_7

    .line 260
    iget-object v0, v5, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 265
    move-result v2

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    move-result-object v2

    .line 270
    check-cast v0, Ljava/util/HashMap;

    .line 272
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    monitor-exit v6

    .line 276
    return-void

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    goto :goto_4

    .line 279
    :cond_7
    iget-object v7, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 281
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    iput-object v1, v5, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 286
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 289
    iget-object v5, v5, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 291
    monitor-enter v5

    .line 292
    :try_start_2
    invoke-virtual {p0, v2, v4, v14}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(III)V

    .line 295
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 297
    invoke-virtual {v2, v1, v4, v14, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 300
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 302
    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    .line 305
    move-result-object v2

    .line 306
    if-eqz v2, :cond_8

    .line 308
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 310
    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetSemClipboardService(Lcom/android/server/clipboard/ClipboardService;)Lcom/android/server/semclipboard/SemClipboardService;

    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0, v1, v4}, Lcom/android/server/semclipboard/SemClipboardService;->setPrimaryClip(Landroid/content/ClipData;I)V

    .line 317
    goto :goto_2

    .line 318
    :catchall_2
    move-exception v0

    .line 319
    goto :goto_3

    .line 320
    :cond_8
    :goto_2
    monitor-exit v5

    .line 321
    return-void

    .line 322
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 323
    throw v0

    .line 324
    :goto_4
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    throw v0

    .line 326
    :goto_5
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    throw v0

    .line 328
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 330
    const-string v1, "No items"

    .line 332
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    throw v0
.end method

.method public final clearPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v4

    .line 11
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 13
    invoke-static {v1, p4, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 16
    move-result v9

    .line 17
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 19
    const/4 v8, 0x1

    .line 20
    const/16 v2, 0x1e

    .line 22
    move v3, v0

    .line 23
    move v5, v9

    .line 24
    move-object v6, p1

    .line 25
    move-object v7, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 32
    return-void

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 35
    iget-object p2, p2, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter p2

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    .line 40
    new-instance v2, Landroid/util/Pair;

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p3

    .line 46
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p4

    .line 50
    invoke-direct {v2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    const/16 p3, 0x65

    .line 55
    invoke-virtual {v1, p3, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 58
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 60
    const/4 p3, 0x0

    .line 61
    invoke-virtual {p0, p3, v0, v9, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 64
    monitor-exit p2

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final getPersonaId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    iget-object v1, v0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v2, v0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 9
    if-nez v2, :cond_0

    .line 11
    const-string/jumbo v2, "persona"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 20
    iput-object v1, v0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 24
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_2

    .line 34
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 37
    move-result p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string p0, "ClipboardService"

    .line 41
    const-string/jumbo v0, "personaManager is null!"

    .line 44
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 50
    move-result p0

    .line 51
    :cond_2
    :goto_0
    return p0
.end method

.method public final getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result v9

    .line 11
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 13
    invoke-static {v1, p4, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 16
    move-result v10

    .line 17
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 19
    const/4 v8, 0x1

    .line 20
    const/16 v2, 0x1d

    .line 22
    move v3, v0

    .line 23
    move v4, v9

    .line 24
    move v5, v10

    .line 25
    move-object v6, p1

    .line 26
    move-object v7, p2

    .line 27
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 30
    move-result p2

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p2, :cond_6

    .line 34
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 36
    invoke-static {p2, v9, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 42
    goto/16 :goto_2

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 46
    iget-object p2, p2, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter p2

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 52
    move-result p4

    .line 53
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardAllowed(I)I

    .line 56
    move-result p4

    .line 57
    if-nez p4, :cond_1

    .line 59
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 61
    invoke-virtual {p1, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 64
    move-result-object p1

    .line 65
    iput-object v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 67
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 69
    invoke-virtual {p1, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 78
    invoke-virtual {p0, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 81
    move-result-object p0

    .line 82
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 84
    check-cast p0, Ljava/util/HashMap;

    .line 86
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 89
    monitor-exit p2

    .line 90
    return-object v1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto/16 :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 97
    move-result p4

    .line 98
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    .line 101
    move-result p4

    .line 102
    if-eqz p4, :cond_2

    .line 104
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 106
    invoke-virtual {p4, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 109
    move-result-object p4

    .line 110
    iget-object p4, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 112
    check-cast p4, Ljava/util/HashMap;

    .line 114
    invoke-virtual {p4}, Ljava/util/HashMap;->clear()V

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 120
    invoke-virtual {p4, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 123
    move-result-object p4

    .line 124
    iput-object v1, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 126
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 128
    invoke-virtual {p4, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 131
    move-result-object p4

    .line 132
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :goto_0
    :try_start_1
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 137
    invoke-static {p4, v0, v10, p1}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 143
    move-result p4

    .line 144
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    .line 147
    move-result p4

    .line 148
    if-nez p4, :cond_3

    .line 150
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 152
    invoke-virtual {p0, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 155
    move-result-object p0

    .line 156
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 161
    move-result p1

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object p1

    .line 166
    check-cast p0, Ljava/util/HashMap;

    .line 168
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object p0

    .line 172
    check-cast p0, Landroid/content/ClipData;

    .line 174
    monitor-exit p2

    .line 175
    return-object p0

    .line 176
    :cond_3
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 178
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 183
    invoke-virtual {p4, v9, v10}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 186
    move-result-object p4

    .line 187
    if-nez p4, :cond_4

    .line 189
    monitor-exit p2

    .line 190
    return-object v1

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 193
    invoke-static {v1, p1, v0, v9, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 196
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 198
    invoke-static {v1, p4, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V

    .line 201
    iget-object p1, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 203
    if-eqz p1, :cond_5

    .line 205
    invoke-virtual {p0, p3, v0, v10}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->scheduleAutoClear(III)V

    .line 208
    :cond_5
    iget-object p0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 210
    monitor-exit p2

    .line 211
    return-object p0

    .line 212
    :catch_0
    const-string p3, "ClipboardService"

    .line 214
    const-string p4, "Could not grant permission to primary clip. Clearing clipboard."

    .line 216
    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 221
    invoke-virtual {p0, v1, v0, v10, p1}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 224
    monitor-exit p2

    .line 225
    return-object v1

    .line 226
    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    throw p0

    .line 228
    :cond_6
    :goto_2
    return-object v1
.end method

.method public final getPrimaryClipDescription(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipDescription;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result v3

    .line 7
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 13
    invoke-static {v0, p4, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 19
    const/16 v2, 0x1d

    .line 21
    const/4 v8, 0x0

    .line 22
    move v4, p3

    .line 23
    move v5, v0

    .line 24
    move-object v6, p1

    .line 25
    move-object v7, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x0

    .line 31
    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 35
    invoke-static {p1, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 44
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 49
    invoke-virtual {p0, p3, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_1

    .line 55
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 57
    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 62
    move-result-object p2

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    monitor-exit p1

    .line 67
    return-object p2

    .line 68
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_2
    return-object p2
.end method

.method public final getPrimaryClipSource(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->getPrimaryClipSource_enforcePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 6
    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 9
    move-result v3

    .line 10
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result p3

    .line 14
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 16
    invoke-static {v0, p4, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 22
    const/16 v2, 0x1d

    .line 24
    const/4 v8, 0x0

    .line 25
    move v4, p3

    .line 26
    move v5, v0

    .line 27
    move-object v6, p1

    .line 28
    move-object v7, p2

    .line 29
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    move-result p1

    .line 33
    const/4 p2, 0x0

    .line 34
    if-eqz p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 38
    invoke-static {p1, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 47
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter p1

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 52
    invoke-virtual {p0, p3, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_1

    .line 58
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 60
    if-eqz p3, :cond_1

    .line 62
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 64
    monitor-exit p1

    .line 65
    return-object p0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    monitor-exit p1

    .line 69
    return-object p2

    .line 70
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw p0

    .line 72
    :cond_2
    :goto_1
    return-object p2
.end method

.method public final hasClipboardText(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result v3

    .line 7
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 13
    invoke-static {v0, p4, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 19
    const/16 v2, 0x1d

    .line 21
    const/4 v8, 0x0

    .line 22
    move v4, p3

    .line 23
    move v5, v0

    .line 24
    move-object v6, p1

    .line 25
    move-object v7, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x0

    .line 31
    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 35
    invoke-static {p1, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 44
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 49
    invoke-virtual {p0, p3, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_2

    .line 55
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 57
    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_1

    .line 69
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 72
    move-result p0

    .line 73
    if-lez p0, :cond_1

    .line 75
    const/4 p2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    monitor-exit p1

    .line 80
    return p2

    .line 81
    :cond_2
    monitor-exit p1

    .line 82
    return p2

    .line 83
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :cond_3
    :goto_2
    return p2
.end method

.method public final hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {v0, p1, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result v3

    .line 7
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 13
    invoke-static {v0, p4, v3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 19
    const/16 v2, 0x1d

    .line 21
    const/4 v8, 0x0

    .line 22
    move v4, p3

    .line 23
    move v5, v0

    .line 24
    move-object v6, p1

    .line 25
    move-object v7, p2

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(IIIILjava/lang/String;Ljava/lang/String;Z)Z

    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x0

    .line 31
    if-eqz p1, :cond_5

    .line 33
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 35
    invoke-static {p1, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 44
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 49
    invoke-virtual {p4, p3, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 52
    move-result-object p4

    .line 53
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardAllowed(I)I

    .line 60
    move-result v1

    .line 61
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->getPersonaId()I

    .line 64
    move-result v2

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->isClipboardShareAllowed(I)I

    .line 68
    move-result v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-nez v1, :cond_1

    .line 72
    iput-object v3, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 74
    iget-object p0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 76
    check-cast p0, Ljava/util/HashMap;

    .line 78
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 81
    monitor-exit p1

    .line 82
    return p2

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, 0x1

    .line 86
    if-eqz v2, :cond_3

    .line 88
    iget-object p4, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 90
    check-cast p4, Ljava/util/HashMap;

    .line 92
    invoke-virtual {p4}, Ljava/util/HashMap;->clear()V

    .line 95
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 97
    invoke-virtual {p0, p3, v0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_2

    .line 103
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 105
    if-eqz p0, :cond_2

    .line 107
    move p2, v1

    .line 108
    :cond_2
    monitor-exit p1

    .line 109
    return p2

    .line 110
    :cond_3
    iput-object v3, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 112
    iget-object p0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 117
    move-result p3

    .line 118
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object p3

    .line 122
    check-cast p0, Ljava/util/HashMap;

    .line 124
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 128
    if-eqz p0, :cond_4

    .line 130
    move p2, v1

    .line 131
    :cond_4
    monitor-exit p1

    .line 132
    return p2

    .line 133
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    throw p0

    .line 135
    :cond_5
    :goto_1
    return p2
.end method

.method public final isClipboardAllowed(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 21
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isPackageAllowed(I)Z

    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final isClipboardShareAllowed(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mContext:Landroid/content/Context;

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardSharedAllowed(I)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string/jumbo p1, "clipboard"

    .line 14
    const-string p2, "Exception: "

    .line 16
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :cond_0
    throw p0
.end method

.method public final removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-static {p3, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    .line 6
    move-result p3

    .line 7
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 9
    invoke-virtual {v0, p4, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(ILjava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 15
    invoke-static {v1, p5, p3}, Lcom/android/server/clipboard/ClipboardService;->-$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I

    .line 18
    move-result p5

    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne p5, v1, :cond_0

    .line 22
    const-string p0, "ClipboardService"

    .line 24
    const-string/jumbo p1, "removePrimaryClipChangedListener invalid deviceId for userId:"

    .line 27
    const-string p5, " uid:"

    .line 29
    const-string v0, " callingPackage:"

    .line 31
    invoke-static {p4, p3, p1, p5, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1, p2, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 41
    iget-object p2, p2, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter p2

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 46
    invoke-virtual {p0, v0, p5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 49
    move-result-object p0

    .line 50
    if-eqz p0, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    monitor-exit p2

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public final scheduleAutoClear(III)V
    .locals 5

    .line 1
    const-string/jumbo v0, "clipboard"

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    const-string v3, "auto_clear_enabled"

    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 17
    new-instance v3, Landroid/util/Pair;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v4

    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p3

    .line 27
    invoke-direct {v3, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    .line 32
    const/16 v4, 0x65

    .line 34
    invoke-virtual {p3, v4, v3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 37
    iget-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    .line 39
    invoke-static {p3, v4, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 42
    move-result-object p1

    .line 43
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->mClipboardClearHandler:Lcom/android/server/clipboard/ClipboardService$ClipboardImpl$ClipboardClearHandler;

    .line 45
    const-string p2, "auto_clear_timeout"

    .line 47
    const-wide/32 v3, 0x36ee80

    .line 50
    invoke-static {v0, p2, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 53
    move-result-wide p2

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    return-void

    .line 64
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public final setClipboardAccessNotificationsEnabledForUser(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 28
    move-result-object p2

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object p0

    .line 38
    const-string/jumbo p2, "clipboard_show_access_notifications"

    .line 41
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    const-string p1, "areClipboardAccessNotificationsEnable requires permission MANAGE_CLIPBOARD_ACCESS_NOTIFICATION"

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
.end method

.method public final setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p2

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    return-void
.end method

.method public final setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/IClipboard$Stub;->setPrimaryClipAsPackage_enforcePermission()V

    .line 4
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 7
    return-void
.end method
