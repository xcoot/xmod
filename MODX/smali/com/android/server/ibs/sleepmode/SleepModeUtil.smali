.class public abstract Lcom/android/server/ibs/sleepmode/SleepModeUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 3
    const-string/jumbo v1, "eng"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 12
    const-string/jumbo v1, "userdebug"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    sput-boolean v0, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 27
    return-void
.end method

.method public static getTime(Ljava/lang/String;)J
    .locals 6

    .line 1
    const-string v0, ":"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v0, p0, v0

    .line 10
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    move-result-wide v0

    .line 18
    const/4 v2, 0x1

    .line 19
    aget-object p0, p0, v2

    .line 21
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 28
    move-result-wide v2

    .line 29
    const-wide/16 v4, 0x3c

    .line 31
    mul-long/2addr v0, v4

    .line 32
    add-long/2addr v0, v2

    .line 33
    return-wide v0
.end method

.method public static handlePowerSavingModeViaApi(Landroid/content/Context;Z)Z
    .locals 8

    .line 1
    const-string/jumbo v0, "result "

    .line 4
    const-string v1, "SleepModeUtil"

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    :try_start_0
    const-string/jumbo p1, "psm_turn_on"

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_0
    const-string/jumbo p1, "psm_turn_off"

    .line 19
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    .line 21
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string/jumbo v4, "request_id"

    .line 27
    const-string/jumbo v5, "sleepmode"

    .line 30
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object p0

    .line 37
    const-string/jumbo v4, "com.samsung.android.sm.dcapi"

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {p0, v4, p1, v5, v3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 44
    move-result-object p0

    .line 45
    if-nez p0, :cond_1

    .line 47
    const-string/jumbo p0, "wrong result"

    .line 50
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const-string/jumbo v3, "result"

    .line 57
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 60
    move-result v3

    .line 61
    const/4 v4, -0x1

    .line 62
    if-nez v3, :cond_2

    .line 64
    const-string/jumbo v5, "error_id"

    .line 67
    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 70
    move-result v5

    .line 71
    const-string/jumbo v6, "error_msg"

    .line 74
    const-string v7, ""

    .line 76
    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, ", errId "

    .line 90
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v0, ", errMsg "

    .line 98
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    const-string/jumbo v0, "version"

    .line 114
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 117
    move-result p0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string p1, " "

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    const-string p1, ", version "

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    move v2, v3

    .line 150
    goto :goto_2

    .line 151
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    const-string v0, "Error : "

    .line 155
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 165
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_2
    return v2
.end method

.method public static isDeviceIdleMode(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "power"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/PowerManager;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, "isIdle is "

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "SleepModeUtil"

    .line 35
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return p0
.end method

.method public static isPowerConnected(Landroid/content/Context;)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 13
    move-result-object p0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 17
    return v0

    .line 18
    :cond_0
    const-string/jumbo v1, "plugged"

    .line 21
    const/4 v3, -0x1

    .line 22
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result p0

    .line 26
    sget-boolean v1, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 28
    const/4 v3, 0x4

    .line 29
    const/4 v4, 0x1

    .line 30
    if-nez v1, :cond_2

    .line 32
    if-eq p0, v4, :cond_1

    .line 34
    if-eq p0, v2, :cond_1

    .line 36
    if-ne p0, v3, :cond_3

    .line 38
    :cond_1
    :goto_0
    move v0, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-eq p0, v4, :cond_1

    .line 42
    if-ne p0, v3, :cond_3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, "charging is "

    .line 50
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    const-string v1, "SleepModeUtil"

    .line 62
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "power"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/PowerManager;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, "screenOn = "

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "SleepModeUtil"

    .line 35
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return p0
.end method
