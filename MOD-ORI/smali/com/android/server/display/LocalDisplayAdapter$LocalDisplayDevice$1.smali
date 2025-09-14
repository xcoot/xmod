.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field public final synthetic val$brightnessChanged:Z

.field public final synthetic val$brightnessState:F

.field public final synthetic val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public final synthetic val$displayStateListeners:Ljava/util/ArrayList;

.field public final synthetic val$displayType:I

.field public final synthetic val$oldState:I

.field public final synthetic val$physicalDisplayId:J

.field public final synthetic val$sdrBrightnessState:F

.field public final synthetic val$state:I

.field public final synthetic val$stateChanged:Z

.field public final synthetic val$stateOverride:I

.field public final synthetic val$stateOverrideChanged:Z

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;ZZILjava/util/ArrayList;IJZFFIILcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateChanged:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverrideChanged:Z

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverride:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    .line 17
    .line 18
    iput-boolean p9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    .line 19
    .line 20
    iput p10, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 21
    .line 22
    iput p11, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 23
    .line 24
    iput p12, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 25
    .line 26
    iput p13, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 27
    .line 28
    iput-object p14, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 29
    .line 30
    iput-object p15, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final applyColorMatrixBasedDimming(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    .line 13
    .line 14
    :goto_0
    const/high16 v2, 0x42b40000    # 90.0f

    .line 15
    .line 16
    invoke-static {v2, v1, v1, v0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    float-to-double v2, p1

    .line 21
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 22
    .line 23
    add-double/2addr v2, v4

    .line 24
    double-to-int p1, v2

    .line 25
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 28
    .line 29
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-ltz v0, :cond_1

    .line 33
    .line 34
    sub-int/2addr v0, p1

    .line 35
    int-to-float v0, v0

    .line 36
    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    cmpl-float v0, v0, v3

    .line 43
    .line 44
    if-gtz v0, :cond_1

    .line 45
    .line 46
    if-gt p1, v2, :cond_2

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 51
    .line 52
    iput p1, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 57
    .line 58
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    .line 59
    .line 60
    int-to-float v3, v3

    .line 61
    cmpl-float v1, v3, v1

    .line 62
    .line 63
    if-lez v1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v2, 0x0

    .line 67
    :goto_1
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 78
    .line 79
    iput-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 80
    .line 81
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mCdsi:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 86
    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->applyEvenDimmerColorChanges(IZ)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return-void
.end method

.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateChanged:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverrideChanged:Z

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverride:I

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_1
    sget-object v1, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iput-wide v2, v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 30
    .line 31
    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget v4, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 34
    .line 35
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 36
    .line 37
    if-eqz v8, :cond_3

    .line 38
    .line 39
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v3, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    iput-wide v9, v3, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    .line 56
    .line 57
    new-instance v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    move-object v2, v9

    .line 61
    move v5, v0

    .line 62
    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIII)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    iget-wide v4, v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerStartTime:J

    .line 73
    .line 74
    sub-long/2addr v2, v4

    .line 75
    long-to-int v2, v2

    .line 76
    iput v2, v1, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mListenerDuration:I

    .line 77
    .line 78
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverrideChanged:Z

    .line 79
    .line 80
    const/4 v2, 0x6

    .line 81
    const/4 v3, 0x4

    .line 82
    const/4 v4, 0x3

    .line 83
    const/4 v5, 0x2

    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverride:I

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    if-eq v1, v6, :cond_5

    .line 90
    .line 91
    if-eq v1, v5, :cond_5

    .line 92
    .line 93
    if-eq v1, v4, :cond_5

    .line 94
    .line 95
    if-eq v1, v3, :cond_5

    .line 96
    .line 97
    if-eq v1, v2, :cond_5

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 100
    .line 101
    iget v1, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 111
    .line 112
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget v7, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 115
    .line 116
    iget v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 117
    .line 118
    invoke-static {v1, v6, v7, v0, v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 119
    .line 120
    .line 121
    :cond_6
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverride:I

    .line 122
    .line 123
    if-eqz v1, :cond_9

    .line 124
    .line 125
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateChanged:Z

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string/jumbo v2, "display_state_override: "

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverride:I

    .line 138
    .line 139
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v2, " (id:"

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, " ) is overridden, pending current request. "

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 162
    .line 163
    iget v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 164
    .line 165
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v2, "LocalDisplayAdapter"

    .line 177
    .line 178
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverrideChanged:Z

    .line 182
    .line 183
    if-nez v1, :cond_7

    .line 184
    .line 185
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 186
    .line 187
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    .line 188
    .line 189
    iget v3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 190
    .line 191
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 192
    .line 193
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 194
    .line 195
    .line 196
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    .line 197
    .line 198
    if-eqz v0, :cond_8

    .line 199
    .line 200
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 201
    .line 202
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 203
    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 208
    .line 209
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 210
    .line 211
    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 212
    .line 213
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 214
    .line 215
    iput p0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 216
    .line 217
    :cond_8
    return-void

    .line 218
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverrideChanged:Z

    .line 219
    .line 220
    if-eqz v1, :cond_b

    .line 221
    .line 222
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    .line 223
    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 227
    .line 228
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 229
    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 234
    .line 235
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 236
    .line 237
    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 238
    .line 239
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 240
    .line 241
    iput p0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 242
    .line 243
    :cond_a
    return-void

    .line 244
    :cond_b
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 245
    .line 246
    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    if-nez v6, :cond_c

    .line 251
    .line 252
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 253
    .line 254
    if-nez v6, :cond_10

    .line 255
    .line 256
    :cond_c
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 257
    .line 258
    invoke-static {v6}, Landroid/view/Display;->isSuspendedState(I)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-nez v6, :cond_d

    .line 263
    .line 264
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 265
    .line 266
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 267
    .line 268
    .line 269
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 270
    .line 271
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 272
    .line 273
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    .line 274
    .line 275
    iget v3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 276
    .line 277
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 278
    .line 279
    invoke-static {v1, v2, v3, v0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 280
    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_d
    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 284
    .line 285
    if-eq v6, v3, :cond_12

    .line 286
    .line 287
    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 288
    .line 289
    if-ne v7, v3, :cond_e

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_e
    if-eq v6, v2, :cond_11

    .line 293
    .line 294
    if-ne v7, v2, :cond_f

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_f
    if-eqz v7, :cond_10

    .line 298
    .line 299
    return-void

    .line 300
    :cond_10
    move v4, v1

    .line 301
    goto :goto_4

    .line 302
    :cond_11
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 303
    .line 304
    .line 305
    move v4, v5

    .line 306
    goto :goto_4

    .line 307
    :cond_12
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 308
    .line 309
    .line 310
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    .line 311
    .line 312
    if-eqz v1, :cond_13

    .line 313
    .line 314
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 315
    .line 316
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 317
    .line 318
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 322
    .line 323
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    .line 324
    .line 325
    iput v2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 326
    .line 327
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    .line 328
    .line 329
    iput v2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 330
    .line 331
    :cond_13
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 332
    .line 333
    if-eq v1, v4, :cond_14

    .line 334
    .line 335
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 339
    .line 340
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    .line 341
    .line 342
    iget v3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 343
    .line 344
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 345
    .line 346
    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 347
    .line 348
    .line 349
    :cond_14
    return-void
.end method

.method public final setDisplayBrightness(FF)V
    .locals 12

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v1, "setDisplayBrightness(id="

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", brightnessState="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", sdrBrightnessState="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ")"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-wide/32 v1, 0x20000

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/high16 v0, -0x40800000    # -1.0f

    .line 68
    .line 69
    cmpl-float v3, p1, v0

    .line 70
    .line 71
    if-nez v3, :cond_1

    .line 72
    .line 73
    move v7, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    iget-object v3, v4, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    :goto_0
    move v7, v3

    .line 99
    :goto_1
    cmpl-float v3, p2, v0

    .line 100
    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    move v5, v0

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 112
    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    iget-object v3, v4, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    .line 116
    .line 117
    invoke-virtual {v3, p2}, Landroid/util/Spline;->interpolate(F)F

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 123
    .line 124
    invoke-virtual {v3, p2}, Landroid/util/Spline;->interpolate(F)F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    :goto_2
    move v5, v3

    .line 129
    :goto_3
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v7}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 150
    .line 151
    iget-object v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 152
    .line 153
    iget-object v4, v4, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 154
    .line 155
    iget-object v4, v4, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 164
    .line 165
    iget-object v4, v4, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 166
    .line 167
    if-eqz v4, :cond_5

    .line 168
    .line 169
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    .line 170
    .line 171
    if-eqz v4, :cond_5

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->applyColorMatrixBasedDimming(F)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    goto :goto_7

    .line 179
    :cond_5
    :goto_4
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 188
    .line 189
    iget-object v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 190
    .line 191
    move v6, v11

    .line 192
    move v8, v3

    .line 193
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setBacklight(FFFFII)V

    .line 194
    .line 195
    .line 196
    const-string v4, "ScreenBrightness"

    .line 197
    .line 198
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    invoke-static {v1, v2, v4, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string p1, "SdrScreenBrightness"

    .line 206
    .line 207
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    invoke-static {v1, v2, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrSpline:Landroid/util/Spline;

    .line 221
    .line 222
    if-eqz p1, :cond_7

    .line 223
    .line 224
    cmpl-float p1, v3, v0

    .line 225
    .line 226
    if-eqz p1, :cond_6

    .line 227
    .line 228
    cmpl-float p1, v11, v0

    .line 229
    .line 230
    if-eqz p1, :cond_6

    .line 231
    .line 232
    const/high16 p1, 0x3f800000    # 1.0f

    .line 233
    .line 234
    div-float/2addr v3, v11

    .line 235
    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    goto :goto_5

    .line 240
    :cond_6
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 241
    .line 242
    :goto_5
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 243
    .line 244
    iget p2, p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    .line 245
    .line 246
    invoke-static {p2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-nez p2, :cond_7

    .line 251
    .line 252
    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 253
    .line 254
    iget-object p2, p2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 255
    .line 256
    iget-object p2, p2, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 257
    .line 258
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 260
    .line 261
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 264
    .line 265
    .line 266
    monitor-exit p2

    .line 267
    goto :goto_6

    .line 268
    :catchall_1
    move-exception p0

    .line 269
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :cond_7
    :goto_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :goto_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    .line 277
    .line 278
    throw p0

    .line 279
    :cond_8
    :goto_8
    return-void
.end method

.method public final setDisplayState(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "display_state - "

    .line 6
    .line 7
    .line 8
    const-string v3, ",L:"

    .line 9
    .line 10
    const-string/jumbo v4, "display_state - "

    .line 11
    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 14
    .line 15
    iget-object v5, v5, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 16
    .line 17
    iget-object v5, v5, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 18
    .line 19
    iget-object v5, v5, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 20
    .line 21
    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x0

    .line 26
    const-wide/32 v7, 0x20000

    .line 27
    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 32
    .line 33
    if-eqz v9, :cond_3

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-nez v9, :cond_3

    .line 40
    .line 41
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 42
    .line 43
    iget-object v10, v9, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 44
    .line 45
    if-eqz v10, :cond_3

    .line 46
    .line 47
    iget-boolean v10, v9, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 48
    .line 49
    if-nez v10, :cond_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    const-string v10, "DisplayOffloader#stopOffload"

    .line 53
    .line 54
    invoke-static {v7, v8, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object v10, v9, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 58
    .line 59
    invoke-interface {v10}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->stopOffload()V

    .line 60
    .line 61
    .line 62
    iput-boolean v6, v9, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 63
    .line 64
    sget-boolean v9, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    .line 65
    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    const-string v9, "DisplayOffloadSessionImpl"

    .line 69
    .line 70
    const-string/jumbo v10, "stopOffload"

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_2
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 88
    .line 89
    iget-boolean v9, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    .line 90
    .line 91
    if-eqz v9, :cond_3

    .line 92
    .line 93
    const-string v9, "SidekickInternal#endDisplayControl"

    .line 94
    .line 95
    invoke-static {v7, v8, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :try_start_1
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 99
    .line 100
    iget-object v9, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 101
    .line 102
    invoke-virtual {v9}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 106
    .line 107
    .line 108
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 109
    .line 110
    iput-boolean v6, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 115
    .line 116
    .line 117
    throw v0

    .line 118
    :cond_3
    :goto_2
    sget v9, Lcom/android/server/display/LocalDisplayAdapter;->$r8$clinit:I

    .line 119
    .line 120
    const/4 v9, 0x1

    .line 121
    const/4 v10, 0x2

    .line 122
    if-eq v1, v9, :cond_8

    .line 123
    .line 124
    const/4 v11, 0x6

    .line 125
    const/4 v12, 0x4

    .line 126
    if-eq v1, v11, :cond_9

    .line 127
    .line 128
    const/4 v11, 0x3

    .line 129
    if-eq v1, v11, :cond_6

    .line 130
    .line 131
    if-eq v1, v12, :cond_4

    .line 132
    .line 133
    :goto_3
    move v12, v10

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    .line 136
    .line 137
    if-eqz v12, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    move v12, v11

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    sget-boolean v11, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    .line 143
    .line 144
    if-eqz v11, :cond_7

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    move v12, v9

    .line 148
    goto :goto_4

    .line 149
    :cond_8
    move v12, v6

    .line 150
    :cond_9
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo v13, "setDisplayState(id="

    .line 153
    .line 154
    .line 155
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-wide v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    .line 159
    .line 160
    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v13, ", state="

    .line 164
    .line 165
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v13, ")"

    .line 176
    .line 177
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-static {v7, v8, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :try_start_2
    const-string v11, "LocalDisplayAdapter"

    .line 188
    .line 189
    new-instance v13, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 195
    .line 196
    iget v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    .line 197
    .line 198
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v4, " : "

    .line 202
    .line 203
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 207
    .line 208
    iget v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    .line 209
    .line 210
    invoke-static {v4}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v4, " -> "

    .line 218
    .line 219
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v4, " ("

    .line 230
    .line 231
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 235
    .line 236
    sget v14, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    .line 237
    .line 238
    const/4 v15, -0x1

    .line 239
    if-eq v4, v15, :cond_c

    .line 240
    .line 241
    if-eq v4, v9, :cond_b

    .line 242
    .line 243
    if-eq v4, v10, :cond_a

    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    goto :goto_5

    .line 247
    :cond_a
    const-string v4, "SUB"

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_b
    const-string v4, "MAIN"

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_c
    const-string v4, "EXTERNAL"

    .line 254
    .line 255
    :goto_5
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-boolean v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverrideChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 259
    .line 260
    if-eqz v4, :cond_d

    .line 261
    .line 262
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateOverride:I

    .line 268
    .line 269
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 276
    goto :goto_6

    .line 277
    :catchall_2
    move-exception v0

    .line 278
    move-wide v1, v7

    .line 279
    goto/16 :goto_12

    .line 280
    .line 281
    :cond_d
    :try_start_4
    const-string v3, ""

    .line 282
    .line 283
    :goto_6
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v3, ")"

    .line 287
    .line 288
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-static {v11, v3}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v3

    .line 302
    if-ne v1, v10, :cond_f

    .line 303
    .line 304
    sget-object v11, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 305
    .line 306
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 307
    .line 308
    iget v13, v13, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    .line 309
    .line 310
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 314
    .line 315
    .line 316
    move-result-wide v7

    .line 317
    iput-wide v7, v11, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 318
    .line 319
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->CHECK_FRAME:Z

    .line 320
    .line 321
    if-eqz v7, :cond_e

    .line 322
    .line 323
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->getFrameTimeFromDriver()J

    .line 324
    .line 325
    .line 326
    move-result-wide v7

    .line 327
    sput-wide v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePrevTime:J

    .line 328
    .line 329
    :cond_e
    if-eq v13, v9, :cond_10

    .line 330
    .line 331
    sput-boolean v9, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFramePass:Z

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :goto_7
    const-wide/32 v1, 0x20000

    .line 335
    .line 336
    .line 337
    goto/16 :goto_12

    .line 338
    .line 339
    :catchall_3
    move-exception v0

    .line 340
    goto :goto_7

    .line 341
    :cond_f
    if-ne v1, v9, :cond_10

    .line 342
    .line 343
    sget-object v7, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 344
    .line 345
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 349
    .line 350
    .line 351
    move-result-wide v14

    .line 352
    iput-wide v14, v7, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    .line 353
    .line 354
    :cond_10
    :goto_8
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 355
    .line 356
    iget-object v7, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 357
    .line 358
    iget-object v7, v7, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 359
    .line 360
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    .line 361
    .line 362
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    invoke-static {v13, v12}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 366
    .line 367
    .line 368
    if-ne v1, v10, :cond_12

    .line 369
    .line 370
    sget-object v7, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    .line 371
    .line 372
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 376
    .line 377
    .line 378
    move-result-wide v13

    .line 379
    move v15, v12

    .line 380
    iget-wide v11, v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 381
    .line 382
    const-wide/16 v16, 0x0

    .line 383
    .line 384
    cmp-long v11, v11, v16

    .line 385
    .line 386
    if-nez v11, :cond_11

    .line 387
    .line 388
    iget-wide v11, v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    .line 389
    .line 390
    iput-wide v11, v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 391
    .line 392
    :cond_11
    iget-wide v11, v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayStartTime:J

    .line 393
    .line 394
    sub-long/2addr v13, v11

    .line 395
    long-to-int v11, v13

    .line 396
    iput v11, v7, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mDisplayDuration:I

    .line 397
    .line 398
    iget v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 399
    .line 400
    invoke-virtual {v7, v11}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteFrameStart(I)V

    .line 401
    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_12
    move v15, v12

    .line 405
    if-ne v1, v9, :cond_13

    .line 406
    .line 407
    sget-object v7, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 408
    .line 409
    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->noteDisplayEnd()V

    .line 410
    .line 411
    .line 412
    :cond_13
    :goto_9
    const-string v7, "LocalDisplayAdapter"

    .line 413
    .line 414
    new-instance v11, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 420
    .line 421
    iget v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    .line 422
    .line 423
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v2, " : "

    .line 427
    .line 428
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v2, " ("

    .line 439
    .line 440
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    .line 444
    .line 445
    const/4 v12, -0x1

    .line 446
    if-eq v2, v12, :cond_16

    .line 447
    .line 448
    if-eq v2, v9, :cond_15

    .line 449
    .line 450
    if-eq v2, v10, :cond_14

    .line 451
    .line 452
    const/4 v14, 0x0

    .line 453
    goto :goto_a

    .line 454
    :cond_14
    const-string v14, "SUB"

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_15
    const-string v14, "MAIN"

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_16
    const-string v14, "EXTERNAL"

    .line 461
    .line 462
    :goto_a
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v2, ")"

    .line 466
    .line 467
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 475
    .line 476
    .line 477
    move-result-wide v10

    .line 478
    sub-long/2addr v10, v3

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v2, " took "

    .line 488
    .line 489
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v2, " ms"

    .line 496
    .line 497
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    invoke-static {v7, v2}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 508
    .line 509
    iget v3, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    .line 510
    .line 511
    add-int/2addr v3, v9

    .line 512
    iput v3, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    .line 513
    .line 514
    const/16 v4, 0x2710

    .line 515
    .line 516
    if-le v3, v4, :cond_17

    .line 517
    .line 518
    iput v6, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    .line 519
    .line 520
    :cond_17
    iput v1, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    .line 521
    .line 522
    const-string v2, "DisplayPowerMode"

    .line 523
    .line 524
    move v10, v15

    .line 525
    const-wide/32 v3, 0x20000

    .line 526
    .line 527
    .line 528
    invoke-static {v3, v4, v2, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 529
    .line 530
    .line 531
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    .line 533
    .line 534
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 535
    .line 536
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 537
    .line 538
    iget-object v2, v2, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 539
    .line 540
    monitor-enter v2

    .line 541
    :try_start_5
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 542
    .line 543
    iput v1, v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    .line 544
    .line 545
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    .line 546
    .line 547
    if-eqz v4, :cond_19

    .line 548
    .line 549
    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateChangeCallbacks:Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    if-nez v3, :cond_19

    .line 556
    .line 557
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 558
    .line 559
    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateChangeCallbacks:Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    if-eqz v4, :cond_18

    .line 570
    .line 571
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    check-cast v4, Ljava/lang/Runnable;

    .line 576
    .line 577
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 578
    .line 579
    .line 580
    goto :goto_b

    .line 581
    :catchall_4
    move-exception v0

    .line 582
    goto/16 :goto_11

    .line 583
    .line 584
    :cond_18
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 585
    .line 586
    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateChangeCallbacks:Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 589
    .line 590
    .line 591
    :cond_19
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 592
    .line 593
    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 594
    .line 595
    .line 596
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 597
    if-eqz v5, :cond_1c

    .line 598
    .line 599
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 600
    .line 601
    if-eqz v2, :cond_1d

    .line 602
    .line 603
    invoke-static/range {p1 .. p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_1d

    .line 608
    .line 609
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    .line 610
    .line 611
    const-string/jumbo v1, "startOffload = "

    .line 612
    .line 613
    .line 614
    iget-object v2, v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 615
    .line 616
    if-eqz v2, :cond_1d

    .line 617
    .line 618
    iget-boolean v2, v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 619
    .line 620
    if-eqz v2, :cond_1a

    .line 621
    .line 622
    goto :goto_10

    .line 623
    :cond_1a
    const-string v2, "DisplayOffloader#startOffload"

    .line 624
    .line 625
    const-wide/32 v3, 0x20000

    .line 626
    .line 627
    .line 628
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 629
    .line 630
    .line 631
    :try_start_6
    iget-object v2, v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 632
    .line 633
    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->startOffload()Z

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    iput-boolean v2, v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 638
    .line 639
    sget-boolean v2, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    .line 640
    .line 641
    if-eqz v2, :cond_1b

    .line 642
    .line 643
    const-string v2, "DisplayOffloadSessionImpl"

    .line 644
    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    iget-boolean v0, v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 651
    .line 652
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 660
    .line 661
    .line 662
    :cond_1b
    const-wide/32 v1, 0x20000

    .line 663
    .line 664
    .line 665
    goto :goto_c

    .line 666
    :catchall_5
    move-exception v0

    .line 667
    const-wide/32 v1, 0x20000

    .line 668
    .line 669
    .line 670
    goto :goto_d

    .line 671
    :goto_c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    .line 673
    .line 674
    goto :goto_10

    .line 675
    :goto_d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 676
    .line 677
    .line 678
    throw v0

    .line 679
    :cond_1c
    invoke-static/range {p1 .. p1}, Landroid/view/Display;->isSuspendedState(I)Z

    .line 680
    .line 681
    .line 682
    move-result v2

    .line 683
    if-eqz v2, :cond_1d

    .line 684
    .line 685
    if-eq v1, v9, :cond_1d

    .line 686
    .line 687
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 688
    .line 689
    iget-object v3, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 690
    .line 691
    if-eqz v3, :cond_1d

    .line 692
    .line 693
    iget-boolean v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    .line 694
    .line 695
    if-nez v2, :cond_1d

    .line 696
    .line 697
    const-string v2, "SidekickInternal#startDisplayControl"

    .line 698
    .line 699
    const-wide/32 v3, 0x20000

    .line 700
    .line 701
    .line 702
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 703
    .line 704
    .line 705
    :try_start_7
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 706
    .line 707
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 708
    .line 709
    invoke-virtual {v2, v1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    iput-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 714
    .line 715
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 716
    .line 717
    .line 718
    goto :goto_10

    .line 719
    :goto_e
    const-wide/32 v1, 0x20000

    .line 720
    .line 721
    .line 722
    goto :goto_f

    .line 723
    :catchall_6
    move-exception v0

    .line 724
    goto :goto_e

    .line 725
    :goto_f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 726
    .line 727
    .line 728
    throw v0

    .line 729
    :cond_1d
    :goto_10
    return-void

    .line 730
    :goto_11
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 731
    throw v0

    .line 732
    :goto_12
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 733
    .line 734
    .line 735
    throw v0
.end method
