.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final ACTION_DISMISS:Ljava/lang/String; = "com.android.server.accessibility.magnification.action.DISMISS"

.field static final ACTION_TURN_ON_IN_SETTINGS:Ljava/lang/String; = "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

.field public static final MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;


# instance fields
.field public final mContentObserver:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

.field public final mContext:Landroid/content/Context;

.field public mNeedToShowNotification:Z

.field mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "accessibility_show_window_magnification_prompt"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v0, Landroid/app/NotificationManager;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/NotificationManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 15
    .line 16
    iput p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContentObserver:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "accessibility_show_window_magnification_prompt"

    .line 40
    .line 41
    invoke-static {p1, v0, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 p2, 0x1

    .line 46
    if-ne p1, p2, :cond_0

    .line 47
    .line 48
    move v3, p2

    .line 49
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    const/high16 v1, 0x4000000

    .line 19
    .line 20
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 15
    .line 16
    const/16 v1, 0x3ec

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContentObserver:Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onPromptSettingsValueChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accessibility_show_window_magnification_prompt"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    move v2, v1

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    .line 42
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    .line 44
    const/16 v0, 0x3ec

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final showNotificationIfNeeded()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const v2, 0x10410b3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x1080386

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const v4, 0x10410b4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const v5, 0x108038e

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 77
    .line 78
    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string/jumbo v2, "com.android.server.accessibility.magnification.action.DISMISS"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string/jumbo v4, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-array v3, v3, [Landroid/app/Notification$Action;

    .line 112
    .line 113
    new-instance v5, Landroid/app/Notification$Action$Builder;

    .line 114
    .line 115
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    const v7, 0x1040f4f

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const/4 v8, 0x0

    .line 129
    invoke-direct {v5, v8, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const/4 v6, 0x0

    .line 137
    aput-object v5, v3, v6

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 143
    .line 144
    const/16 v3, 0x3ec

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    .line 165
    invoke-static {v2, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    iget-object v6, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    .line 173
    const-string v8, "android.permission.MANAGE_ACCESSIBILITY"

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x2

    .line 177
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    :goto_0
    return-void
.end method
