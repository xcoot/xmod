.class public abstract Lcom/android/server/companion/CompanionDeviceConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static isEnabled()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "enable_context_sync_telecom"

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    const-string/jumbo v3, "companion"

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v3, v0, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw v0
.end method
