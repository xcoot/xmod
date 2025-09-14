.class public Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociatedTokens:Ljava/util/ArrayList;

.field public final mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public mIsTransforming:Z

.field public final mRotatedOverrideConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public disassociate(Lcom/android/server/wm/WindowToken;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resetTransform()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

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
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput-object v2, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 46
    .line 47
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-void
.end method

.method public transform(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    return-void
.end method
