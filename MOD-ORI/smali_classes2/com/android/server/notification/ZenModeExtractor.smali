.class public Lcom/android/server/notification/ZenModeExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z


# instance fields
.field public mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ZenModeExtractor"

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
    sput-boolean v0, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

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
    sget-boolean p1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

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
    const-string p1, "ZenModeExtractor"

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
    .locals 5

    .line 1
    const-string v0, "ZenModeExtractor"

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    .line 4
    .line 5
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "skipping empty notification"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v3

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 24
    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const-string/jumbo p0, "skipping - no zen info available"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_2
    return-object v3

    .line 36
    :cond_3
    iget-object v0, v2, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, v2, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 40
    .line 41
    iget v4, v2, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 44
    .line 45
    invoke-virtual {v1, v4, v2, p1}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iput-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mInterceptSet:Z

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 66
    .line 67
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 p0, 0x0

    .line 71
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 72
    .line 73
    :goto_0
    return-object v3

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 2
    .line 3
    return-void
.end method
