.class public final synthetic Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 3
    iget-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 12
    iget-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 14
    if-eqz p1, :cond_2

    .line 16
    iget-wide p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    .line 18
    iget-wide v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    .line 20
    cmp-long v3, p0, v3

    .line 22
    if-gez v3, :cond_0

    .line 24
    iput-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    .line 26
    :cond_0
    iget-wide v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    .line 28
    cmp-long v3, p0, v3

    .line 30
    if-lez v3, :cond_1

    .line 32
    iput-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    .line 34
    :cond_1
    sub-long/2addr v1, p0

    .line 35
    iget-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    .line 37
    add-long/2addr p0, v1

    .line 38
    iput-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    .line 40
    iget-object p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    .line 42
    iget p1, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 44
    add-int/lit8 v3, p1, 0x1

    .line 46
    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    .line 48
    aput-wide v1, p0, p1

    .line 50
    :cond_2
    return-void
.end method
