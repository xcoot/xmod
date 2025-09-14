.class public abstract Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsInitialized:Z

.field public self:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract calculateReclaimed([J)J
.end method

.method public abstract calculateResident([J)J
.end method

.method public abstract getMeminfoRaw(I)[J
.end method

.method public abstract getReclaimableTasks()Ljava/util/ArrayList;
.end method

.method public abstract swapInImpl(I)I
.end method

.method public final swapOut(ILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v0, v3, v5

    .line 27
    .line 28
    const-wide/16 v7, 0x64

    .line 29
    .line 30
    if-gtz v0, :cond_0

    .line 31
    .line 32
    move-wide v1, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    mul-long/2addr v1, v7

    .line 35
    div-long/2addr v1, v3

    .line 36
    :goto_0
    cmp-long v0, v1, v5

    .line 37
    .line 38
    if-lez v0, :cond_1

    .line 39
    .line 40
    move-wide v5, v1

    .line 41
    :cond_1
    cmp-long v0, v5, v7

    .line 42
    .line 43
    if-gez v0, :cond_2

    .line 44
    .line 45
    move-wide v7, v5

    .line 46
    :cond_2
    long-to-int v0, v7

    .line 47
    const/4 v1, 0x1

    .line 48
    if-gt v0, v1, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->swapOutImpl(ILjava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public abstract swapOutImpl(ILjava/lang/String;)I
.end method
