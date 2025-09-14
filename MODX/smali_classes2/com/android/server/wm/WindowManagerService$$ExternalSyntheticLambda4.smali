.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;->f$0:Z

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
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda4;->f$0:Z

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    iget-object p0, p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 40
    .line 41
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    .line 48
    .line 49
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 55
    .line 56
    const/high16 v2, 0x1600000

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 64
    .line 65
    if-nez v1, :cond_5

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v8, p1, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 78
    .line 79
    and-int/2addr v8, v2

    .line 80
    if-ne v8, v2, :cond_1

    .line 81
    .line 82
    move v2, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v2, v3

    .line 85
    :goto_0
    iget-object v8, p1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    if-nez p0, :cond_3

    .line 91
    .line 92
    iget-wide v9, v8, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 93
    .line 94
    sub-long v9, v6, v9

    .line 95
    .line 96
    iget-wide v11, v8, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 97
    .line 98
    cmp-long v9, v9, v11

    .line 99
    .line 100
    if-gez v9, :cond_3

    .line 101
    .line 102
    iget-object p0, v8, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 103
    .line 104
    if-nez p0, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v0, v3

    .line 108
    :goto_1
    move v3, v0

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    if-eqz p0, :cond_4

    .line 111
    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    iput-wide v6, v8, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    iput-wide v4, v8, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicTime:J

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    iget-object v1, p1, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget v8, p1, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 133
    .line 134
    and-int/2addr v8, v2

    .line 135
    if-ne v8, v2, :cond_6

    .line 136
    .line 137
    move v2, v0

    .line 138
    goto :goto_2

    .line 139
    :cond_6
    move v2, v3

    .line 140
    :goto_2
    if-nez p0, :cond_7

    .line 141
    .line 142
    iget-wide v8, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    .line 143
    .line 144
    sub-long v8, v6, v8

    .line 145
    .line 146
    iget-wide v10, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    .line 147
    .line 148
    cmp-long v8, v8, v10

    .line 149
    .line 150
    if-gez v8, :cond_7

    .line 151
    .line 152
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 153
    .line 154
    xor-int/lit8 v3, p0, 0x1

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    if-eqz p0, :cond_8

    .line 158
    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    if-nez v2, :cond_8

    .line 162
    .line 163
    iput-wide v6, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iput-wide v4, p1, Lcom/android/server/wm/DisplayPolicy;->mPanicTime:J

    .line 167
    .line 168
    :goto_3
    if-eqz v3, :cond_9

    .line 169
    .line 170
    iget-object p0, p1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    :cond_9
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
