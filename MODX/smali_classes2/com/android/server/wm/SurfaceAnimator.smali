.class public Lcom/android/server/wm/SurfaceAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

.field public mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field public mAnimationCancelledCallback:Ljava/lang/Runnable;

.field public mAnimationFinished:Z

.field public mAnimationStartDelayed:Z

.field public mAnimationType:I

.field final mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mLeash:Landroid/view/SurfaceControl;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field final mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 16
    .line 17
    return-void
.end method

.method public static animationTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_a

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_8

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_7

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_6

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p0, v0, :cond_5

    .line 23
    .line 24
    const/16 v0, 0x40

    .line 25
    .line 26
    if-eq p0, v0, :cond_4

    .line 27
    .line 28
    const/16 v0, 0x80

    .line 29
    .line 30
    if-eq p0, v0, :cond_3

    .line 31
    .line 32
    const/16 v0, 0x100

    .line 33
    .line 34
    if-eq p0, v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x200

    .line 37
    .line 38
    if-eq p0, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const-string/jumbo p0, "remote_wallpaper"

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    :goto_0
    const-string/jumbo v0, "unknown type:"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_2
    const-string/jumbo p0, "predict_back"

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_3
    const-string/jumbo p0, "starting_reveal"

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_4
    const-string/jumbo p0, "token_transform"

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_5
    const-string p0, "insets_animation"

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_6
    const-string/jumbo p0, "window_animation"

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_7
    const-string/jumbo p0, "recents_animation"

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_8
    const-string p0, "dimmer"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_9
    const-string/jumbo p0, "screen_rotation"

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_a
    const-string p0, "app_transition"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_b
    const-string/jumbo p0, "none"

    .line 91
    .line 92
    .line 93
    return-object p0
.end method

