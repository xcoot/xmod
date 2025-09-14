.class public final synthetic Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationAttentionHelper;

.field public final synthetic f$1:Lcom/android/server/notification/NotificationRecord;

.field public final synthetic f$2:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/NotificationRecord;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/VibrationEffect;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/NotificationRecord;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/VibrationEffect;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sget-boolean v3, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 22
    .line 23
    const-string v4, "NotifAttentionHelper"

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v6, "Delaying vibration for notification "

    .line 30
    .line 31
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v6, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 35
    .line 36
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v6, " by "

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v6, "ms"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    int-to-long v5, v2

    .line 65
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    .line 75
    .line 76
    invoke-virtual {v5, v2}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v5, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrateNotificationKey:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    if-eqz v3, :cond_3

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "No vibration for notification "

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v0, ": a new notification is vibrating, or effects were cleared while waiting"

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v0, "No vibration for canceled notification "

    .line 135
    .line 136
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :cond_3
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/notification/NotificationRecord;

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/os/VibrationEffect;

    .line 161
    .line 162
    iget-object v2, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 163
    .line 164
    const/4 v3, 0x3

    .line 165
    iget-object v4, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 166
    .line 167
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    sget-boolean v3, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 172
    .line 173
    const-string v4, "NotifAttentionHelper"

    .line 174
    .line 175
    if-eqz v3, :cond_4

    .line 176
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v5, "Delaying vibration by "

    .line 180
    .line 181
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string/jumbo v5, "ms"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_4
    int-to-long v2, v2

    .line 201
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    .line 203
    .line 204
    :catch_1
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 205
    .line 206
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-object v3, v0, Lcom/android/server/notification/NotificationAttentionHelper;->mNMP:Lcom/android/server/notification/NotificationManagerService$3;

    .line 211
    .line 212
    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService$3;->getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    if-eqz v2, :cond_5

    .line 217
    .line 218
    const/4 v2, 0x1

    .line 219
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/notification/NotificationAttentionHelper;->vibrate(Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;Z)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v0, "No vibration for canceled notification : "

    .line 226
    .line 227
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    :goto_1
    return-void

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
