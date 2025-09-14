.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:I

.field public final synthetic f$2:[I

.field public final synthetic f$3:[J

.field public final synthetic f$4:[D


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;I[I[J[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$0:Landroid/util/SparseArray;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$2:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$3:[J

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$4:[D

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$0:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$2:[I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$3:[J

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;->f$4:[D

    .line 10
    .line 11
    check-cast p2, [J

    .line 12
    .line 13
    sget v4, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 14
    .line 15
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    const p1, 0xea5f

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, [D

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x3

    .line 45
    .line 46
    new-array v4, v1, [D

    .line 47
    .line 48
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_1
    array-length v0, p2

    .line 53
    if-ge p1, v0, :cond_3

    .line 54
    .line 55
    aget v0, v2, p1

    .line 56
    .line 57
    aget-wide v5, p2, p1

    .line 58
    .line 59
    mul-int/lit8 v0, v0, 0x3

    .line 60
    .line 61
    aget-wide v7, v4, v0

    .line 62
    .line 63
    aget-wide v9, v3, p1

    .line 64
    .line 65
    mul-long/2addr v9, v5

    .line 66
    long-to-double v9, v9

    .line 67
    add-double/2addr v7, v9

    .line 68
    aput-wide v7, v4, v0

    .line 69
    .line 70
    add-int/lit8 v1, v0, 0x1

    .line 71
    .line 72
    aget-wide v7, v4, v1

    .line 73
    .line 74
    long-to-double v5, v5

    .line 75
    add-double/2addr v7, v5

    .line 76
    aput-wide v7, v4, v1

    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x2

    .line 79
    .line 80
    aget-wide v7, v4, v0

    .line 81
    .line 82
    aget-wide v9, p0, p1

    .line 83
    .line 84
    mul-double/2addr v9, v5

    .line 85
    add-double/2addr v9, v7

    .line 86
    aput-wide v9, v4, v0

    .line 87
    .line 88
    add-int/lit8 p1, p1, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    return-void
.end method
