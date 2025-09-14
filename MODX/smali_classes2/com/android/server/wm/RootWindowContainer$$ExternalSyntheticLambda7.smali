.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :try_start_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1, p0}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    return-void

    .line 45
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget v0, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpTaskLayerRank:I

    .line 69
    .line 70
    iput v1, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v1, -0x1

    .line 74
    iput v1, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 75
    .line 76
    :goto_0
    iget v1, p1, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 77
    .line 78
    if-eq v1, v0, :cond_3

    .line 79
    .line 80
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/RootWindowContainer;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
