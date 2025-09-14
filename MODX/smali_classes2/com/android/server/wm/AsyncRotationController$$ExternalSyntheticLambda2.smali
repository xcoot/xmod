.class public final synthetic Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AsyncRotationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AsyncRotationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AsyncRotationController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 27
    .line 28
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1}, Lcom/android/server/wm/AsyncRotationController$Operation;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
