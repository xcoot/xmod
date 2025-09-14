.class public abstract Lcom/samsung/android/server/audio/utils/KaraokeUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "karaoke_allow"

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p1, "installed"

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string/jumbo v0, "removed"

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string v1, "Karaoke app is "

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "KaraokeUtils"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    const-string v1, "com.samsung.android.intent.karaoke"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const-string/jumbo p1, "package"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string p1, "com.sec.android.app.soundalive"

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 52
    .line 53
    sget-object p2, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    .line 57
    .line 58
    move-result-wide p2

    .line 59
    const/4 v1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method
