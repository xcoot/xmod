.class public final synthetic Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p0, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 8
    invoke-direct {p0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 11
    iget-object v0, p1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 13
    array-length v1, v0

    .line 14
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v0, p1, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 22
    array-length v1, v0

    .line 23
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 25
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 30
    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 32
    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 34
    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 36
    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 38
    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 40
    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    .line 42
    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 44
    iget-object v0, p1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 46
    iget-wide v0, v0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 48
    invoke-virtual {p1}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    .line 51
    move-result-object v0

    .line 52
    const/16 v1, 0xd

    .line 54
    iget-object v2, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 56
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object p1, p1, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 61
    array-length v0, p1

    .line 62
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 64
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-object p0
.end method
