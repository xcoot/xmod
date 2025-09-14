.class public final synthetic Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 8
    iget-object v2, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    .line 10
    iget-object v3, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 12
    if-ne v3, v0, :cond_0

    .line 14
    iget-object v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 16
    if-nez v3, :cond_0

    .line 18
    invoke-static {p0}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    .line 21
    move-result-object p0

    .line 22
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamService;->asBinder()Landroid/os/IBinder;

    .line 25
    move-result-object v0

    .line 26
    iget-object v3, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 32
    iget-object v0, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 34
    iget-object v3, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 36
    iget-boolean v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 38
    iget-boolean v5, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 40
    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Lcom/android/server/dreams/DreamController$DreamRecord$1;

    .line 42
    invoke-interface {p0, v3, v4, v5, v0}, Landroid/service/dreams/IDreamService;->attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v0, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 47
    iput-object p0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 49
    iget-boolean p0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 51
    if-nez p0, :cond_1

    .line 53
    iget-boolean p0, v2, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 55
    if-nez p0, :cond_1

    .line 57
    iget-object p0, v2, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, v2, Lcom/android/server/dreams/DreamController;->mDreamingStartedIntent:Landroid/content/Intent;

    .line 61
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 63
    const/4 v4, 0x0

    .line 64
    iget-object v5, v2, Lcom/android/server/dreams/DreamController;->mDreamingStartedStoppedOptions:Landroid/os/Bundle;

    .line 66
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    iget-object p0, v2, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 71
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 73
    iget-object p0, v2, Lcom/android/server/dreams/DreamController;->mListener:Lcom/android/server/dreams/DreamManagerService$4;

    .line 75
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-direct {v0, v3}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 86
    new-instance v3, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;

    .line 88
    invoke-direct {v3, p0, v0}, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/dreams/DreamManagerService;Ljava/util/function/Consumer;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    iput-boolean v1, v2, Lcom/android/server/dreams/DreamController;->mSentStartBroadcast:Z

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    const-string v0, "DreamController"

    .line 102
    const-string v3, "The dream service died unexpectedly."

    .line 104
    invoke-static {v0, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const-string p0, "attach failed"

    .line 109
    invoke-virtual {v2, v1, p0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    .line 116
    :cond_1
    :goto_0
    return-void
.end method
