.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FreeformController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FreeformController;

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
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/FreeformController;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_9

    .line 24
    .line 25
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    if-eqz v0, :cond_9

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_9

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_9

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 60
    .line 61
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 62
    .line 63
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 64
    .line 65
    const/high16 v3, 0x4000000

    .line 66
    .line 67
    and-int/2addr v3, v1

    .line 68
    const/4 v4, 0x1

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const-string v5, "com.samsung.android.app.smartcapture"

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iput-boolean v4, p0, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 84
    .line 85
    :cond_2
    and-int/lit16 v0, v2, 0x200

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iput-boolean v4, p0, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 90
    .line 91
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    and-int/lit16 v2, v2, 0x100

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    if-eqz v0, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    if-eqz v3, :cond_7

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mRequestFreeformForceHiding:Z

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 116
    .line 117
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 118
    .line 119
    if-nez v0, :cond_9

    .line 120
    .line 121
    const/high16 v0, 0x2000000

    .line 122
    .line 123
    and-int/2addr v0, v1

    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 127
    .line 128
    :cond_9
    :goto_2
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->releaseForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
