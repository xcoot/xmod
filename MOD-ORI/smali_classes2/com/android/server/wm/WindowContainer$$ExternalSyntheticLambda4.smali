.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_8

    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    if-ne v1, v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 70
    .line 71
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 72
    .line 73
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway(I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 103
    .line 104
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 105
    .line 106
    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 107
    .line 108
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_8
    :goto_0
    return-void
.end method
