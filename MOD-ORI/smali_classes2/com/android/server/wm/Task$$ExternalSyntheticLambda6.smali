.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTickRunnable:Lcom/android/server/wm/ActivityRecord$1;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->forceExecuteDrawHandlers(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    if-eq v0, p0, :cond_1

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/wm/AnimatingActivityRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/wm/AnimatingActivityRegistry;->mAnimatingActivities:Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/server/wm/AnimatingActivityRegistry;->endDeferringFinished()V

    .line 68
    .line 69
    .line 70
    :cond_1
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    const-string/jumbo p0, "parent_changed"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/Task;

    .line 83
    .line 84
    iget-boolean p0, p1, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    .line 85
    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
