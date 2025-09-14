.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-wide v2, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    .line 24
    .line 25
    invoke-static {p1, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    .line 31
    .line 32
    .line 33
    iput-boolean v4, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 34
    .line 35
    :cond_1
    if-nez p0, :cond_2

    .line 36
    .line 37
    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    const/16 p0, 0x13

    .line 42
    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(ILcom/android/server/am/ProcessRecord;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    iput-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method
