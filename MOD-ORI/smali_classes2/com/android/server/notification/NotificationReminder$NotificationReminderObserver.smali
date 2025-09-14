.class public final Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

.field public final REMINDER_TYPE:Landroid/net/Uri;

.field public final TIME_KEY:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "notification_reminder_selectable"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "notification_reminder_type"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    .line 23
    .line 24
    const-string/jumbo p1, "notification_reminder_app_list"

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    .line 32
    .line 33
    const-string/jumbo p1, "notification_reminder_vibrate"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    .line 41
    .line 42
    const-string/jumbo p1, "time_key"

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final update(Landroid/net/Uri;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "update uri: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "NotificationReminder"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, -0x2

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    .line 35
    .line 36
    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 43
    .line 44
    const-string/jumbo v6, "notification_reminder_selectable"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    move v6, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v6, v3

    .line 56
    :goto_0
    iput-boolean v6, v5, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v6, "update mEnableReminder: "

    .line 61
    .line 62
    .line 63
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 67
    .line 68
    iget-boolean v6, v6, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    .line 69
    .line 70
    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 71
    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 74
    .line 75
    iget-boolean v6, v5, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    iget-object v6, v5, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 88
    .line 89
    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 97
    .line 98
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    .line 99
    .line 100
    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 107
    .line 108
    const-string/jumbo v6, "notification_reminder_vibrate"

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_5

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move v2, v3

    .line 119
    :goto_2
    iput-boolean v2, v5, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string/jumbo v3, "update mEnableVibrate: "

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 130
    .line 131
    iget-boolean v3, v3, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    .line 132
    .line 133
    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 134
    .line 135
    .line 136
    :cond_6
    if-eqz p1, :cond_7

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    .line 139
    .line 140
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    :cond_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 147
    .line 148
    const-string/jumbo v3, "time_key"

    .line 149
    .line 150
    .line 151
    const/16 v5, 0xb4

    .line 152
    .line 153
    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    iput v3, v2, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string/jumbo v3, "update mInterval: "

    .line 162
    .line 163
    .line 164
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 168
    .line 169
    iget v3, v3, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 170
    .line 171
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    if-eqz p1, :cond_8

    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 177
    .line 178
    iget-object v2, v2, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    .line 179
    .line 180
    new-instance v3, Lcom/android/server/notification/NotificationReminder$1$1;

    .line 181
    .line 182
    const/4 v5, 0x1

    .line 183
    invoke-direct {v3, v5, p0}, Lcom/android/server/notification/NotificationReminder$1$1;-><init>(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    :cond_8
    if-eqz p1, :cond_9

    .line 190
    .line 191
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    .line 192
    .line 193
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_a

    .line 198
    .line 199
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 200
    .line 201
    const-string/jumbo v3, "notification_reminder_type"

    .line 202
    .line 203
    .line 204
    const/4 v5, -0x1

    .line 205
    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    iput v3, v2, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string/jumbo v3, "update mReminderType: "

    .line 214
    .line 215
    .line 216
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 220
    .line 221
    iget v3, v3, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    .line 222
    .line 223
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_a
    if-eqz p1, :cond_b

    .line 227
    .line 228
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    .line 229
    .line 230
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_c

    .line 235
    .line 236
    :cond_b
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 237
    .line 238
    const-string/jumbo v2, "notification_reminder_app_list"

    .line 239
    .line 240
    .line 241
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p1, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string/jumbo v0, "update mAppSettingList: "

    .line 250
    .line 251
    .line 252
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 256
    .line 257
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {p1, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_c
    return-void
.end method
