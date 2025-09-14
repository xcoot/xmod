.class public final Lcom/android/server/vibrator/VibratorControllerHolder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mVibratorController:Landroid/frameworks/vibrator/IVibratorController;


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 3
    const-string p0, "VibratorControllerHolder"

    const-string v0, "binderDied() called unexpectedly."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    invoke-virtual {v0}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorControllerHolder;->setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    :cond_0
    return-void
.end method

.method public final setVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v0, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    check-cast p1, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Failed to set IVibratorController: "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "VibratorControllerHolder"

    .line 47
    .line 48
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_2
    return-void
.end method
