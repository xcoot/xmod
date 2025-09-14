.class public final synthetic Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;

    .line 3
    iget-wide p0, p1, Lcom/android/server/am/KillPolicyManager$MemoryDumpItem;->mDumpSize:J

    .line 5
    const-wide/16 v0, 0x400

    .line 7
    div-long/2addr p0, v0

    .line 8
    long-to-double p0, p0

    .line 9
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 11
    add-double/2addr p0, v0

    .line 12
    double-to-long p0, p0

    .line 13
    return-wide p0
.end method