.method public static createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZ)Landroid/view/SurfaceControl;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Reparenting to leash, surface="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", syncState="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncState()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", syncCommitDepth="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransactionCommitCallbackDepth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", leashParent="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ""

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "WindowManager"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, " - animation-leash of "

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-static {p3}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p8}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string p3, "SurfaceAnimator.createAnimationLeash"

    .line 110
    .line 111
    invoke-virtual {p0, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string/jumbo v0, "makeSurface duration="

    .line 126
    .line 127
    .line 128
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    sub-long/2addr v4, v2

    .line 136
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, " leash="

    .line 140
    .line 141
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p0, p4, p5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    int-to-float p3, p6

    .line 158
    int-to-float p4, p7

    .line 159
    invoke-virtual {p2, p0, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 163
    .line 164
    .line 165
    if-eqz p8, :cond_0

    .line 166
    .line 167
    const/4 p3, 0x0

    .line 168
    goto :goto_0

    .line 169
    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 170
    .line 171
    :goto_0
    invoke-virtual {p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 175
    .line 176
    .line 177
    return-object p0
.end method

.method public static removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    :cond_0
    move v2, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v4

    .line 28
    :goto_0
    if-eqz v2, :cond_2

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v6, "Reparenting to original parent: "

    .line 33
    .line 34
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v6, ", destroy="

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v6, ", syncState="

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncState()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, ", syncCommitDepth="

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransactionCommitCallbackDepth()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v6, ", surface="

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, ""

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "WindowManager"

    .line 90
    .line 91
    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 109
    .line 110
    .line 111
    move v4, v3

    .line 112
    :cond_2
    if-eqz p3, :cond_3

    .line 113
    .line 114
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 115
    .line 116
    .line 117
    move v4, v3

    .line 118
    :cond_3
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-interface {p1, p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    move v3, v4

    .line 125
    :goto_1
    return v3
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    return-void
.end method

.method public final cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "Cancelling animation restarting="

    const-string v1, ", leash="

    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide v2, -0x4a87df5aea48cd64L    # -4.030448831919004E-51

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 10
    iget v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 11
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 12
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 13
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v6, 0x0

    .line 14
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    if-eqz v1, :cond_4

    .line 15
    iget-boolean v7, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-nez v7, :cond_2

    if-eqz p3, :cond_2

    .line 16
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    if-eqz v4, :cond_2

    .line 17
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-nez p2, :cond_4

    .line 18
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mStaticAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz v4, :cond_3

    .line 19
    invoke-interface {v4, v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 20
    invoke-interface {v3, v2, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    :cond_4
    if-eqz p3, :cond_6

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {v5, p1, v6}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    :cond_5
    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_6
    if-nez p2, :cond_7

    .line 24
    iput-boolean v6, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    :cond_7
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-wide v1, 0x10b00000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-wide v0, 0x10800000002L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final endDelayingAnimationStart()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final hasLeash()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isAnimating()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final reset(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iput v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    xor-int/lit8 v5, p2, 0x1

    .line 27
    .line 28
    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iput-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    const/16 v2, 0x80

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    const-string v0, "RemoveStartingRevealAnim"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->addLowDebugName(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 48
    .line 49
    invoke-static {p1, v0, v4, p2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    move-object/from16 v12, p7

    .line 8
    .line 9
    move-object/from16 v13, p8

    .line 10
    .line 11
    const/4 v14, 0x1

    .line 12
    invoke-virtual {v0, v10, v14, v14}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 18
    .line 19
    iput v11, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 20
    .line 21
    move-object/from16 v1, p5

    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 24
    .line 25
    move-object/from16 v1, p6

    .line 26
    .line 27
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v15, "WindowManager"

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    const-string v1, "Unable to start animation, surface is null or no children."

    .line 40
    .line 41
    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const/4 v9, 0x0

    .line 49
    if-eqz v13, :cond_1

    .line 50
    .line 51
    iget-object v1, v13, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    iput-object v9, v13, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object v1, v9

    .line 57
    :goto_0
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    const/16 v1, 0x80

    .line 62
    .line 63
    if-ne v11, v1, :cond_2

    .line 64
    .line 65
    const-string v1, "CreateStartingRevealAnim"

    .line 66
    .line 67
    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Transaction;->addLowDebugName(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 71
    .line 72
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceWidth()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 77
    .line 78
    invoke-interface {v3}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceHeight()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    move-object/from16 v3, p1

    .line 89
    .line 90
    move/from16 v4, p4

    .line 91
    .line 92
    move-object v14, v9

    .line 93
    move/from16 v9, p3

    .line 94
    .line 95
    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZ)Landroid/view/SurfaceControl;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 100
    .line 101
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 102
    .line 103
    invoke-interface {v2, v10, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move-object v14, v9

    .line 108
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 109
    .line 110
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 111
    .line 112
    invoke-interface {v1, v10, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onLeashAnimationStarting(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 113
    .line 114
    .line 115
    iget-boolean v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 116
    .line 117
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 118
    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    aget-boolean v1, v2, v1

    .line 123
    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 133
    .line 134
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-wide v2, -0xb63887f5e39c06aL    # -5.217652075012315E253

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    move-object/from16 p0, v1

    .line 146
    .line 147
    move-wide/from16 p1, v2

    .line 148
    .line 149
    move/from16 p3, v4

    .line 150
    .line 151
    move-object/from16 p4, v5

    .line 152
    .line 153
    move-object/from16 p5, v0

    .line 154
    .line 155
    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    return-void

    .line 159
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 160
    .line 161
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 162
    .line 163
    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 164
    .line 165
    invoke-interface {v1, v3, v10, v11, v4}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 166
    .line 167
    .line 168
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 169
    .line 170
    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 171
    .line 172
    invoke-static {v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    const/4 v4, 0x0

    .line 177
    if-eqz v3, :cond_6

    .line 178
    .line 179
    new-instance v3, Ljava/io/StringWriter;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v5, Ljava/io/PrintWriter;

    .line 185
    .line 186
    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 187
    .line 188
    .line 189
    iget-object v6, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 190
    .line 191
    const-string v7, ""

    .line 192
    .line 193
    invoke-interface {v6, v5, v7}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    aget-boolean v2, v2, v4

    .line 197
    .line 198
    if-eqz v2, :cond_6

    .line 199
    .line 200
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 201
    .line 202
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v21

    .line 214
    const-wide v17, 0x130944365b1d3a0bL    # 5.726080343765894E-217

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    const/16 v19, 0x0

    .line 220
    .line 221
    const/16 v20, 0x0

    .line 222
    .line 223
    move-object/from16 v16, v1

    .line 224
    .line 225
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    if-eqz v12, :cond_9

    .line 229
    .line 230
    iget-object v1, v13, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 231
    .line 232
    iput-object v14, v13, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 233
    .line 234
    iput-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 235
    .line 236
    if-nez v1, :cond_7

    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v2, "No snapshot target to start animation on for "

    .line 241
    .line 242
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 246
    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_7
    const/4 v0, 0x1

    .line 259
    invoke-virtual {v1, v10, v0}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 260
    .line 261
    .line 262
    iput-object v12, v1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 263
    .line 264
    iget-object v0, v1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 265
    .line 266
    if-nez v0, :cond_8

    .line 267
    .line 268
    invoke-virtual {v1, v10, v4}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_8
    new-instance v1, Lcom/android/server/wm/SurfaceFreezer$Snapshot$$ExternalSyntheticLambda0;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-interface {v12, v0, v10, v11, v1}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 278
    .line 279
    .line 280
    :cond_9
    :goto_2
    return-void
.end method
