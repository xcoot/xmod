.class public final Lcom/android/server/utils/WatchedSparseBooleanArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mStorage:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 4
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>(Lcom/android/server/utils/WatchedSparseBooleanArray;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanArray;->mStorage:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
