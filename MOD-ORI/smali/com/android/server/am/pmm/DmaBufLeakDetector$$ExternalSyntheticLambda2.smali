.class public final synthetic Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    .line 2
    .line 3
    iget p0, p1, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    .line 4
    .line 5
    neg-int p0, p0

    .line 6
    return p0
.end method
