.class public final Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public mBlacklistDisabled:Z

.field public final mContext:Landroid/content/Context;

.field public mExemptions:Ljava/util/List;

.field public mExemptionsStr:Ljava/lang/String;

.field public mLogSampleRate:I

.field public mPolicy:I

.field public mStatslogSampleRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 9
    .line 10
    const/4 p2, -0x1

    .line 11
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 14
    .line 15
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "hidden_api_access_log_sampling_rate"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v2, 0x10000

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    if-le v0, v2, :cond_1

    .line 15
    .line 16
    :cond_0
    move v0, v3

    .line 17
    :cond_1
    if-eq v0, v3, :cond_2

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 20
    .line 21
    if-eq v0, v4, :cond_2

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 24
    .line 25
    sget-object v4, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Landroid/os/ZygoteProcess;->setHiddenApiAccessLogSampleRate(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const-string/jumbo v0, "hidden_api_access_statslog_sampling_rate"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ltz p1, :cond_3

    .line 38
    .line 39
    if-le p1, v2, :cond_4

    .line 40
    .line 41
    :cond_3
    move p1, v3

    .line 42
    :cond_4
    if-eq p1, v3, :cond_5

    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 45
    .line 46
    if-eq p1, v0, :cond_5

    .line 47
    .line 48
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 49
    .line 50
    sget-object p0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/os/ZygoteProcess;->setHiddenApiAccessStatslogSampleRate(I)V

    .line 53
    .line 54
    .line 55
    :cond_5
    return-void
.end method

.method public final update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "hidden_api_blacklist_exemptions"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "*"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 34
    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v1, ","

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 67
    .line 68
    :goto_1
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/os/ZygoteProcess;->setApiDenylistExemptions(Ljava/util/List;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    const-string v0, "ActivityManager"

    .line 79
    .line 80
    const-string v1, "Failed to set API blacklist exemptions!"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 90
    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string/jumbo v1, "hidden_api_policy"

    .line 98
    .line 99
    .line 100
    const/4 v2, -0x1

    .line 101
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    move v2, v0

    .line 112
    :cond_3
    iput v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 113
    .line 114
    return-void
.end method
