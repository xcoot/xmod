.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentsAnimationController;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Landroid/util/SparseBooleanArray;Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$1:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$3:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$1:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/Task;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v4, 0x1

    .line 29
    xor-int/2addr v1, v4

    .line 30
    invoke-virtual {v0, p1, v1, v4, v2}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3, p0}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    aget-boolean p1, p1, v0

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const-wide v1, -0x128c916d8bd1cbdeL

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void
.end method
