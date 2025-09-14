.class public final Lcom/android/server/am/UserController$Injector$1;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

.field public mIndex:I

.field public final mIntent:Landroid/content/Intent;

.field public final mProgress:Lcom/android/internal/util/ProgressReporter;

.field public final mQuiet:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTargets:Ljava/util/List;

.field public final mUserId:I

.field public final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;IZLcom/android/server/am/UserController$$ExternalSyntheticLambda20;)V
    .locals 1

    .line 1
    iput-object p4, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    .line 3
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 6
    const/4 p4, 0x0

    .line 7
    iput p4, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    .line 9
    new-instance p4, Lcom/android/server/am/PreBootBroadcaster$1;

    .line 11
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p4, p0, v0}, Lcom/android/server/am/PreBootBroadcaster$1;-><init>(Lcom/android/server/am/UserController$Injector$1;Landroid/os/Looper;)V

    .line 22
    iput-object p4, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    .line 24
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 26
    iput p2, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 28
    const/4 p4, 0x0

    .line 29
    iput-object p4, p0, Lcom/android/server/am/UserController$Injector$1;->mProgress:Lcom/android/internal/util/ProgressReporter;

    .line 31
    iput-boolean p3, p0, Lcom/android/server/am/UserController$Injector$1;->mQuiet:Z

    .line 33
    new-instance p3, Landroid/content/Intent;

    .line 35
    const-string p4, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 37
    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p3, p0, Lcom/android/server/am/UserController$Injector$1;->mIntent:Landroid/content/Intent;

    .line 42
    const p4, 0x2000100

    .line 45
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    move-result-object p1

    .line 54
    const/high16 p4, 0x100000

    .line 56
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p3, p4, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector$1;->sendNext()V

    .line 4
    return-void
.end method

.method public final sendNext()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    .line 3
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-lt v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    .line 23
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 29
    iget v1, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->isUserRunning(II)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    const-string v0, "PreBootBroadcaster"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "User "

    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget v3, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 49
    const-string v4, " is no longer running; skipping remaining receivers"

    .line 51
    invoke-static {v1, v3, v4, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    .line 56
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    .line 65
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 68
    return-void

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/UserController$Injector$1;->mQuiet:Z

    .line 71
    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mHandler:Lcom/android/server/am/PreBootBroadcaster$1;

    .line 75
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    move-result v1

    .line 81
    iget v2, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    .line 83
    const/4 v3, 0x1

    .line 84
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    .line 93
    iget v1, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    .line 95
    add-int/lit8 v2, v1, 0x1

    .line 97
    iput v2, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 105
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 107
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/android/server/am/UserController$Injector$1;->mProgress:Lcom/android/internal/util/ProgressReporter;

    .line 113
    if-eqz v2, :cond_3

    .line 115
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 117
    iget-object v2, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 119
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/android/server/am/UserController$Injector$1;->mProgress:Lcom/android/internal/util/ProgressReporter;

    .line 131
    iget v3, p0, Lcom/android/server/am/UserController$Injector$1;->mIndex:I

    .line 133
    iget-object v4, p0, Lcom/android/server/am/UserController$Injector$1;->mTargets:Ljava/util/List;

    .line 135
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 138
    move-result v4

    .line 139
    iget-object v5, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 141
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 143
    const v6, 0x10401bc

    .line 146
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    .line 157
    :cond_3
    const-string v0, "PreBootBroadcaster"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    const-string v3, "Pre-boot of "

    .line 163
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, " for user "

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v3, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 180
    invoke-static {v2, v3, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 183
    iget v0, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 185
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v0

    .line 193
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 196
    move-result-object v0

    .line 197
    const/16 v2, 0x755d

    .line 199
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->mIntent:Landroid/content/Intent;

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 209
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 215
    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 220
    move-result-wide v0

    .line 221
    :goto_0
    move-wide v3, v0

    .line 222
    goto :goto_1

    .line 223
    :cond_4
    const-wide/16 v0, 0x2710

    .line 225
    goto :goto_0

    .line 226
    :goto_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 229
    move-result-object v0

    .line 230
    const-string v7, ""

    .line 232
    const/4 v5, 0x0

    .line 233
    const/16 v6, 0xc9

    .line 235
    move-object v2, v0

    .line 236
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 244
    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController$Injector$1;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 247
    iget-object v3, p0, Lcom/android/server/am/UserController$Injector$1;->mIntent:Landroid/content/Intent;

    .line 249
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 252
    move-result-object v6

    .line 253
    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 258
    move-result v9

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 262
    move-result v10

    .line 263
    iget v11, p0, Lcom/android/server/am/UserController$Injector$1;->mUserId:I

    .line 265
    const/4 v5, 0x0

    .line 266
    const/4 v7, 0x1

    .line 267
    move-object v4, p0

    .line 268
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 271
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 275
    return-void

    .line 276
    :catchall_0
    move-exception p0

    .line 277
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 281
    throw p0
.end method
