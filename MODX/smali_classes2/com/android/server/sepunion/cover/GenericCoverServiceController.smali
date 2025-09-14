.class public final Lcom/android/server/sepunion/cover/GenericCoverServiceController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "power"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/os/PowerManager;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;-><init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    const-string/jumbo v0, "send power key"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 39
    .line 40
    .line 41
    const-string v0, "disable LCD Off"

    .line 42
    .line 43
    invoke-virtual {p2, p1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final setLcdOffDisabledByCover(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setLcdOffDisabledByCover disabled:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CoverManager_GenericCoverServiceController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v4, "Shouldn\'t happen"

    .line 39
    .line 40
    invoke-static {v1, v4, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "lcd_off_disabled_by_cover"

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
