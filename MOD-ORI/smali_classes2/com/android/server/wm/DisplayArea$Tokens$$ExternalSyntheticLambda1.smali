.class public final synthetic Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayArea$Tokens;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayArea$Tokens$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayArea$Tokens;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 46
    .line 47
    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 63
    .line 64
    const/16 v4, 0x9

    .line 65
    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    move p0, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move p0, v1

    .line 91
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    :cond_3
    move v1, v3

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 102
    .line 103
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 104
    .line 105
    const/4 p1, -0x1

    .line 106
    if-eq p0, p1, :cond_5

    .line 107
    .line 108
    const/4 p1, 0x3

    .line 109
    if-eq p0, p1, :cond_5

    .line 110
    .line 111
    const/4 p1, -0x2

    .line 112
    if-ne p0, p1, :cond_3

    .line 113
    .line 114
    :cond_5
    :goto_1
    return v1
.end method
