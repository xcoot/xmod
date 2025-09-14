.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z

.field static final HANG_TIME_MS:J = 0x2710L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "IntrusivenessExtractor"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string p2, "Initializing  "

    .line 8
    .line 9
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, "."

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "IntrusivenessExtractor"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 7

    .line 1
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    sget-boolean p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "IntrusivenessExtractor"

    .line 15
    .line 16
    const-string/jumbo p1, "skipping empty notification"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iget-wide v3, p1, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 28
    .line 29
    sub-long/2addr v1, v3

    .line 30
    long-to-int p0, v1

    .line 31
    int-to-long v1, p0

    .line 32
    const-wide/16 v3, 0x2710

    .line 33
    .line 34
    cmp-long p0, v1, v3

    .line 35
    .line 36
    if-gez p0, :cond_4

    .line 37
    .line 38
    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    if-lt p0, v1, :cond_4

    .line 42
    .line 43
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 49
    .line 50
    if-eq p0, v2, :cond_2

    .line 51
    .line 52
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    iput-wide v5, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 59
    .line 60
    :cond_2
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    iput-wide v5, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 71
    .line 72
    :cond_3
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 79
    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    iput-wide v1, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 89
    .line 90
    :cond_4
    iget-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 91
    .line 92
    if-nez p0, :cond_5

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5
    new-instance p0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/notification/RankingReconsideration;-><init>(JLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-object p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method
