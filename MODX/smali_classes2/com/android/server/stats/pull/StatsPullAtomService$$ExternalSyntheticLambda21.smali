.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;->f$0:Landroid/util/SparseArray;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;->f$0:Landroid/util/SparseArray;

    .line 2
    .line 3
    check-cast p2, [J

    .line 4
    .line 5
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const p1, 0xea5f

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [J

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    array-length v0, p2

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    :goto_1
    array-length p1, p2

    .line 44
    if-ge p0, p1, :cond_3

    .line 45
    .line 46
    aget-wide v1, v0, p0

    .line 47
    .line 48
    aget-wide v3, p2, p0

    .line 49
    .line 50
    add-long/2addr v1, v3

    .line 51
    aput-wide v1, v0, p0

    .line 52
    .line 53
    add-int/lit8 p0, p0, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_2
    return-void
.end method
