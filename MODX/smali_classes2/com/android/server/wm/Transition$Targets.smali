.class public final Lcom/android/server/wm/Transition$Targets;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mArray:Landroid/util/SparseArray;

.field public mDepthFactor:I

.field public mRemovedTargets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    iput v0, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/wm/Transition$Targets;->mDepthFactor:I

    .line 36
    .line 37
    add-int/2addr v0, v2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
