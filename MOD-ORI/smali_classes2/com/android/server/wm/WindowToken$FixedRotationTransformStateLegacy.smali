.class public final Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;
.super Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRotatedContainers:Ljava/util/ArrayList;

.field public final mRotator:Lcom/android/server/wm/SeamlessRotator;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;-><init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 p3, 0x3

    .line 7
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance p2, Lcom/android/server/wm/SeamlessRotator;

    .line 13
    .line 14
    iget p3, p1, Landroid/view/DisplayInfo;->rotation:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p2, p3, p4, p1, v0}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final disassociate(Lcom/android/server/wm/WindowToken;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->disassociate(Lcom/android/server/wm/WindowToken;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final resetTransform()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final transform(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 6
    .line 7
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;->mRotatedContainers:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
