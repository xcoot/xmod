.class public final Lcom/android/server/wm/Dimmer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

.field public mDimState:Lcom/android/server/wm/Dimmer$DimState;

.field public final mHost:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Dimmer;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    return-void
.end method


# virtual methods
.method public getDimLayer()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public final updateDims(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

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
    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    .line 18
    .line 19
    iget-object v5, v4, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 20
    .line 21
    iget-object v5, v5, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iget-object v6, v4, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 28
    .line 29
    iget-object v6, v6, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v6, "-"

    .line 39
    .line 40
    :goto_0
    iget-object v4, v4, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-boolean v7, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 49
    .line 50
    xor-int/2addr v2, v7

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    filled-new-array {v5, v6, v4, v2}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const v4, 0x9539

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    iget-boolean v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 84
    .line 85
    iget-object v4, v2, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 86
    .line 87
    iput-object v4, v2, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    iput v3, v2, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 90
    .line 91
    iput v1, v2, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Dimmer$DimState;->setReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 98
    .line 99
    return v1

    .line 100
    :cond_3
    invoke-static {}, Lcom/android/window/flags/Flags;->useTasksDimOnly()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget-object v4, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 105
    .line 106
    if-nez v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Dimmer$DimState;->adjustSurfaceLayout(Landroid/view/SurfaceControl$Transaction;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Dimmer$DimState;->adjustSurfaceLayout(Landroid/view/SurfaceControl$Transaction;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 133
    .line 134
    iget-boolean v5, v0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceLayoutAdjusted:Z

    .line 135
    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    iput-boolean v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceLayoutAdjusted:Z

    .line 139
    .line 140
    iget-object v5, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 141
    .line 142
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-nez v5, :cond_6

    .line 147
    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string/jumbo v6, "resetSurfaceLayoutIfNeeded: failed, "

    .line 151
    .line 152
    .line 153
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 157
    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v5, "WindowManagerDimmer"

    .line 166
    .line 167
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 172
    .line 173
    invoke-virtual {p1, v5, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 177
    .line 178
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 179
    .line 180
    .line 181
    :cond_7
    :goto_2
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 182
    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    :cond_8
    move v0, v3

    .line 186
    goto :goto_3

    .line 187
    :cond_9
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 198
    .line 199
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 200
    .line 201
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 202
    .line 203
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    int-to-float v0, v0

    .line 220
    :goto_3
    cmpl-float v1, v0, v3

    .line 221
    .line 222
    if-lez v1, :cond_a

    .line 223
    .line 224
    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 225
    .line 226
    iget-object v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 227
    .line 228
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 229
    .line 230
    .line 231
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 232
    .line 233
    iget-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    .line 234
    .line 235
    if-nez v0, :cond_b

    .line 236
    .line 237
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 238
    .line 239
    if-eqz v0, :cond_b

    .line 240
    .line 241
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 242
    .line 243
    if-eqz v0, :cond_b

    .line 244
    .line 245
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 246
    .line 247
    if-eqz v0, :cond_b

    .line 248
    .line 249
    iput-boolean v2, p0, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    .line 250
    .line 251
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Dimmer$DimState;->setReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 252
    .line 253
    .line 254
    return v2
.end method
