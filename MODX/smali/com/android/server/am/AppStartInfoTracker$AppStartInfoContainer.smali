.class public final Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInfos:Ljava/util/ArrayList;

.field public final mMaxCapacity:I

.field public mMonitoringModeEnabled:Z

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 16
    iput p2, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    .line 18
    return-void
.end method

.method public static calculateAverage(Ljava/util/List;)J
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer$$ExternalSyntheticLambda2;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->average()Ljava/util/OptionalDouble;

    .line 17
    move-result-object p0

    .line 18
    const-wide/16 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/util/OptionalDouble;->orElse(D)D

    .line 23
    move-result-wide v0

    .line 24
    double-to-long v0, v0

    .line 25
    return-wide v0
.end method


# virtual methods
.method public final addTimestampToStartLocked(IJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/app/ApplicationStartInfo;

    .line 19
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Landroid/app/ApplicationStartInfo;->getStartupTimestamps()Ljava/util/Map;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x4

    .line 32
    const/4 v4, 0x2

    .line 33
    if-ne v1, v4, :cond_4

    .line 35
    const/4 v1, 0x5

    .line 36
    if-eq p1, v1, :cond_4

    .line 38
    const/4 v1, 0x6

    .line 39
    if-eq p1, v1, :cond_2

    .line 41
    const/4 v1, 0x7

    .line 42
    if-eq p1, v1, :cond_4

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Long;

    .line 55
    if-nez v1, :cond_3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 61
    move-result-wide v5

    .line 62
    cmp-long v1, p2, v5

    .line 64
    if-lez v1, :cond_4

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_5

    .line 77
    :goto_0
    return-void

    .line 78
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 81
    if-ne p1, v3, :cond_6

    .line 83
    invoke-static {}, Landroid/app/Flags;->appStartInfoTimestamps()Z

    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_6

    .line 89
    invoke-virtual {v0, v4}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 92
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V

    .line 97
    :cond_6
    return-void
.end method
