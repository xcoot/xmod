.class public final synthetic Lcom/android/server/adb/AdbService$Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/adb/AdbService;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "AdbService"

    .line 7
    .line 8
    const-string/jumbo v0, "boot completed"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p1, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p1, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 25
    .line 26
    iget-boolean p1, p1, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
