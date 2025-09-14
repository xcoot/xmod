.class public abstract Lcom/android/server/wm/PolicyControl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field public static sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

.field public static sSettingValue:Ljava/lang/String;


# direct methods
.method public static canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public static dump(Ljava/lang/String;Lcom/android/server/wm/PolicyControl$Filter;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "PolicyControl."

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x3d

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(C)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string/jumbo p0, "null"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public static isKeyguardShowingAndNotOccluded(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 8
    .line 9
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    return v0
.end method

.method public static setFilters(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 3
    .line 4
    sput-object v0, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v0, ":"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    array-length v0, p0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    if-ge v2, v0, :cond_5

    .line 19
    .line 20
    aget-object v3, p0, v2

    .line 21
    .line 22
    const/16 v4, 0x3d

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, -0x1

    .line 29
    if-ne v4, v5, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "immersive.full"

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 55
    .line 56
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string v4, "immersive.status"

    .line 60
    .line 61
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-string v4, "immersive.navigation"

    .line 75
    .line 76
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/server/wm/PolicyControl$Filter;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 87
    .line 88
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return-void
.end method

.method public static shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->isKeyguardShowingAndNotOccluded(Lcom/android/server/wm/DisplayContent;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/16 v3, 0x7f8

    .line 21
    .line 22
    if-eq v1, v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    .line 38
    if-ne v1, v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    :cond_2
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    return v2

    .line 56
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 61
    .line 62
    invoke-virtual {v1, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_4

    .line 67
    .line 68
    move v0, v2

    .line 69
    :cond_4
    :goto_1
    return v0
.end method

.method public static shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->isKeyguardShowingAndNotOccluded(Lcom/android/server/wm/DisplayContent;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    .line 19
    const/16 v2, 0x7f8

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v1, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    move v1, v3

    .line 44
    :goto_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_SYSTEMUI_VISIBILITY:Z

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/server/wm/FlexPanelController;->isFlexPanelTopEnabled(Lcom/android/server/wm/WindowState;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    return v3

    .line 57
    :cond_3
    if-nez v1, :cond_4

    .line 58
    .line 59
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    return v3

    .line 70
    :cond_4
    sget-object v1, Lcom/android/server/wm/PolicyControl;->sImmersiveStatusFilter:Lcom/android/server/wm/PolicyControl$Filter;

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Lcom/android/server/wm/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_5

    .line 81
    .line 82
    move v0, v3

    .line 83
    :cond_5
    :goto_2
    return v0
.end method
