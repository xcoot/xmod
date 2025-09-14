.class public final Lcom/android/server/devicepolicy/NonAbUpdateInstaller;
.super Lcom/android/server/devicepolicy/UpdateInstaller;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final installUpdateInThread()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-class v1, Landroid/os/PowerManager;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/os/PowerManager;

    .line 34
    .line 35
    const-string/jumbo v1, "deviceowner"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "UpdateInstaller"

    .line 44
    .line 45
    const-string v2, "IO error while trying to install non AB update."

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v1, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
