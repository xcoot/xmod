.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/wm/Task;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aget v2, v0, v1

    .line 18
    .line 19
    iget-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    .line 20
    .line 21
    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 22
    .line 23
    aput v4, v3, v2

    .line 24
    .line 25
    iget-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskNames:[Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, p1, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v4, "unknown"

    .line 60
    .line 61
    .line 62
    :goto_0
    aput-object v4, v3, v2

    .line 63
    .line 64
    iget-object v3, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskBounds:[Landroid/graphics/Rect;

    .line 65
    .line 66
    iget-object v4, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 67
    .line 68
    iget v6, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 69
    .line 70
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskBounds(I)Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    aput-object v4, v3, v2

    .line 75
    .line 76
    iget-object p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskUserIds:[I

    .line 77
    .line 78
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 79
    .line 80
    aput p1, p0, v2

    .line 81
    .line 82
    add-int/2addr v2, v5

    .line 83
    aput v2, v0, v1

    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/android/server/wm/RootWindowContainer;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Landroid/util/SparseIntArray;

    .line 93
    .line 94
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 108
    .line 109
    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 114
    .line 115
    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 116
    .line 117
    invoke-virtual {p0, p1, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
