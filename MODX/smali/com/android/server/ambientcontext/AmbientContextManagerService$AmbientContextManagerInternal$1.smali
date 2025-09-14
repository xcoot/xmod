.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$resultPendingIntent:Landroid/app/PendingIntent;

.field public final synthetic val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

.field public final synthetic val$statusCallback:Landroid/os/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 3
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$resultPendingIntent:Landroid/app/PendingIntent;

    .line 5
    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$statusCallback:Landroid/os/RemoteCallback;

    .line 7
    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onEvents(Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 3
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$resultPendingIntent:Landroid/app/PendingIntent;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v9, "AmbientContextManagerPerUserService"

    .line 10
    const-string v10, "Sending PendingIntent to "

    .line 12
    new-instance v4, Landroid/content/Intent;

    .line 14
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    const-string v2, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    .line 24
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 27
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 35
    :try_start_0
    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 37
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 44
    move-result-object v8

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v1, p0

    .line 50
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ": "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v9, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "Couldn\'t deliver pendingIntent:"

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    invoke-static {v9, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void
.end method

.method public final onRegistrationComplete(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$service:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;

    .line 3
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$AmbientContextManagerInternal$1;->val$statusCallback:Landroid/os/RemoteCallback;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1, p0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;->sendStatusCallback(ILandroid/os/RemoteCallback;)V

    .line 11
    return-void
.end method
