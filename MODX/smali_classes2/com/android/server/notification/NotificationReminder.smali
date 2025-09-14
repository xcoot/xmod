.class public final Lcom/android/server/notification/NotificationReminder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final notificationIntent:Landroid/content/Intent;


# instance fields
.field public final mActiveNotiList:Ljava/util/ArrayList;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAppSettingList:Ljava/lang/String;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public mEnableReminder:Z

.field public mEnableVibrate:Z

.field public final mHandler:Lcom/android/server/notification/NotificationReminder$2;

.field public mInterval:I

.field public final mNeedMigration:Z

.field public final mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mReminderIntent:Landroid/app/PendingIntent;

.field public final mReminderReceiver:Lcom/android/server/notification/NotificationReminder$1;

.field public mReminderType:I

.field public final mVibratorHelper:Lcom/android/server/notification/VibratorHelper;


# direct methods
.method public static -$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "NotificationReminder"

    .line 5
    .line 6
    const-string v1, "cancelAlarm"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "cancelAlarm - cancel Alarm"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static -$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "NotificationReminder"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "The active notification list is empty."

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 43
    .line 44
    and-int/lit16 v5, v4, 0x200

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    and-int/lit16 v4, v4, 0x1000

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string v3, "bubbleMetadata is null."

    .line 69
    .line 70
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_4
    move v3, v2

    .line 74
    :goto_1
    if-nez v3, :cond_1

    .line 75
    .line 76
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 85
    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 101
    .line 102
    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v6

    .line 105
    :try_start_0
    invoke-virtual {v5, v4, v3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    iget-boolean v3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    .line 112
    .line 113
    monitor-exit v6

    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    move v3, v2

    .line 119
    :goto_2
    if-eqz v3, :cond_1

    .line 120
    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p1, "Clearable checked item found: "

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x1

    .line 145
    goto :goto_4

    .line 146
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw p0

    .line 148
    :cond_6
    :goto_4
    return v2
.end method

.method public static -$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "NotificationReminder(com.android.settings)"

    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 13
    .line 14
    const-string v5, "NotificationReminder"

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    const-string/jumbo v0, "playVibration only"

    .line 23
    .line 24
    .line 25
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 29
    .line 30
    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 31
    .line 32
    invoke-virtual {v4, v0, v5, v3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x2

    .line 52
    if-ne v1, v2, :cond_5

    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    .line 56
    sget-object v12, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 57
    .line 58
    invoke-static {v12}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-lez v1, :cond_5

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_0
    move-object v7, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    :try_start_1
    iget-object v6, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    const-string/jumbo v8, "playSound"

    .line 102
    .line 103
    .line 104
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 108
    .line 109
    const/high16 v11, 0x3f800000    # 1.0f

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    move-object v10, v12

    .line 113
    invoke-interface/range {v6 .. v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    .line 114
    .line 115
    .line 116
    sget-object v13, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 117
    .line 118
    if-eqz v13, :cond_2

    .line 119
    .line 120
    const-string/jumbo v14, "playback"

    .line 121
    .line 122
    .line 123
    const-string v15, "com.android.settings"

    .line 124
    .line 125
    invoke-static {v12}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    .line 126
    .line 127
    .line 128
    move-result v16

    .line 129
    const-string v17, ""

    .line 130
    .line 131
    const-string/jumbo v18, "repeat_notification_alerts"

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v13 .. v18}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_1
    move-exception v0

    .line 139
    goto :goto_3

    .line 140
    :cond_2
    const-string v6, "SemAudioGoodCatchManager has not created"

    .line 141
    .line 142
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_3
    :goto_2
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    .line 146
    .line 147
    if-eqz v0, :cond_4

    .line 148
    .line 149
    const-string/jumbo v0, "playVibration"

    .line 150
    .line 151
    .line 152
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 156
    .line 157
    invoke-virtual {v4, v0, v12, v3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .line 159
    .line 160
    :catch_0
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_5
    :goto_4
    return-void
.end method

.method public static -$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    const-string v1, "NotificationReminder"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Reminder alarm is exist before calling setReminder Alarm."

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo v0, "setReminderAlarm"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget-object v2, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    .line 22
    .line 23
    const/high16 v3, 0x12000000

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 33
    .line 34
    const/16 v2, 0xb4

    .line 35
    .line 36
    if-ge v0, v2, :cond_1

    .line 37
    .line 38
    iput v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 47
    .line 48
    const/4 v3, -0x2

    .line 49
    const-string/jumbo v4, "time_key"

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 53
    .line 54
    .line 55
    const-string v0, "The interval is set to the wrong value, so it is reset to the default interval value.(180 sec)."

    .line 56
    .line 57
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const-wide/16 v1, 0x3e8

    .line 67
    .line 68
    const/4 v3, 0x2

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 72
    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    iget v6, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 78
    .line 79
    int-to-long v6, v6

    .line 80
    mul-long/2addr v6, v1

    .line 81
    add-long/2addr v6, v4

    .line 82
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 83
    .line 84
    invoke-virtual {v0, v3, v6, v7, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    iget v6, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 95
    .line 96
    int-to-long v6, v6

    .line 97
    mul-long/2addr v6, v1

    .line 98
    add-long/2addr v6, v4

    .line 99
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 100
    .line 101
    invoke-virtual {v0, v3, v6, v7, p0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.action.Notification_Reminder_Alarm"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/PreferencesHelper;Landroid/app/AlarmManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/notification/NotificationReminder$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationReminder$1;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v2, Lcom/android/server/notification/NotificationReminder$2;

    .line 22
    .line 23
    invoke-direct {v2, p0, p2}, Lcom/android/server/notification/NotificationReminder$2;-><init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 29
    .line 30
    const-string p2, "audio"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Landroid/media/AudioManager;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    .line 40
    new-instance p2, Lcom/android/server/notification/VibratorHelper;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 46
    .line 47
    iput-object p4, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 48
    .line 49
    new-instance p2, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    .line 50
    .line 51
    invoke-direct {p2, p0, v2}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$2;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    const-string/jumbo v3, "notification_reminder_selectable"

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    const-string/jumbo v3, "notification_reminder_type"

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    const-string/jumbo v3, "notification_reminder_app_list"

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    const-string/jumbo v3, "notification_reminder_vibrate"

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    const-string/jumbo v3, "time_key"

    .line 116
    .line 117
    .line 118
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    .line 124
    .line 125
    const/4 p4, 0x0

    .line 126
    invoke-virtual {p2, p4}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    .line 127
    .line 128
    .line 129
    new-instance p2, Landroid/content/IntentFilter;

    .line 130
    .line 131
    const-string p4, "com.samsung.action.Notification_Reminder_Alarm"

    .line 132
    .line 133
    invoke-direct {p2, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string p4, "android.intent.action.USER_SWITCHED"

    .line 137
    .line 138
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 p4, 0x2

    .line 142
    invoke-virtual {p1, v1, p2, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    iget p2, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    .line 146
    .line 147
    const/4 p4, 0x1

    .line 148
    if-eq p2, p4, :cond_0

    .line 149
    .line 150
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    invoke-virtual {p3, p2}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    .line 155
    .line 156
    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string/jumbo p2, "reminder_migration_finished"

    .line 162
    .line 163
    .line 164
    const/4 p3, -0x2

    .line 165
    invoke-static {p1, p2, v4, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_1

    .line 170
    .line 171
    move v4, p4

    .line 172
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    .line 173
    .line 174
    if-eqz v4, :cond_2

    .line 175
    .line 176
    new-instance p1, Lcom/android/server/notification/NotificationReminder$5;

    .line 177
    .line 178
    const/4 p2, 0x1

    .line 179
    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationReminder$5;-><init>(Lcom/android/server/notification/NotificationReminder;I)V

    .line 180
    .line 181
    .line 182
    const-wide/16 p2, 0x7530

    .line 183
    .line 184
    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    .line 186
    .line 187
    :cond_2
    return-void
.end method


# virtual methods
.method public final addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/notification/NotificationReminder$3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/notification/NotificationReminder$3;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "\n  NotificationReminder :"

    .line 8
    .line 9
    const-string v2, "      EnableReminder = "

    .line 10
    .line 11
    invoke-static {p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    .line 16
    .line 17
    const-string v3, "      Interval = "

    .line 18
    .line 19
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 24
    .line 25
    const-string v3, "      EnableVibrate = "

    .line 26
    .line 27
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    .line 32
    .line 33
    invoke-static {v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string v1, "      mActiveNotiList, size = "

    .line 42
    .line 43
    invoke-static {p1, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    if-lez v0, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v4, "      key : "

    .line 62
    .line 63
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string p0, "  "

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method
