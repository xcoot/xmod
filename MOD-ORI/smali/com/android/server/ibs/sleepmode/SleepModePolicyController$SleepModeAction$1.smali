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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final cancelAction()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "SleepModePolicyController"

    .line 7
    .line 8
    const-string v1, "CameraFlashNotification cancelAction"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 14
    .line 15
    const-string/jumbo v1, "pref_sleep_mode_camera_flash_notification_key"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v2, "camera_flash_notification"

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 42
    .line 43
    const-string v2, "Enable camera flash notification"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    const-string v0, "SleepModePolicyController"

    .line 56
    .line 57
    const-string v1, "Notification cancelAction"

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 63
    .line 64
    const-string/jumbo v1, "pref_sleep_mode_notification_key"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x0

    .line 72
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string/jumbo v0, "edge_lighting_show_condition"

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    .line 87
    .line 88
    iget-object p0, v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 91
    .line 92
    const-string v0, "Set edge lighting condition to be always"

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object p0, v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_1
    const-string v0, "SleepModePolicyController"

    .line 104
    .line 105
    const-string v1, "MasterSync cancelAction"

    .line 106
    .line 107
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 111
    .line 112
    const-string/jumbo v1, "pref_sleep_mode_master_sync_key"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 130
    .line 131
    const-string v2, "Enable master sync"

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_2
    const-string v0, "SleepModePolicyController"

    .line 144
    .line 145
    const-string v1, "Nearby cancelAction"

    .line 146
    .line 147
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 151
    .line 152
    const-string/jumbo v1, "pref_sleep_mode_nearby_key"

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const-string/jumbo v2, "nearby_scanning_enabled"

    .line 168
    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 179
    .line 180
    const-string v2, "Enable nearby"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 186
    .line 187
    const/4 v0, 0x0

    .line 188
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_3
    const-string v0, "SleepModePolicyController"

    .line 193
    .line 194
    const-string v1, "BlueTooth cancelAction"

    .line 195
    .line 196
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 200
    .line 201
    const-string/jumbo v1, "pref_sleep_mode_bt_key"

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_4

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    const-string/jumbo v2, "ble_scan_always_enabled"

    .line 217
    .line 218
    .line 219
    const/4 v3, 0x1

    .line 220
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 228
    .line 229
    const-string v2, "Enable BT scan"

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 235
    .line 236
    const/4 v0, 0x0

    .line 237
    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    return-void

    .line 241
    :pswitch_4
    const-string v0, "SleepModePolicyController"

    .line 242
    .line 243
    const-string v1, "PSM cancelAction"

    .line 244
    .line 245
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 249
    .line 250
    const-string/jumbo v1, "pref_sleep_mode_psm_key"

    .line 251
    .line 252
    .line 253
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const/4 v2, 0x0

    .line 258
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    .line 259
    .line 260
    if-eqz v0, :cond_5

    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    invoke-static {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->handlePowerSavingModeViaApi(Landroid/content/Context;Z)Z

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 270
    .line 271
    const-string v3, "Disable low power mode"

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :cond_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 279
    .line 280
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

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "SleepModePolicyController"

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v4, "CameraFlashNotification triggerAction"

    .line 13
    .line 14
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string/jumbo v4, "camera_flash_notification"

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ne v3, v1, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 42
    .line 43
    const-string/jumbo v2, "pref_sleep_mode_camera_flash_notification_key"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 50
    .line 51
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 52
    .line 53
    or-int/lit16 v1, v1, 0x80

    .line 54
    .line 55
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 61
    .line 62
    const-string v0, "Disable camera flash notification"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    const-string v4, "Notification triggerAction"

    .line 69
    .line 70
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const-string/jumbo v4, "edge_lighting_show_condition"

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const-string/jumbo v5, "pref_sleep_mode_notification_key"

    .line 87
    .line 88
    .line 89
    if-nez v3, :cond_1

    .line 90
    .line 91
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {p0, v5, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 106
    .line 107
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 108
    .line 109
    or-int/lit8 v1, v1, 0x40

    .line 110
    .line 111
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 112
    .line 113
    .line 114
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 117
    .line 118
    const-string v0, "Set edge lighting condition to be screen on"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {p0, v5, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    :goto_0
    return-void

    .line 130
    :pswitch_1
    const-string v4, "MasterSync triggerAction"

    .line 131
    .line 132
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    const-string/jumbo v4, "pref_sleep_mode_master_sync_key"

    .line 140
    .line 141
    .line 142
    if-eqz v3, :cond_2

    .line 143
    .line 144
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {p0, v4, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 150
    .line 151
    .line 152
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 153
    .line 154
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 155
    .line 156
    or-int/lit8 v1, v1, 0x20

    .line 157
    .line 158
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 159
    .line 160
    .line 161
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 164
    .line 165
    const-string v0, "Disable master sync"

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {p0, v4, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-void

    .line 177
    :pswitch_2
    const-string v4, "Nearby triggerAction"

    .line 178
    .line 179
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string/jumbo v4, "nearby_scanning_enabled"

    .line 189
    .line 190
    .line 191
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    const-string/jumbo v5, "pref_sleep_mode_nearby_key"

    .line 196
    .line 197
    .line 198
    if-ne v3, v1, :cond_3

    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 210
    .line 211
    invoke-static {p0, v5, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 215
    .line 216
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 217
    .line 218
    or-int/lit8 v1, v1, 0x10

    .line 219
    .line 220
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 221
    .line 222
    .line 223
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 226
    .line 227
    const-string v0, "Disable nearby"

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 234
    .line 235
    invoke-static {p0, v5, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 236
    .line 237
    .line 238
    :goto_2
    return-void

    .line 239
    :pswitch_3
    const-string v4, "BlueTooth triggerAction"

    .line 240
    .line 241
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 245
    .line 246
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    const-string/jumbo v4, "ble_scan_always_enabled"

    .line 251
    .line 252
    .line 253
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-ne v3, v1, :cond_4

    .line 258
    .line 259
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 260
    .line 261
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    .line 269
    .line 270
    const-string/jumbo v2, "pref_sleep_mode_bt_key"

    .line 271
    .line 272
    .line 273
    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 277
    .line 278
    iget v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 279
    .line 280
    or-int/lit8 v1, v1, 0x8

    .line 281
    .line 282
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 283
    .line 284
    .line 285
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 288
    .line 289
    const-string v0, "Disable BT scan"

    .line 290
    .line 291
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_4
    return-void

    .line 295
    :pswitch_4
    const-string p0, "PSM triggerAction"

    .line 296
    .line 297
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    sget-boolean v4, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    const-string/jumbo v4, "low_power"

    .line 309
    .line 310
    .line 311
    invoke-static {p0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    if-ne p0, v1, :cond_5

    .line 316
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

    .line 321
    .line 322
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    const-string/jumbo v5, "ultra_powersaving_mode"

    .line 327
    .line 328
    .line 329
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    if-ne v4, v1, :cond_6

    .line 334
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

    .line 339
    .line 340
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    const-string/jumbo v6, "emergency_mode"

    .line 345
    .line 346
    .line 347
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-ne v5, v1, :cond_7

    .line 352
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

    .line 357
    .line 358
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    const-string/jumbo v7, "sem_power_mode_limited_apps_and_home_screen"

    .line 363
    .line 364
    .line 365
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    if-ne v6, v1, :cond_8

    .line 370
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

    .line 375
    .line 376
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    const-string v8, "adaptive_power_saving_setting"

    .line 381
    .line 382
    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 383
    .line 384
    .line 385
    move-result v7

    .line 386
    if-ne v7, v1, :cond_9

    .line 387
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

    .line 392
    .line 393
    .line 394
    if-nez v6, :cond_b

    .line 395
    .line 396
    if-nez p0, :cond_b

    .line 397
    .line 398
    if-nez v4, :cond_b

    .line 399
    .line 400
    if-nez v5, :cond_b

    .line 401
    .line 402
    if-eqz v7, :cond_a

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_a
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->handlePowerSavingModeViaApi(Landroid/content/Context;Z)Z

    .line 408
    .line 409
    .line 410
    move-result p0

    .line 411
    if-eqz p0, :cond_d

    .line 412
    .line 413
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 414
    .line 415
    invoke-static {p0, v8, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 416
    .line 417
    .line 418
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 419
    .line 420
    iget v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    .line 421
    .line 422
    or-int/2addr v1, v2

    .line 423
    invoke-static {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 424
    .line 425
    .line 426
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 427
    .line 428
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    .line 429
    .line 430
    const-string v0, "Enable low power mode"

    .line 431
    .line 432
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_b
    :goto_8
    iget-object p0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 437
    .line 438
    invoke-static {p0, v8, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 439
    .line 440
    .line 441
    if-eqz v6, :cond_c

    .line 442
    .line 443
    const-string p0, ": limit app and home enabled. It will not enable PSM control by SleepPSM"

    .line 444
    .line 445
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_c
    const-string p0, ": already PSM enabled. It will not enable PSM control by SleepPSM"

    .line 450
    .line 451
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .line 453
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
