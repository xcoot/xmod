.class public final synthetic Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/DisplayFoldController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/DisplayFoldController;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    :goto_0
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x2

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 55
    .line 56
    iget v6, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 57
    .line 58
    iget-object v7, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 59
    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 61
    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 64
    .line 65
    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    sub-int/2addr v5, v6

    .line 72
    div-int/2addr v5, v3

    .line 73
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 74
    .line 75
    sub-int/2addr v5, v6

    .line 76
    iget-object v6, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 77
    .line 78
    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    sub-int/2addr v6, v7

    .line 85
    div-int/2addr v6, v3

    .line 86
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 87
    .line 88
    sub-int/2addr v6, v7

    .line 89
    iget-object v7, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 90
    .line 91
    iget v8, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 92
    .line 93
    invoke-virtual {v7, v8, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 94
    .line 95
    .line 96
    iget-object v7, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 97
    .line 98
    iget v8, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 112
    .line 113
    iget v7, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 114
    .line 115
    neg-int v5, v5

    .line 116
    neg-int v6, v6

    .line 117
    invoke-virtual {v1, v7, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 122
    .line 123
    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 124
    .line 125
    invoke-virtual {v1, v5, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 129
    .line 130
    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 131
    .line 132
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 136
    .line 137
    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 138
    .line 139
    invoke-virtual {v1, v5, v4, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 143
    .line 144
    iget v5, v1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 145
    .line 146
    if-eq v5, v2, :cond_5

    .line 147
    .line 148
    iget v5, v1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 149
    .line 150
    if-ne v5, v3, :cond_7

    .line 151
    .line 152
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->log()V

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    move v2, v3

    .line 158
    :cond_6
    iput v2, v1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 159
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v2

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, v1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 169
    .line 170
    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 175
    .line 176
    new-instance v3, Landroid/metrics/LogMaker;

    .line 177
    .line 178
    const/16 v5, 0x63a

    .line 179
    .line 180
    invoke-direct {v3, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 181
    .line 182
    .line 183
    const/4 v5, 0x4

    .line 184
    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    :goto_2
    if-ge v4, p1, :cond_8

    .line 208
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Landroid/view/IDisplayFoldListener;

    .line 216
    .line 217
    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 218
    .line 219
    invoke-interface {v1, v2, v0}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    :catch_0
    add-int/lit8 v4, v4, 0x1

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_8
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 228
    .line 229
    .line 230
    :goto_3
    return-void
.end method
