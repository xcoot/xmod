.class Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mCapturedLeash:Landroid/view/SurfaceControl;

.field public mFinishOverlay:Landroid/view/SurfaceControl;

.field public mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public final mIsRecentTaskInvisible:Z

.field public mLastAnimationType:I

.field public final mLocalBounds:Landroid/graphics/Rect;

.field public mSnapshotOverlay:Landroid/view/SurfaceControl;

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 21
    .line 22
    iput-boolean p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Landroid/graphics/Point;

    .line 35
    .line 36
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 40
    .line 41
    .line 42
    iget p1, p0, Landroid/graphics/Point;->x:I

    .line 43
    .line 44
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 45
    .line 46
    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {v2, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v6, v4

    .line 35
    :goto_0
    if-nez v6, :cond_2

    .line 36
    .line 37
    return-object v4

    .line 38
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v7, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {v4, v7, v8, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    iget-object v4, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v13, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 63
    .line 64
    .line 65
    const/4 v4, -0x1

    .line 66
    move/from16 v6, p2

    .line 67
    .line 68
    if-eq v6, v4, :cond_3

    .line 69
    .line 70
    move v9, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v6, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 77
    .line 78
    iget v6, v6, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 79
    .line 80
    if-ne v4, v6, :cond_4

    .line 81
    .line 82
    move v9, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    move v9, v5

    .line 85
    :goto_1
    if-gez p1, :cond_5

    .line 86
    .line 87
    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 88
    .line 89
    move v8, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move/from16 v8, p1

    .line 92
    .line 93
    :goto_2
    new-instance v3, Landroid/view/RemoteAnimationTarget;

    .line 94
    .line 95
    iget-object v10, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 96
    .line 97
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    xor-int/lit8 v11, v4, 0x1

    .line 102
    .line 103
    new-instance v4, Landroid/graphics/Rect;

    .line 104
    .line 105
    move-object v12, v4

    .line 106
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    new-instance v4, Landroid/graphics/Point;

    .line 114
    .line 115
    move-object v15, v4

    .line 116
    iget-object v6, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 117
    .line 118
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 119
    .line 120
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 121
    .line 122
    invoke-direct {v4, v7, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 126
    .line 127
    move-object/from16 v16, v4

    .line 128
    .line 129
    iget-object v4, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 130
    .line 131
    move-object/from16 v17, v4

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 134
    .line 135
    .line 136
    move-result-object v18

    .line 137
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v22

    .line 141
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    .line 142
    .line 143
    .line 144
    move-result v23

    .line 145
    const/16 v20, 0x0

    .line 146
    .line 147
    const/16 v21, 0x0

    .line 148
    .line 149
    iget-boolean v2, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 150
    .line 151
    move/from16 v19, v2

    .line 152
    .line 153
    move-object v7, v3

    .line 154
    invoke-direct/range {v7 .. v23}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 155
    .line 156
    .line 157
    iput-object v3, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 158
    .line 159
    invoke-virtual {v1, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 166
    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    invoke-virtual {v1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_6

    .line 174
    .line 175
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 176
    .line 177
    invoke-virtual {v1, v5}, Landroid/view/RemoteAnimationTarget;->setWillShowImeOnTarget(Z)V

    .line 178
    .line 179
    .line 180
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 181
    .line 182
    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "task="

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "Target:"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "  "

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v0, p1, p2}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p2, "Target: null"

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "mIsRecentTaskInvisible="

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mIsRecentTaskInvisible:Z

    .line 71
    .line 72
    const-string/jumbo v2, "mLocalBounds="

    .line 73
    .line 74
    .line 75
    invoke-static {p2, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "mFinishTransaction="

    .line 94
    .line 95
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mFinishTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 99
    .line 100
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "mBounds="

    .line 113
    .line 114
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mBounds:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    .line 1
    const-wide v0, 0x10b00000002L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-wide v2, 0x10b00000001L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSnapshotOverlay()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatusBarTransitionsStartTime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const-string/jumbo v1, "taskAnimationAdapterCanceled"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 7
    .line 8
    int-to-float v0, v0

    .line 9
    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLocalBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 35
    .line 36
    iput p3, p0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLastAnimationType:I

    .line 37
    .line 38
    return-void
.end method
