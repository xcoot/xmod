.class public final synthetic Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda1;->f$0:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-ge v2, v1, :cond_1

    .line 38
    .line 39
    aget-object v3, v0, v2

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 69
    .line 70
    invoke-virtual {p1, v1, p0, v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method
