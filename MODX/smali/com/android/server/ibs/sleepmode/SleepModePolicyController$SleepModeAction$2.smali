.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final cancelAction()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "SleepModePolicyController"

    .line 8
    const-string v1, "Wifi cancelAction"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 15
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 17
    const-string/jumbo v1, "pref_sleep_mode_wifi_key"

    .line 20
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 32
    const-string/jumbo v2, "wifi_scan_always_enabled"

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 41
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 43
    const-string v2, "Enable Wifi scan"

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    return-void

    .line 55
    :pswitch_0
    const-string v0, "SleepModePolicyController"

    .line 57
    const-string v1, "GPS cancelAction"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 64
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v1, "pref_sleep_mode_location_key"

    .line 69
    const/4 v2, 0x0

    .line 70
    :try_start_0
    const-string/jumbo v3, "sleep_mode_pref"

    .line 73
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 80
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 86
    move v0, v2

    .line 87
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    move-result-object v3

    .line 95
    const-string/jumbo v4, "location_mode"

    .line 98
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 103
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 105
    const-string v3, "Enable GPS"

    .line 107
    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final triggerAction()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "SleepModePolicyController"

    .line 8
    const-string v1, "Wifi triggerAction"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 15
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v0

    .line 21
    const-string/jumbo v1, "wifi_scan_always_enabled"

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    move-result v0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v0, v3, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 41
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 43
    const-string/jumbo v1, "pref_sleep_mode_wifi_key"

    .line 46
    invoke-static {v0, v1, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 51
    iget v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 53
    or-int/lit8 v1, v1, 0x2

    .line 55
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 58
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 60
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 62
    const-string v0, "Disable Wifi scan"

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    const-string v0, "SleepModePolicyController"

    .line 70
    const-string v1, "GPS triggerAction"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 77
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 79
    const-string/jumbo v1, "location"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/location/LocationManager;

    .line 88
    const-string/jumbo v1, "location_mode"

    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    .line 97
    move-result v0

    .line 98
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 107
    move-result v3

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_2

    .line 121
    const/4 v0, 0x1

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    move v0, v2

    .line 124
    :goto_0
    const-string/jumbo v4, "pref_sleep_mode_location_key"

    .line 127
    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {v0, v4, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 145
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 147
    const-string v1, "Disable GPS"

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 154
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 156
    or-int/lit8 v0, v0, 0x4

    .line 158
    invoke-static {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 164
    invoke-static {p0, v4, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 167
    :goto_1
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
