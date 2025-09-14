.class public final Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mMaxPeriodMs:J

.field public final synthetic this$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/util/LongArrayQueue;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->peekFirst()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    iget-wide v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->mMaxPeriodMs:J

    .line 27
    .line 28
    sub-long/2addr v2, v4

    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-gtz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method
