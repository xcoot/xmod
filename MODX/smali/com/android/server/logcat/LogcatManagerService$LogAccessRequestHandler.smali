.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/logcat/LogcatManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/logcat/LogcatManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    iput-object p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;->mService:Lcom/android/server/logcat/LogcatManagerService;

    .line 9
    if-eqz v0, :cond_6

    .line 11
    if-eq v0, v4, :cond_5

    .line 13
    if-eq v0, v3, :cond_4

    .line 15
    if-eq v0, v2, :cond_2

    .line 17
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x5

    .line 20
    if-eq v0, v1, :cond_0

    .line 22
    goto/16 :goto_2

    .line 24
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 28
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 30
    check-cast p0, Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 41
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 43
    check-cast v0, Landroid/util/ArrayMap;

    .line 45
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 51
    if-eqz v0, :cond_12

    .line 53
    iget v0, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 55
    if-ne v0, v4, :cond_12

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 60
    goto/16 :goto_2

    .line 62
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/Integer;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result v0

    .line 86
    sub-int/2addr v0, v4

    .line 87
    if-nez v0, :cond_3

    .line 89
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 91
    check-cast p0, Landroid/util/ArrayMap;

    .line 93
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    goto/16 :goto_2

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mActiveLogAccessCount:Ljava/util/Map;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v0

    .line 104
    check-cast p0, Landroid/util/ArrayMap;

    .line 106
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    goto/16 :goto_2

    .line 111
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 118
    goto/16 :goto_2

    .line 120
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 127
    goto/16 :goto_2

    .line 129
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->getClientForRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;

    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_7

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 142
    goto/16 :goto_2

    .line 144
    :cond_7
    iget-object v5, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 146
    check-cast v5, Landroid/util/ArrayMap;

    .line 148
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 154
    if-nez v5, :cond_8

    .line 156
    new-instance v5, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 158
    invoke-direct {v5}, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;-><init>()V

    .line 161
    iget-object v6, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 163
    check-cast v6, Landroid/util/ArrayMap;

    .line 165
    invoke-virtual {v6, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_8
    iget v6, v5, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 170
    if-eqz v6, :cond_c

    .line 172
    if-eq v6, v4, :cond_b

    .line 174
    if-eq v6, v3, :cond_a

    .line 176
    if-eq v6, v2, :cond_9

    .line 178
    goto/16 :goto_2

    .line 180
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/logcat/LogcatManagerService;->declineRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 183
    goto/16 :goto_2

    .line 185
    :cond_a
    invoke-virtual {p0, v0, p1}, Lcom/android/server/logcat/LogcatManagerService;->approveRequest(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;)V

    .line 188
    goto/16 :goto_2

    .line 190
    :cond_b
    iget-object p0, v5, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    .line 192
    check-cast p0, Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    goto/16 :goto_2

    .line 199
    :cond_c
    iget-object v2, v5, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    .line 201
    check-cast v2, Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 208
    iget v2, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mUid:I

    .line 210
    invoke-virtual {p1, v2}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    .line 213
    move-result p1

    .line 214
    const/4 v5, -0x1

    .line 215
    const/4 v6, 0x0

    .line 216
    if-eq p1, v5, :cond_d

    .line 218
    move p1, v4

    .line 219
    goto :goto_0

    .line 220
    :cond_d
    move p1, v6

    .line 221
    :goto_0
    const-string/jumbo v5, "com.sec.android.easyMover"

    .line 224
    iget-object v7, v0, Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;->mPackageName:Ljava/lang/String;

    .line 226
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v8

    .line 230
    if-eqz v8, :cond_e

    .line 232
    iget-object v8, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 237
    move-result-object v8

    .line 238
    if-eqz v8, :cond_e

    .line 240
    :try_start_0
    const-string v9, "android"

    .line 242
    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    if-nez v5, :cond_e

    .line 248
    move v6, v4

    .line 249
    :catch_0
    :cond_e
    if-nez p1, :cond_11

    .line 251
    if-eqz v6, :cond_f

    .line 253
    goto :goto_1

    .line 254
    :cond_f
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 256
    invoke-virtual {p1, v2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 259
    move-result p1

    .line 260
    if-ne p1, v3, :cond_10

    .line 262
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mLogAccessStatus:Ljava/util/Map;

    .line 264
    check-cast p1, Landroid/util/ArrayMap;

    .line 266
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;

    .line 272
    iput v4, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    .line 274
    iget-object p1, p0, Lcom/android/server/logcat/LogcatManagerService;->mHandler:Lcom/android/server/logcat/LogcatManagerService$LogAccessRequestHandler;

    .line 276
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 279
    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/server/logcat/LogcatManagerService;->mClock:Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;

    .line 282
    invoke-virtual {v1}, Lcom/android/server/logcat/LogcatManagerService$Injector$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 285
    move-result-object v1

    .line 286
    check-cast v1, Ljava/lang/Long;

    .line 288
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 291
    move-result-wide v3

    .line 292
    sget v1, Lcom/android/server/logcat/LogcatManagerService;->PENDING_CONFIRMATION_TIMEOUT_MILLIS:I

    .line 294
    int-to-long v5, v1

    .line 295
    add-long/2addr v3, v5

    .line 296
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 299
    new-instance p1, Landroid/content/Intent;

    .line 301
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 304
    const v0, 0x10008000

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 312
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v0, "android.intent.extra.UID"

    .line 317
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    iget-object v0, p0, Lcom/android/server/logcat/LogcatManagerService;->mDialogCallback:Lcom/android/server/logcat/LogcatManagerService$LogAccessDialogCallback;

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/app/ILogAccessDialogCallback$Stub;->asBinder()Landroid/os/IBinder;

    .line 325
    move-result-object v0

    .line 326
    const-string v1, "EXTRA_CALLBACK"

    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 331
    const/high16 v0, 0x10000000

    .line 333
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    new-instance v0, Landroid/content/ComponentName;

    .line 338
    const-string/jumbo v1, "com.android.systemui"

    .line 341
    const-string/jumbo v2, "com.android.systemui.logcat.LogAccessDialogActivity"

    .line 344
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 350
    iget-object p0, p0, Lcom/android/server/logcat/LogcatManagerService;->mContext:Landroid/content/Context;

    .line 352
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 354
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 357
    goto :goto_2

    .line 358
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/logcat/LogcatManagerService;->onAccessDeclinedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 361
    goto :goto_2

    .line 362
    :cond_11
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/logcat/LogcatManagerService;->onAccessApprovedForClient(Lcom/android/server/logcat/LogcatManagerService$LogAccessClient;)V

    .line 365
    :cond_12
    :goto_2
    return-void
.end method
