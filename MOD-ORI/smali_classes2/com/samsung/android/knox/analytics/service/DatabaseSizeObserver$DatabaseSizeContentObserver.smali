.class public final Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getDatabaseSize(Landroid/content/Context;)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    sget-object v0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v2, "onChange(): currentSize = "

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 33
    .line 34
    iget-boolean v2, v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    iget-wide v1, v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbAlertSizeInBytes:J

    .line 39
    .line 40
    cmp-long v1, p1, v1

    .line 41
    .line 42
    if-lez v1, :cond_0

    .line 43
    .line 44
    const-string/jumbo v1, "onChange(): alert triggered"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/samsung/android/knox/analytics/util/UploaderBroadcaster;->broadcastDbSizeWarning(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    iput-boolean v2, v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    .line 61
    .line 62
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 63
    .line 64
    iget-wide v1, v1, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mDbMaxSizeInBytes:J

    .line 65
    .line 66
    cmp-long p1, p1, v1

    .line 67
    .line 68
    if-ltz p1, :cond_1

    .line 69
    .line 70
    const-string/jumbo p1, "onChange(): full triggered"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver$DatabaseSizeContentObserver;->this$0:Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->mHasAlertedUploader:Z

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseSizeObserver;->startCompression()V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method
