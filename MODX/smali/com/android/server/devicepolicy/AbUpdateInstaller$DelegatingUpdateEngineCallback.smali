.class public final Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;
.super Landroid/os/UpdateEngineCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mUpdateEngine:Landroid/os/UpdateEngine;

.field public mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;


# virtual methods
.method public final onPayloadApplicationComplete(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateEngine:Landroid/os/UpdateEngine;

    .line 3
    invoke-virtual {v0}, Landroid/os/UpdateEngine;->unbind()Z

    .line 6
    if-nez p1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    .line 10
    iget-object p1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 27
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 29
    const-class p1, Landroid/os/PowerManager;

    .line 31
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/os/PowerManager;

    .line 37
    const-string/jumbo p1, "deviceowner"

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    .line 46
    sget-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorCodesMap:Ljava/util/Map;

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    check-cast v0, Ljava/util/HashMap;

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result v0

    .line 69
    sget-object v1, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorStringsMap:Ljava/util/Map;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v2

    .line 75
    const-string v3, "Unknown error with error code = "

    .line 77
    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    check-cast v1, Ljava/util/HashMap;

    .line 83
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/String;

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 92
    :goto_0
    return-void
.end method

.method public final onStatusUpdate(IF)V
    .locals 0

    .line 1
    return-void
.end method
