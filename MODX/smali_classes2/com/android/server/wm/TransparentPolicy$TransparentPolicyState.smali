.class public final Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

.field public mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mInheritedAppCompatState:I

.field public mInheritedMaxAspectRatio:F

.field public mInheritedMinAspectRatio:F

.field public mInheritedOrientation:I

.field public mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;


# direct methods
.method public static -$$Nest$mreset(Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/android/server/wm/WindowContainerListener;->onRemoved()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 16
    .line 17
    iput v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 18
    .line 19
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy;->mDestroyListeners:Ljava/util/List;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 38
    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 9
    .line 10
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final inheritFromOpaque(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v1, v1, v2

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMinAspectRatio:F

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    cmpl-float v0, v0, v2

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedMaxAspectRatio:F

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedOrientation:I

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatState:I

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 50
    .line 51
    return-void
.end method

.method public final isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mLetterboxConfigListener:Lcom/android/server/wm/WindowContainerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method
