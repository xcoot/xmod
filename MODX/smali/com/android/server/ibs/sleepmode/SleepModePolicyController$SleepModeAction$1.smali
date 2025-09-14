.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 5
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final cancelAction()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    const-string v0, "SleepModePolicyController"

    .line 8
    const-string v1, "CameraFlashNotification cancelAction"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 15
    const-string/jumbo v1, "pref_sleep_mode_camera_flash_notification_key"

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v2, "camera_flash_notification"

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 39
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 41
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 43
    const-string v2, "Enable camera flash notification"

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

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
    const-string v1, "Notification cancelAction"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 64
    const-string/jumbo v1, "pref_sleep_mode_notification_key"

    .line 67
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x0

    .line 72
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 74
    if-eqz v0, :cond_1

    .line 76
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    move-result-object p0

    .line 82
    const-string/jumbo v0, "edge_lighting_show_condition"

    .line 85
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    iget-object p0, v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 90
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 92
    const-string v0, "Set edge lighting condition to be always"

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 97
    :cond_1
    iget-object p0, v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    return-void

    .line 103
    :pswitch_1
    const-string v0, "SleepModePolicyController"

    .line 105
    const-string v1, "MasterSync cancelAction"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 112
    const-string/jumbo v1, "pref_sleep_mode_master_sync_key"

    .line 115
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 127
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 129
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 131
    const-string v2, "Enable master sync"

    .line 133
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 136
    :cond_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 142
    return-void

    .line 143
    :pswitch_2
    const-string v0, "SleepModePolicyController"

    .line 145
    const-string v1, "Nearby cancelAction"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 152
    const-string/jumbo v1, "pref_sleep_mode_nearby_key"

    .line 155
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v0

    .line 167
    const-string/jumbo v2, "nearby_scanning_enabled"

    .line 170
    const/4 v3, 0x1

    .line 171
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 176
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 178
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 180
    const-string v2, "Enable nearby"

    .line 182
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 185
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 191
    return-void

    .line 192
    :pswitch_3
    const-string v0, "SleepModePolicyController"

    .line 194
    const-string v1, "BlueTooth cancelAction"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 201
    const-string/jumbo v1, "pref_sleep_mode_bt_key"

    .line 204
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 215
    move-result-object v0

    .line 216
    const-string/jumbo v2, "ble_scan_always_enabled"

    .line 219
    const/4 v3, 0x1

    .line 220
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 225
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 227
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 229
    const-string v2, "Enable BT scan"

    .line 231
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 234
    :cond_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 236
    const/4 v0, 0x0

    .line 237
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 240
    return-void

    .line 241
    :pswitch_4
    const-string v0, "SleepModePolicyController"

    .line 243
    const-string v1, "PSM cancelAction"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 250
    const-string/jumbo v1, "pref_sleep_mode_psm_key"

    .line 253
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 256
    move-result v0

    .line 257
    const/4 v2, 0x0

    .line 258
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 260
    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->handlePowerSavingModeViaApi(Landroid/content/Context;Z)Z

    .line 267
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 269
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 271
    const-string v3, "Disable low power mode"

    .line 273
    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 276
    :cond_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 281
    return-void

    .line 282
    nop

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final triggerAction()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "SleepModePolicyController"

    .line 7
    iget v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->$r8$classId:I

    .line 9
    packed-switch v4, :pswitch_data_0

    .line 12
    const-string v4, "CameraFlashNotification triggerAction"

    .line 14
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v3

    .line 23
    const-string/jumbo v4, "camera_flash_notification"

    .line 26
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 29
    move-result v3

    .line 30
    if-ne v3, v1, :cond_0

    .line 32
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 41
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 43
    const-string/jumbo v2, "pref_sleep_mode_camera_flash_notification_key"

    .line 46
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 51
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 53
    or-int/lit16 v1, v1, 0x80

    .line 55
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 58
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 60
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 62
    const-string v0, "Disable camera flash notification"

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    const-string v4, "Notification triggerAction"

    .line 70
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    move-result-object v3

    .line 79
    const-string/jumbo v4, "edge_lighting_show_condition"

    .line 82
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 85
    move-result v3

    .line 86
    const-string/jumbo v5, "pref_sleep_mode_notification_key"

    .line 89
    if-nez v3, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 102
    invoke-static {p0, v5, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 105
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 107
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 109
    or-int/lit8 v1, v1, 0x40

    .line 111
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 114
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 116
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 118
    const-string v0, "Set edge lighting condition to be screen on"

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 126
    invoke-static {p0, v5, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    :goto_0
    return-void

    .line 130
    :pswitch_1
    const-string v4, "MasterSync triggerAction"

    .line 132
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 138
    move-result v3

    .line 139
    const-string/jumbo v4, "pref_sleep_mode_master_sync_key"

    .line 142
    if-eqz v3, :cond_2

    .line 144
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 147
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 149
    invoke-static {p0, v4, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 152
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 154
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 156
    or-int/lit8 v1, v1, 0x20

    .line 158
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 161
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 163
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 165
    const-string v0, "Disable master sync"

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 170
    goto :goto_1

    .line 171
    :cond_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 173
    invoke-static {p0, v4, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 176
    :goto_1
    return-void

    .line 177
    :pswitch_2
    const-string v4, "Nearby triggerAction"

    .line 179
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    move-result-object v3

    .line 188
    const-string/jumbo v4, "nearby_scanning_enabled"

    .line 191
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 194
    move-result v3

    .line 195
    const-string/jumbo v5, "pref_sleep_mode_nearby_key"

    .line 198
    if-ne v3, v1, :cond_3

    .line 200
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 202
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 211
    invoke-static {p0, v5, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 214
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 216
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 218
    or-int/lit8 v1, v1, 0x10

    .line 220
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 223
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 225
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 227
    const-string v0, "Disable nearby"

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 232
    goto :goto_2

    .line 233
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 235
    invoke-static {p0, v5, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    :goto_2
    return-void

    .line 239
    :pswitch_3
    const-string v4, "BlueTooth triggerAction"

    .line 241
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 246
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 249
    move-result-object v3

    .line 250
    const-string/jumbo v4, "ble_scan_always_enabled"

    .line 253
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 256
    move-result v3

    .line 257
    if-ne v3, v1, :cond_4

    .line 259
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 261
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 270
    const-string/jumbo v2, "pref_sleep_mode_bt_key"

    .line 273
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 276
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 278
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 280
    or-int/lit8 v1, v1, 0x8

    .line 282
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 285
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 287
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 289
    const-string v0, "Disable BT scan"

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 294
    :cond_4
    return-void

    .line 295
    :pswitch_4
    const-string p0, "PSM triggerAction"

    .line 297
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 302
    sget-boolean v4, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 307
    move-result-object p0

    .line 308
    const-string/jumbo v4, "low_power"

    .line 311
    invoke-static {p0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 314
    move-result p0

    .line 315
    if-ne p0, v1, :cond_5

    .line 317
    move p0, v1

    .line 318
    goto :goto_3

    .line 319
    :cond_5
    move p0, v2

    .line 320
    :goto_3
    iget-object v4, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 322
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 325
    move-result-object v4

    .line 326
    const-string/jumbo v5, "ultra_powersaving_mode"

    .line 329
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 332
    move-result v4

    .line 333
    if-ne v4, v1, :cond_6

    .line 335
    move v4, v1

    .line 336
    goto :goto_4

    .line 337
    :cond_6
    move v4, v2

    .line 338
    :goto_4
    iget-object v5, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 343
    move-result-object v5

    .line 344
    const-string/jumbo v6, "emergency_mode"

    .line 347
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 350
    move-result v5

    .line 351
    if-ne v5, v1, :cond_7

    .line 353
    move v5, v1

    .line 354
    goto :goto_5

    .line 355
    :cond_7
    move v5, v2

    .line 356
    :goto_5
    iget-object v6, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 361
    move-result-object v6

    .line 362
    const-string/jumbo v7, "sem_power_mode_limited_apps_and_home_screen"

    .line 365
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 368
    move-result v6

    .line 369
    if-ne v6, v1, :cond_8

    .line 371
    move v6, v1

    .line 372
    goto :goto_6

    .line 373
    :cond_8
    move v6, v2

    .line 374
    :goto_6
    iget-object v7, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 379
    move-result-object v7

    .line 380
    const-string v8, "adaptive_power_saving_setting"

    .line 382
    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 385
    move-result v7

    .line 386
    if-ne v7, v1, :cond_9

    .line 388
    move v7, v1

    .line 389
    goto :goto_7

    .line 390
    :cond_9
    move v7, v2

    .line 391
    :goto_7
    const-string/jumbo v8, "pref_sleep_mode_psm_key"

    .line 394
    if-nez v6, :cond_b

    .line 396
    if-nez p0, :cond_b

    .line 398
    if-nez v4, :cond_b

    .line 400
    if-nez v5, :cond_b

    .line 402
    if-eqz v7, :cond_a

    .line 404
    goto :goto_8

    .line 405
    :cond_a
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 407
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->handlePowerSavingModeViaApi(Landroid/content/Context;Z)Z

    .line 410
    move-result p0

    .line 411
    if-eqz p0, :cond_d

    .line 413
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 415
    invoke-static {p0, v8, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 418
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 420
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 422
    or-int/2addr v1, v2

    .line 423
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 426
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 428
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 430
    const-string v0, "Enable low power mode"

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 435
    goto :goto_9

    .line 436
    :cond_b
    :goto_8
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 438
    invoke-static {p0, v8, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 441
    if-eqz v6, :cond_c

    .line 443
    const-string p0, ": limit app and home enabled. It will not enable PSM control by SleepPSM"

    .line 445
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    goto :goto_9

    .line 449
    :cond_c
    const-string p0, ": already PSM enabled. It will not enable PSM control by SleepPSM"

    .line 451
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_d
    :goto_9
    return-void

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
