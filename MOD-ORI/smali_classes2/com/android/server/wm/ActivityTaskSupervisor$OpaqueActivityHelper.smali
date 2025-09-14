.class public final Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mIgnoreFloatingWindow:Z

.field public mIgnoringKeyguard:Z

.field public mIncludeInvisibleAndFinishing:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoringKeyguard:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    :cond_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIgnoreFloatingWindow:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueActivityHelper;->mIncludeInvisibleAndFinishing:Z

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_3
    :goto_0
    return v1
.end method
