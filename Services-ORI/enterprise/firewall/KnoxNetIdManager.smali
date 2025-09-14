.class public final Lcom/android/server/enterprise/firewall/KnoxNetIdManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastNetId:I

.field public final mMinNetId:I

.field public final mNetIdInUse:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x9c40

    .line 1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    const v0, 0xfbfe

    .line 4
    iput v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    .line 5
    iput p1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mMinNetId:I

    return-void
.end method


# virtual methods
.method public final releaseNetId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final reserveNetId()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    const v3, 0xfbfe

    .line 9
    .line 10
    .line 11
    move v4, v3

    .line 12
    :goto_0
    iget v5, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mMinNetId:I

    .line 13
    .line 14
    if-lt v4, v5, :cond_2

    .line 15
    .line 16
    if-le v1, v5, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v1, v3

    .line 22
    :goto_1
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    iput v1, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mNetIdInUse:Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 34
    .line 35
    .line 36
    iget p0, p0, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->mLastNetId:I

    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v1, "No free netIds"

    .line 48
    .line 49
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
