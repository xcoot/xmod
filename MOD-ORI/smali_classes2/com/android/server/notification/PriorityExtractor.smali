.class public Lcom/android/server/notification/PriorityExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
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
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/PriorityExtractor;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledForMode()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v2, 0x2

    .line 24
    if-eqz p0, :cond_5

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_7

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const-string v4, ":"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    array-length v4, v3

    .line 52
    if-ge v4, v2, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    aget-object v4, v3, v0

    .line 56
    .line 57
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    aget-object v3, v3, v4

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-ne v3, v4, :cond_2

    .line 83
    .line 84
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    move v0, v2

    .line 96
    :cond_6
    iput v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 97
    .line 98
    :cond_7
    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/PriorityExtractor;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    return-void
.end method
