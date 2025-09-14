.class public final Lcom/android/server/display/notifications/DisplayNotificationManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnectedDisplayErrorHandlingEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

.field public mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    .line 15
    .line 16
    check-cast p3, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    .line 17
    .line 18
    iget-object p1, p3, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final createErrorNotification(II)Landroid/app/Notification;
    .locals 7

    .line 1
    const-string v0, "DisplayNotificationManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x10403ec

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const v4, 0x1010543

    .line 24
    .line 25
    .line 26
    filled-new-array {v4}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 31
    .line 32
    .line 33
    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :try_start_1
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    .line 36
    .line 37
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v4

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    :try_start_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception v3

    .line 52
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v3

    .line 57
    move v4, v1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    throw v4
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 60
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string/jumbo v6, "colorError attribute is not found: "

    .line 63
    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_2
    new-instance v3, Landroid/app/Notification$Builder;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v3, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-wide/16 v5, 0x0

    .line 100
    .line 101
    invoke-virtual {p0, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-wide/16 v5, 0x7530

    .line 106
    .line 107
    invoke-virtual {p0, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string/jumbo p1, "err"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0
.end method

.method public final onCableNotCapableDisplayPort()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "DisplayNotificationManager"

    .line 6
    .line 7
    const-string/jumbo v0, "onCableNotCapableDisplayPort: mConnectedDisplayErrorHandlingEnabled is false"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v0, 0xd

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    .line 19
    .line 20
    .line 21
    const v0, 0x10403eb

    .line 22
    .line 23
    .line 24
    const v1, 0x1080d05

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onDisplayPortLinkTrainingFailure()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "DisplayNotificationManager"

    .line 6
    .line 7
    const-string/jumbo v0, "onDisplayPortLinkTrainingFailure: mConnectedDisplayErrorHandlingEnabled is false"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v0, 0xc

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    .line 19
    .line 20
    .line 21
    const v0, 0x10403eb

    .line 22
    .line 23
    .line 24
    const v1, 0x1080d05

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onHotplugConnectionError()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "DisplayNotificationManager"

    .line 6
    .line 7
    const-string/jumbo v0, "onHotplugConnectionError: mConnectedDisplayErrorHandlingEnabled is false"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/16 v0, 0xb

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->logExternalDisplayError(I)V

    .line 19
    .line 20
    .line 21
    const v0, 0x10403eb

    .line 22
    .line 23
    .line 24
    const v1, 0x1080d05

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(II)Landroid/app/Notification;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final sendErrorNotification(Landroid/app/Notification;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    const-string v0, "DisplayNotificationManager"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "Can\'t sendErrorNotification: NotificationManager is null"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
