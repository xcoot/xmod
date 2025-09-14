.class public final Lcom/android/server/chimera/ChimeraDataInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActionCntSrc:[I

.field public final mAdjKillCnt:[I

.field public final mGroupKillCnt:[I

.field public mKillCnt:I

.field public mLruWeight:F

.field public mMemWeight:F

.field public mStdBktWeight:F

.field public final mTriggerCntSrc:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v0, v0

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v0, v0

    .line 18
    new-array v0, v0, [I

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 21
    .line 22
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 23
    .line 24
    const/16 v0, 0xd

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [I

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 34
    .line 35
    return-void
.end method

.method public static getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 14
    .line 15
    aget v4, v4, v2

    .line 16
    .line 17
    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    .line 18
    .line 19
    aget v5, v5, v2

    .line 20
    .line 21
    sub-int/2addr v4, v5

    .line 22
    aput v4, v3, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v1

    .line 28
    :goto_1
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 29
    .line 30
    array-length v4, v3

    .line 31
    if-ge v2, v4, :cond_1

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 34
    .line 35
    aget v4, v4, v2

    .line 36
    .line 37
    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    .line 38
    .line 39
    aget v5, v5, v2

    .line 40
    .line 41
    sub-int/2addr v4, v5

    .line 42
    aput v4, v3, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v2, v1

    .line 48
    :goto_2
    iget-object v3, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 49
    .line 50
    array-length v4, v3

    .line 51
    if-ge v2, v4, :cond_2

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 54
    .line 55
    aget v4, v4, v2

    .line 56
    .line 57
    iget-object v5, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    .line 58
    .line 59
    aget v5, v5, v2

    .line 60
    .line 61
    sub-int/2addr v4, v5

    .line 62
    aput v4, v3, v2

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_3
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 68
    .line 69
    array-length v3, v2

    .line 70
    if-ge v1, v3, :cond_3

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 73
    .line 74
    aget v3, v3, v1

    .line 75
    .line 76
    iget-object v4, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    .line 77
    .line 78
    aget v4, v4, v1

    .line 79
    .line 80
    sub-int/2addr v3, v4

    .line 81
    aput v3, v2, v1

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 90
    .line 91
    iget p1, p1, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 92
    .line 93
    sub-int/2addr v1, p1

    .line 94
    iput v1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    .line 95
    .line 96
    iget p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 97
    .line 98
    iput p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    .line 99
    .line 100
    iget p1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 101
    .line 102
    iput p1, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 105
    .line 106
    iput p0, v0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    .line 107
    .line 108
    return-object v0
.end method
