.class public final Lcom/android/server/wm/PossibleDisplayInfoMapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayInfos:Landroid/util/SparseArray;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getPossibleDisplayInfos(I)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getPossibleDisplayInfo(I)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/DisplayInfo;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 29
    .line 30
    iget v3, v1, Landroid/view/DisplayInfo;->displayId:I

    .line 31
    .line 32
    new-instance v4, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 47
    .line 48
    iget v1, v1, Landroid/view/DisplayInfo;->displayId:I

    .line 49
    .line 50
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/PossibleDisplayInfoMapper;->mDisplayInfos:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/util/Collection;

    .line 75
    .line 76
    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
