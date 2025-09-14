.class public final Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->this$0:Lcom/android/server/DirEncryptService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->this$0:Lcom/android/server/DirEncryptService;

    .line 3
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "Command.USB_STATE:: "

    .line 10
    sget-object v1, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v2, v3, :cond_2

    .line 18
    const/4 v3, 0x3

    .line 19
    if-eq v2, v3, :cond_1

    .line 21
    const/16 p1, 0xa

    .line 23
    if-eq v2, p1, :cond_0

    .line 25
    const-string p0, "DirEncryptServiceHelper"

    .line 27
    const-string p1, "Invalid command!!!"

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    check-cast p1, Ljava/lang/String;

    .line 45
    const-string v2, "DirEncryptServiceHelper"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    .line 76
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_0
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p0
.end method
