.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallCount:Ljava/util/Map;

.field public mMaxCallsPerInterval:I

.field public final mMonotonicClock:Ljava/util/function/LongSupplier;

.field public mResetIntervalMs:J


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 17
    .line 18
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Ljava/util/function/LongSupplier;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    iput-wide v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 24
    .line 25
    check-cast v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 31
    .line 32
    check-cast p0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 39
    .line 40
    return-object p0
.end method

.method public final tryApiCall(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMonotonicClock:Ljava/util/function/LongSupplier;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 12
    .line 13
    sub-long v2, v0, v2

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 16
    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    iput v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 23
    .line 24
    iput-wide v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 25
    .line 26
    :cond_0
    iget v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 29
    .line 30
    if-ge v0, p0, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    add-int/2addr v0, p0

    .line 34
    iput v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 35
    .line 36
    return p0

    .line 37
    :cond_1
    return v3
.end method
