.class public final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFrozen:Z

.field public mGivenInsetsReady:Z

.field public mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeShowing:Z

.field public final mLastSource:Landroid/view/InsetsSource;

.field public mServerVisible:Z

.field public mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/view/InsetsSource;

    .line 5
    .line 6
    sget p2, Landroid/view/InsetsSource;->ID_IME:I

    .line 7
    .line 8
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-direct {p1, p2, p3}, Landroid/view/InsetsSource;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 19
    .line 20
    return-void
.end method

.method public static isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v0, p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget p1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget p0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 28
    .line 29
    if-le p1, p0, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method


# virtual methods
.method public final abortShowImePostLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 14
    .line 15
    const-wide v3, -0x5a9e73097f00c6dbL    # -1.265973829348816E-128

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const-wide/16 v2, 0x20

    .line 27
    .line 28
    const-string v0, "WMS.showImePostLayout"

    .line 29
    .line 30
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 42
    .line 43
    const/16 v2, 0x2b

    .line 44
    .line 45
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 52
    .line 53
    return-void
.end method

.method public final checkAndStartShowImePostLayout()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isScheduledAndReadyToShowIme()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 50
    .line 51
    invoke-interface {p0, v0}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 60
    .line 61
    const/16 v2, 0x12

    .line 62
    .line 63
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    aget-boolean v2, v0, v1

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 74
    .line 75
    const-wide v4, 0x7bd7c8ca64b73ae7L    # 3.6216538293360305E288

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    aget-boolean v3, v0, v3

    .line 90
    .line 91
    const-string v4, ""

    .line 92
    .line 93
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    move-object v3, v4

    .line 111
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 116
    .line 117
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    const-wide v6, -0x30fa6d27a7f9c766L    # -4.7646594931873096E72

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    const/4 v3, 0x1

    .line 132
    iput-boolean v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 133
    .line 134
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iget-object v6, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 139
    .line 140
    invoke-interface {v2, v5, v3, v6}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 141
    .line 142
    .line 143
    const-wide/16 v5, 0x20

    .line 144
    .line 145
    const-string v3, "WMS.showImePostLayout"

    .line 146
    .line 147
    invoke-static {v5, v6, v3, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 151
    .line 152
    if-eq v2, v1, :cond_7

    .line 153
    .line 154
    const/4 v2, 0x3

    .line 155
    aget-boolean v0, v0, v2

    .line 156
    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 166
    .line 167
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 180
    .line 181
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    const-wide v2, 0x6e04f3b6bf76355aL    # 9.467001755162909E221

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    const/4 v4, 0x0

    .line 191
    const/4 v5, 0x0

    .line 192
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 199
    .line 200
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p2, "  "

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "mImeShowing="

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo p2, "showImePostLayout pending for mImeRequester="

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo p0, "showImePostLayout not scheduled, mImeRequester=null"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10b00000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const-wide v0, 0x10b00000002L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v2, 0x7

    .line 34
    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-object p0
.end method

.method public final invokeOnImeRequestedChangedListener(Lcom/android/server/wm/WindowState;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOnImeRequestedChangedListener:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 12
    .line 13
    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/WindowState;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final isLeashReadyForDispatching()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v1

    .line 30
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    :cond_2
    return v1

    .line 46
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 47
    .line 48
    return p0
.end method

.method public isScheduledAndReadyToShowIme()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    return v1

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_12

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_11

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    return v1

    .line 49
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    return v1

    .line 54
    :cond_5
    const/4 v4, 0x2

    .line 55
    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eq v3, v4, :cond_6

    .line 60
    .line 61
    return v1

    .line 62
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 63
    .line 64
    iget-object v4, v4, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_7

    .line 71
    .line 72
    return v1

    .line 73
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 74
    .line 75
    if-ne v3, v4, :cond_8

    .line 76
    .line 77
    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 78
    .line 79
    if-eqz v3, :cond_8

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 82
    .line 83
    if-eqz v3, :cond_8

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    goto :goto_0

    .line 90
    :cond_8
    const/4 v3, 0x0

    .line 91
    :goto_0
    if-nez v3, :cond_9

    .line 92
    .line 93
    return v1

    .line 94
    :cond_9
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 95
    .line 96
    aget-boolean v3, v3, v1

    .line 97
    .line 98
    if-eqz v3, :cond_b

    .line 99
    .line 100
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 113
    .line 114
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    if-nez v4, :cond_a

    .line 119
    .line 120
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 124
    .line 125
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 138
    .line 139
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    const-wide v6, -0x5c027c1947a5c1abL    # -2.537980424092208E-135

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    const/4 v8, 0x0

    .line 149
    const/4 v9, 0x0

    .line 150
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 154
    .line 155
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_c

    .line 164
    .line 165
    if-ne v3, v2, :cond_c

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 169
    .line 170
    invoke-static {v3, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_10

    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 177
    .line 178
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 185
    .line 186
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 187
    .line 188
    if-eqz v4, :cond_d

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_d
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 192
    .line 193
    :goto_2
    if-ne v2, v4, :cond_e

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 199
    .line 200
    if-ne v2, v0, :cond_f

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 204
    .line 205
    if-ne p0, v2, :cond_11

    .line 206
    .line 207
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-eqz p0, :cond_10

    .line 212
    .line 213
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    if-nez p0, :cond_11

    .line 222
    .line 223
    :cond_10
    :goto_3
    const/4 v1, 0x1

    .line 224
    :cond_11
    :goto_4
    return v1

    .line 225
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 226
    .line 227
    const-string v0, "IME insets must be provided by a window."

    .line 228
    .line 229
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p0

    .line 233
    :cond_13
    :goto_5
    return v1
.end method

.method public final logIsScheduledAndReadyToShowIme(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v7, "showImePostLayout "

    .line 24
    .line 25
    .line 26
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "aborted"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string p1, "cancelled"

    .line 35
    .line 36
    :goto_1
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", isScheduledAndReadyToShowIme: "

    .line 40
    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isScheduledAndReadyToShowIme()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, ", mImeRequester: "

    .line 52
    .line 53
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 57
    .line 58
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", serverVisible: "

    .line 62
    .line 63
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 67
    .line 68
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ", frozen: "

    .line 72
    .line 73
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    .line 77
    .line 78
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ", mWindowContainer is: "

    .line 82
    .line 83
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 87
    .line 88
    const-string/jumbo v7, "null"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v8, "non-null"

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    move-object p1, v8

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move-object p1, v7

    .line 99
    :goto_2
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, ", windowState: "

    .line 103
    .line 104
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    const-string p1, ", isDrawn: "

    .line 113
    .line 114
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", mGivenInsetsPending: "

    .line 125
    .line 126
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 130
    .line 131
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_3
    const-string p1, ", dcTarget: "

    .line 135
    .line 136
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p1, ", controlTarget: "

    .line 143
    .line 144
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 151
    .line 152
    if-eqz p1, :cond_10

    .line 153
    .line 154
    if-eqz v4, :cond_10

    .line 155
    .line 156
    if-eqz v5, :cond_10

    .line 157
    .line 158
    const-string p1, "\ncontrolTarget == DisplayContent.controlTarget: "

    .line 159
    .line 160
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/4 p1, 0x2

    .line 164
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const/4 v0, 0x1

    .line 169
    if-ne v5, p1, :cond_4

    .line 170
    .line 171
    move p1, v0

    .line 172
    goto :goto_3

    .line 173
    :cond_4
    move p1, v3

    .line 174
    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, ", hasPendingControls: "

    .line 178
    .line 179
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 183
    .line 184
    iget-object p1, p1, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 185
    .line 186
    invoke-virtual {p1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 194
    .line 195
    if-ne v5, p1, :cond_5

    .line 196
    .line 197
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 198
    .line 199
    if-eqz p1, :cond_5

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 202
    .line 203
    if-eqz p1, :cond_5

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_5
    if-eqz v1, :cond_6

    .line 210
    .line 211
    move p1, v0

    .line 212
    goto :goto_4

    .line 213
    :cond_6
    move p1, v3

    .line 214
    :goto_4
    const-string v1, ", leash is: "

    .line 215
    .line 216
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    if-eqz p1, :cond_7

    .line 220
    .line 221
    move-object v1, v8

    .line 222
    goto :goto_5

    .line 223
    :cond_7
    move-object v1, v7

    .line 224
    :goto_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    if-nez p1, :cond_9

    .line 228
    .line 229
    const-string p1, ", control is: "

    .line 230
    .line 231
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    move-object v7, v8

    .line 239
    :cond_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string p1, ", mIsLeashReadyForDispatching: "

    .line 243
    .line 244
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 248
    .line 249
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    :cond_9
    const-string p1, ", isImeLayeringTarget: "

    .line 253
    .line 254
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 258
    .line 259
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_a

    .line 268
    .line 269
    if-ne p1, v4, :cond_a

    .line 270
    .line 271
    move p1, v0

    .line 272
    goto :goto_6

    .line 273
    :cond_a
    move p1, v3

    .line 274
    :goto_6
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string p1, ", isAboveImeLayeringTarget: "

    .line 278
    .line 279
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 283
    .line 284
    invoke-static {p1, v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string p1, ", isImeFallbackTarget: "

    .line 292
    .line 293
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 297
    .line 298
    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 299
    .line 300
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 305
    .line 306
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 307
    .line 308
    if-eqz v4, :cond_b

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_b
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 312
    .line 313
    :goto_7
    if-ne p1, v4, :cond_c

    .line 314
    .line 315
    move p1, v0

    .line 316
    goto :goto_8

    .line 317
    :cond_c
    move p1, v3

    .line 318
    :goto_8
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string p1, ", isImeInputTarget: "

    .line 322
    .line 323
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 327
    .line 328
    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 329
    .line 330
    if-ne p1, v1, :cond_d

    .line 331
    .line 332
    move p1, v0

    .line 333
    goto :goto_9

    .line 334
    :cond_d
    move p1, v3

    .line 335
    :goto_9
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string p1, ", sameAsImeControlTarget: "

    .line 339
    .line 340
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 344
    .line 345
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 346
    .line 347
    if-ne p0, p1, :cond_f

    .line 348
    .line 349
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    if-eqz p0, :cond_e

    .line 354
    .line 355
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-static {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    if-nez p0, :cond_f

    .line 364
    .line 365
    :cond_e
    move v3, v0

    .line 366
    :cond_f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    :cond_10
    const-string p0, "ImeInsetsSourceProvider"

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    return-void
.end method

.method public final onPostLayout()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final onSourceChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 24
    .line 25
    const/16 v1, 0x29

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 43
    .line 44
    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 59
    .line 60
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 61
    .line 62
    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onImeDrawnOnTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string p1, "TaskOrganizerController"

    .line 68
    .line 69
    const-string v0, "Exception sending onImeDrawnOnTask callback"

    .line 70
    .line 71
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public final reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    :cond_2
    if-eqz v0, :cond_4

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    const/16 v2, 0x40

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v2, 0x20

    .line 7
    .line 8
    const-string v0, "WMS.showImePostLayout"

    .line 9
    .line 10
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 22
    .line 23
    const/16 v3, 0x12

    .line 24
    .line 25
    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_1
    move v0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 37
    .line 38
    if-eq v0, p1, :cond_1

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 55
    .line 56
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    if-ne v0, v2, :cond_1

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 68
    .line 69
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    aget-boolean p1, p2, v1

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 78
    .line 79
    const-wide v1, -0xae9b1cc0d74cbe1L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkAndStartShowImePostLayout()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 101
    .line 102
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 113
    .line 114
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_5
    aget-boolean p1, p2, v1

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 133
    .line 134
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-nez p1, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 144
    .line 145
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 158
    .line 159
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const-wide v1, 0x24905cd2effc3fc2L

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    const/4 v3, 0x0

    .line 169
    const/4 v4, 0x0

    .line 170
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final setClientVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final setFrozen(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 11
    .line 12
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final setServerVisible(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    .line 8
    .line 9
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 46
    .line 47
    if-eqz p1, :cond_6

    .line 48
    .line 49
    iget p1, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    .line 50
    .line 51
    and-int/lit8 p1, p1, 0x70

    .line 52
    .line 53
    const/16 v5, 0x30

    .line 54
    .line 55
    if-eq p1, v5, :cond_6

    .line 56
    .line 57
    if-eqz v4, :cond_6

    .line 58
    .line 59
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    if-eqz v4, :cond_6

    .line 68
    .line 69
    iget-object v5, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 94
    .line 95
    invoke-static {v4}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_6

    .line 106
    .line 107
    iget-boolean v0, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    iget v5, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mControlTargetHeight:I

    .line 120
    .line 121
    if-ne v5, v4, :cond_3

    .line 122
    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    :cond_3
    iput v4, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mControlTargetHeight:I

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-lt v0, v4, :cond_5

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    :goto_1
    invoke-static {p1, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_5

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    move v1, v2

    .line 160
    :goto_2
    move v0, v1

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    move v0, v2

    .line 163
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 164
    .line 165
    iput v2, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mControlTargetHeight:I

    .line 166
    .line 167
    :cond_8
    iget-boolean p0, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    .line 168
    .line 169
    if-eq p0, v0, :cond_a

    .line 170
    .line 171
    iput-boolean v0, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    .line 172
    .line 173
    iget-object p0, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 174
    .line 175
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 176
    .line 177
    iget-object v0, v3, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_9

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 187
    .line 188
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    :cond_a
    :goto_4
    return-void
.end method

.method public final updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 15
    .line 16
    if-ne p1, v3, :cond_2

    .line 17
    .line 18
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-interface {p1, v3}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, v3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eq v0, p1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0, v3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/WindowState;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return v2

    .line 53
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-interface {p1, v3}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    const/4 v3, 0x1

    .line 81
    new-array v3, v3, [Z

    .line 82
    .line 83
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-interface {v4}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move-object v4, v5

    .line 94
    :goto_1
    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 95
    .line 96
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 97
    .line 98
    if-eq v6, v7, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    if-eqz v4, :cond_7

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_7

    .line 108
    .line 109
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    .line 110
    .line 111
    if-eqz v4, :cond_7

    .line 112
    .line 113
    :goto_2
    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;

    .line 114
    .line 115
    const/4 v6, 0x2

    .line 116
    invoke-direct {v4, v6, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    aget-boolean v2, v3, v2

    .line 123
    .line 124
    or-int/2addr v0, v2

    .line 125
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_a

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    goto :goto_3

    .line 144
    :cond_8
    iget-object p1, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 145
    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    :cond_9
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/WindowState;)V

    .line 153
    .line 154
    .line 155
    :cond_a
    return v0
.end method

.method public final updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/WindowState;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final updateSourceFrame(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
