.class public final Lcom/android/server/utils/quota/MultiRateLimiter$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCategorizer:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

.field public final mCategory:Lcom/android/server/utils/quota/Category;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

.field public final mQuotaTrackers:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 14
    .line 15
    sget-object p1, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategorizer:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    sget-object p1, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategory:Lcom/android/server/utils/quota/Category;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final addRateLimit(ILjava/time/Duration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategorizer:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v2, v3, v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v2, v1, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mCategory:Lcom/android/server/utils/quota/Category;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/utils/quota/MultiRateLimiter$Builder;->mQuotaTrackers:Ljava/util/List;

    .line 32
    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
