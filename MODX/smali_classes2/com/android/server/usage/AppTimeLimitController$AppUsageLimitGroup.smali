.class public final Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v9, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move-wide/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v8, p10

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 15
    .line 16
    .line 17
    move-wide/from16 v0, p8

    .line 18
    .line 19
    iput-wide v0, v9, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getUsageRemaining()J
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mActives:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mTimeLimitMs:J

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget-wide v5, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mLastKnownUsageTimeMs:J

    .line 17
    .line 18
    sub-long/2addr v3, v5

    .line 19
    :goto_0
    sub-long/2addr v1, v3

    .line 20
    return-wide v1

    .line 21
    :cond_0
    iget-wide v3, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mUsageTimeMs:J

    .line 22
    .line 23
    goto :goto_0
.end method

.method public final remove()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
