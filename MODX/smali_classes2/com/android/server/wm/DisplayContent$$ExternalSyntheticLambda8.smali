.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$3:I

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$0:Z

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$1:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$1:I

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$3:I

    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$0:Z

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v3, :cond_7

    .line 24
    .line 25
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget v1, v3, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 57
    .line 58
    :cond_3
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-ne v3, v5, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 76
    .line 77
    if-nez v3, :cond_5

    .line 78
    .line 79
    if-eqz p0, :cond_7

    .line 80
    .line 81
    :cond_5
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 82
    .line 83
    if-eqz v3, :cond_6

    .line 84
    .line 85
    iget-boolean v5, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 86
    .line 87
    if-nez v5, :cond_6

    .line 88
    .line 89
    iput-boolean v4, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 90
    .line 91
    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 94
    .line 95
    .line 96
    :cond_6
    new-instance v3, Lcom/android/server/wm/SeamlessRotator;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const/4 v6, 0x0

    .line 103
    invoke-direct {v3, v1, v2, v5, v6}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    .line 104
    .line 105
    .line 106
    iput-object v3, p1, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 107
    .line 108
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 109
    .line 110
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 111
    .line 112
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 113
    .line 114
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 120
    .line 121
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 129
    .line 130
    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSeamlessRotationFinishedConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-virtual {p1, v6, v0}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_0
    if-nez p0, :cond_9

    .line 139
    .line 140
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 141
    .line 142
    if-eqz p0, :cond_9

    .line 143
    .line 144
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 145
    .line 146
    aget-boolean p0, p0, v4

    .line 147
    .line 148
    if-eqz p0, :cond_8

    .line 149
    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 155
    .line 156
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    const/4 v9, 0x0

    .line 161
    const-wide v6, 0x248808af12003682L

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    const/4 v8, 0x0

    .line 167
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_8
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 171
    .line 172
    .line 173
    :cond_9
    return-void

    .line 174
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$0:Z

    .line 175
    .line 176
    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$1:I

    .line 177
    .line 178
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v2, Ljava/util/List;

    .line 181
    .line 182
    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;->f$3:I

    .line 183
    .line 184
    check-cast p1, Lcom/android/server/wm/Task;

    .line 185
    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-ne p0, v1, :cond_b

    .line 193
    .line 194
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_a
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_b

    .line 203
    .line 204
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_b
    :goto_1
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
