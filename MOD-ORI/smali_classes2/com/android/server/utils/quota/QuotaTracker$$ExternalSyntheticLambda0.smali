.class public final synthetic Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    check-cast p0, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/utils/quota/UptcMap;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_1
    iget-object p0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    new-array v1, v1, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 58
    .line 59
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    array-length v0, p0

    .line 61
    if-gtz v0, :cond_1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    aget-object p0, p0, v0

    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    throw p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    throw p0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
