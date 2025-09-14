.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/FreeformController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/FreeformController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-boolean v3, v2, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v2, 0x1

    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput-object p0, v0, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    :goto_0
    move v4, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mTmpRect:Landroid/graphics/Rect;

    .line 39
    .line 40
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 60
    .line 61
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 62
    .line 63
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 64
    .line 65
    move-object v6, v3

    .line 66
    invoke-virtual/range {v5 .. v10}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-lt v1, v5, :cond_3

    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-lt v1, p0, :cond_3

    .line 102
    .line 103
    :cond_2
    iput-object p1, v0, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    :goto_1
    return v4
.end method
