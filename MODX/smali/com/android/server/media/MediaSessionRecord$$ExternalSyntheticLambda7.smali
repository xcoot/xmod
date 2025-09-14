.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;


# virtual methods
.method public final performOn(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)V
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 3
    invoke-interface {p0}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mDeathMonitor:Landroid/os/IBinder$DeathRecipient;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 13
    iget-object p0, p1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 15
    invoke-interface {p0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V

    .line 18
    return-void
.end method
