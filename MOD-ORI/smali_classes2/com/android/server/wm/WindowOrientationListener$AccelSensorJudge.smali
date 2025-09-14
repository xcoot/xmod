.class public final Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccelerating:Z

.field public mAccelerationTimestampNanos:J

.field public mFlat:Z

.field public mFlatTimestampNanos:J

.field public mLastFilteredTimestampNanos:J

.field public mLastFilteredX:F

.field public mLastFilteredY:F

.field public mLastFilteredZ:F

.field public mOverhead:Z

.field public mPredictedRotation:I

.field public mPredictedRotationTimestampNanos:J

.field public mProposedRotation:I

.field public mSwingTimestampNanos:J

.field public mSwinging:Z

.field public final mTiltHistory:[F

.field public mTiltHistoryIndex:I

.field public final mTiltHistoryTimestampNanos:[J

.field public final mTiltToleranceConfig:[[I

.field public mTouchEndedTimestampNanos:J

.field public mTouched:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x46

    .line 7
    .line 8
    const/16 v0, -0x19

    .line 9
    .line 10
    filled-new-array {v0, p1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 v1, 0x41

    .line 15
    .line 16
    filled-new-array {v0, v1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/16 v3, 0x3c

    .line 21
    .line 22
    filled-new-array {v0, v3}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    filled-new-array {v0, v1}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {p1, v2, v3, v0}, [[I

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 35
    .line 36
    const-wide/high16 v0, -0x8000000000000000L

    .line 37
    .line 38
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 39
    .line 40
    const/16 p1, 0xc8

    .line 41
    .line 42
    new-array v0, p1, [F

    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 45
    .line 46
    new-array p1, p1, [J

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const p2, 0x107009e

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    array-length p2, p1

    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    const-string v1, "WindowOrientationListener"

    .line 65
    .line 66
    if-ne p2, v0, :cond_1

    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    move v0, p2

    .line 70
    :goto_0
    const/4 v2, 0x4

    .line 71
    if-ge v0, v2, :cond_2

    .line 72
    .line 73
    mul-int/lit8 v2, v0, 0x2

    .line 74
    .line 75
    aget v3, p1, v2

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    add-int/2addr v2, v4

    .line 79
    aget v2, p1, v2

    .line 80
    .line 81
    const/16 v5, -0x5a

    .line 82
    .line 83
    if-lt v3, v5, :cond_0

    .line 84
    .line 85
    if-gt v3, v2, :cond_0

    .line 86
    .line 87
    const/16 v5, 0x5a

    .line 88
    .line 89
    if-gt v2, v5, :cond_0

    .line 90
    .line 91
    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 92
    .line 93
    aget-object v5, v5, v0

    .line 94
    .line 95
    aput v3, v5, p2

    .line 96
    .line 97
    aput v2, v5, v4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "config_autoRotationTiltTolerance contains invalid range: min="

    .line 103
    .line 104
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v3, ", max="

    .line 111
    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    const-string p0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    .line 129
    .line 130
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_2
    return-void
.end method

.method public static remainingMS(JJ)F
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sub-long/2addr p2, p0

    .line 8
    long-to-float p0, p2

    .line 9
    const p1, 0x358637bd    # 1.0E-6f

    .line 10
    .line 11
    .line 12
    mul-float/2addr p0, p1

    .line 13
    :goto_0
    return p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "AccelSensorJudge"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "  "

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string/jumbo v0, "mProposedRotation="

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 46
    .line 47
    const-string/jumbo v2, "mPredictedRotation="

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 55
    .line 56
    const-string v2, "mLastFilteredX="

    .line 57
    .line 58
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, "mLastFilteredY="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, "mLastFilteredZ="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 129
    .line 130
    sub-long/2addr v0, v2

    .line 131
    const-string v2, "mLastFilteredTimestampNanos="

    .line 132
    .line 133
    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 138
    .line 139
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v3, " ("

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    long-to-float v0, v0

    .line 148
    const v1, 0x358637bd    # 1.0E-6f

    .line 149
    .line 150
    .line 151
    mul-float/2addr v0, v1

    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string/jumbo v0, "ms ago)"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string/jumbo v1, "mTiltHistory={last: "

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-ltz v1, :cond_0

    .line 189
    .line 190
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 191
    .line 192
    aget v1, v2, v1

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 196
    .line 197
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string/jumbo v1, "}"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, "mFlat="

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 227
    .line 228
    const-string/jumbo v2, "mSwinging="

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 236
    .line 237
    const-string v2, "mAccelerating="

    .line 238
    .line 239
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 244
    .line 245
    const-string/jumbo v2, "mOverhead="

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 253
    .line 254
    const-string/jumbo v2, "mTouched="

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string/jumbo p2, "mTiltToleranceConfig=["

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const/4 p2, 0x0

    .line 295
    move v0, p2

    .line 296
    :goto_1
    const/4 v1, 0x4

    .line 297
    const-string v2, "]"

    .line 298
    .line 299
    if-ge v0, v1, :cond_2

    .line 300
    .line 301
    const-string v1, ", "

    .line 302
    .line 303
    if-eqz v0, :cond_1

    .line 304
    .line 305
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_1
    const-string v3, "["

    .line 309
    .line 310
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 314
    .line 315
    aget-object v3, v3, v0

    .line 316
    .line 317
    aget v3, v3, p2

    .line 318
    .line 319
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 326
    .line 327
    aget-object v1, v1, v0

    .line 328
    .line 329
    const/4 v3, 0x1

    .line 330
    aget v1, v1, v3

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 339
    .line 340
    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public final getProposedRotationLocked()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 2
    .line 3
    return p0
.end method

.method public final nextTiltHistoryIndexLocked(I)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0xc8

    .line 4
    .line 5
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 8
    .line 9
    aget-wide v0, p0, p1

    .line 10
    .line 11
    const-wide/high16 v2, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long p0, v0, v2

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, -0x1

    .line 19
    :goto_0
    return p1
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Filtered acceleration vector: x="

    .line 6
    .line 7
    const-string v3, "Raw acceleration vector: x="

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v5, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    aget v7, v5, v6

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    aget v9, v5, v8

    .line 21
    .line 22
    const/4 v10, 0x2

    .line 23
    aget v5, v5, v10

    .line 24
    .line 25
    sget-boolean v10, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 26
    .line 27
    if-eqz v10, :cond_0

    .line 28
    .line 29
    const-string v11, "WindowOrientationListener"

    .line 30
    .line 31
    new-instance v12, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ", y="

    .line 40
    .line 41
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ", z="

    .line 48
    .line 49
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, ", magnitude="

    .line 56
    .line 57
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    mul-float v3, v7, v7

    .line 61
    .line 62
    mul-float v13, v9, v9

    .line 63
    .line 64
    add-float/2addr v13, v3

    .line 65
    mul-float v3, v5, v5

    .line 66
    .line 67
    add-float/2addr v3, v13

    .line 68
    float-to-double v13, v3

    .line 69
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v13

    .line 73
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v11, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_11

    .line 86
    .line 87
    :cond_0
    :goto_0
    iget-wide v11, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 88
    .line 89
    iget-wide v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 90
    .line 91
    move v3, v9

    .line 92
    sub-long v8, v11, v13

    .line 93
    .line 94
    long-to-float v8, v8

    .line 95
    const v9, 0x358637bd    # 1.0E-6f

    .line 96
    .line 97
    .line 98
    mul-float/2addr v8, v9

    .line 99
    cmp-long v15, v11, v13

    .line 100
    .line 101
    const-wide/32 v16, 0x3b9aca00

    .line 102
    .line 103
    .line 104
    if-ltz v15, :cond_3

    .line 105
    .line 106
    add-long v13, v13, v16

    .line 107
    .line 108
    cmp-long v13, v11, v13

    .line 109
    .line 110
    if-gtz v13, :cond_3

    .line 111
    .line 112
    const/4 v13, 0x0

    .line 113
    cmpl-float v14, v7, v13

    .line 114
    .line 115
    if-nez v14, :cond_1

    .line 116
    .line 117
    cmpl-float v14, v3, v13

    .line 118
    .line 119
    if-nez v14, :cond_1

    .line 120
    .line 121
    cmpl-float v13, v5, v13

    .line 122
    .line 123
    if-nez v13, :cond_1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    const/high16 v13, 0x43480000    # 200.0f

    .line 127
    .line 128
    add-float/2addr v13, v8

    .line 129
    div-float v13, v8, v13

    .line 130
    .line 131
    iget v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 132
    .line 133
    sub-float/2addr v7, v14

    .line 134
    mul-float/2addr v7, v13

    .line 135
    add-float/2addr v7, v14

    .line 136
    iget v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 137
    .line 138
    sub-float/2addr v3, v14

    .line 139
    mul-float/2addr v3, v13

    .line 140
    add-float/2addr v3, v14

    .line 141
    iget v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 142
    .line 143
    sub-float/2addr v5, v14

    .line 144
    mul-float/2addr v5, v13

    .line 145
    add-float/2addr v5, v14

    .line 146
    if-eqz v10, :cond_2

    .line 147
    .line 148
    const-string v13, "WindowOrientationListener"

    .line 149
    .line 150
    new-instance v14, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v2, ", y="

    .line 159
    .line 160
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, ", z="

    .line 167
    .line 168
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v2, ", magnitude="

    .line 175
    .line 176
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    mul-float v2, v7, v7

    .line 180
    .line 181
    mul-float v15, v3, v3

    .line 182
    .line 183
    add-float/2addr v15, v2

    .line 184
    mul-float v2, v5, v5

    .line 185
    .line 186
    add-float/2addr v2, v15

    .line 187
    float-to-double v1, v2

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v1

    .line 192
    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-static {v13, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_2
    move v1, v6

    .line 203
    goto :goto_2

    .line 204
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 205
    .line 206
    const-string v1, "WindowOrientationListener"

    .line 207
    .line 208
    const-string v2, "Resetting orientation listener."

    .line 209
    .line 210
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->resetLocked()V

    .line 214
    .line 215
    .line 216
    const/4 v1, 0x1

    .line 217
    :goto_2
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 218
    .line 219
    iput v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 220
    .line 221
    iput v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 222
    .line 223
    iput v5, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 224
    .line 225
    const-wide/32 v13, 0x11e1a300

    .line 226
    .line 227
    .line 228
    if-nez v1, :cond_21

    .line 229
    .line 230
    mul-float v1, v7, v7

    .line 231
    .line 232
    mul-float v2, v3, v3

    .line 233
    .line 234
    add-float/2addr v2, v1

    .line 235
    mul-float v1, v5, v5

    .line 236
    .line 237
    add-float/2addr v1, v2

    .line 238
    float-to-double v1, v1

    .line 239
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    double-to-float v1, v1

    .line 244
    const/high16 v2, 0x3f800000    # 1.0f

    .line 245
    .line 246
    cmpg-float v2, v1, v2

    .line 247
    .line 248
    const/4 v15, -0x1

    .line 249
    move/from16 v19, v7

    .line 250
    .line 251
    const-wide/high16 v6, -0x8000000000000000L

    .line 252
    .line 253
    if-gez v2, :cond_6

    .line 254
    .line 255
    if-eqz v10, :cond_5

    .line 256
    .line 257
    const-string v1, "WindowOrientationListener"

    .line 258
    .line 259
    const-string v2, "Ignoring sensor data, magnitude too close to zero."

    .line 260
    .line 261
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    :cond_5
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 265
    .line 266
    iput-wide v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 267
    .line 268
    const/4 v13, 0x0

    .line 269
    goto/16 :goto_e

    .line 270
    .line 271
    :cond_6
    const v2, 0x40b9d014

    .line 272
    .line 273
    .line 274
    cmpg-float v2, v1, v2

    .line 275
    .line 276
    if-ltz v2, :cond_8

    .line 277
    .line 278
    const v2, 0x415ce80a

    .line 279
    .line 280
    .line 281
    cmpl-float v2, v1, v2

    .line 282
    .line 283
    if-lez v2, :cond_7

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_7
    const/4 v2, 0x0

    .line 287
    goto :goto_4

    .line 288
    :cond_8
    :goto_3
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 289
    .line 290
    const/4 v2, 0x1

    .line 291
    :goto_4
    div-float/2addr v5, v1

    .line 292
    float-to-double v9, v5

    .line 293
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    .line 294
    .line 295
    .line 296
    move-result-wide v9

    .line 297
    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    mul-double v9, v9, v20

    .line 303
    .line 304
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 305
    .line 306
    .line 307
    move-result-wide v9

    .line 308
    long-to-int v5, v9

    .line 309
    int-to-float v9, v5

    .line 310
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 311
    .line 312
    iget v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 313
    .line 314
    aput v9, v1, v10

    .line 315
    .line 316
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 317
    .line 318
    aput-wide v11, v1, v10

    .line 319
    .line 320
    const/16 v22, 0x1

    .line 321
    .line 322
    add-int/lit8 v10, v10, 0x1

    .line 323
    .line 324
    move-object/from16 v22, v1

    .line 325
    .line 326
    rem-int/lit16 v10, v10, 0xc8

    .line 327
    .line 328
    iput v10, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 329
    .line 330
    aput-wide v6, v22, v10

    .line 331
    .line 332
    :cond_9
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    if-ltz v10, :cond_b

    .line 337
    .line 338
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 339
    .line 340
    aget v1, v1, v10

    .line 341
    .line 342
    const/high16 v23, 0x42a00000    # 80.0f

    .line 343
    .line 344
    cmpg-float v1, v1, v23

    .line 345
    .line 346
    if-gez v1, :cond_a

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 350
    .line 351
    aget-wide v23, v1, v10

    .line 352
    .line 353
    add-long v23, v23, v16

    .line 354
    .line 355
    cmp-long v1, v23, v11

    .line 356
    .line 357
    if-gtz v1, :cond_9

    .line 358
    .line 359
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 360
    .line 361
    const/4 v10, 0x1

    .line 362
    goto :goto_6

    .line 363
    :cond_b
    :goto_5
    const/4 v10, 0x0

    .line 364
    :goto_6
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 365
    .line 366
    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-ltz v1, :cond_e

    .line 371
    .line 372
    iget-object v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 373
    .line 374
    aget-wide v6, v6, v1

    .line 375
    .line 376
    add-long/2addr v6, v13

    .line 377
    cmp-long v6, v6, v11

    .line 378
    .line 379
    if-gez v6, :cond_c

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_c
    iget-object v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 383
    .line 384
    aget v6, v6, v1

    .line 385
    .line 386
    const/high16 v7, 0x41a00000    # 20.0f

    .line 387
    .line 388
    add-float/2addr v6, v7

    .line 389
    cmpg-float v6, v6, v9

    .line 390
    .line 391
    if-gtz v6, :cond_d

    .line 392
    .line 393
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 394
    .line 395
    const/4 v6, 0x1

    .line 396
    goto :goto_9

    .line 397
    :cond_d
    const-wide/high16 v6, -0x8000000000000000L

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_e
    :goto_8
    const/4 v6, 0x0

    .line 401
    :goto_9
    const/16 v1, -0x28

    .line 402
    .line 403
    if-gt v5, v1, :cond_f

    .line 404
    .line 405
    const/4 v1, 0x1

    .line 406
    iput-boolean v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_f
    const/16 v7, -0xf

    .line 410
    .line 411
    if-lt v5, v7, :cond_10

    .line 412
    .line 413
    const/4 v7, 0x0

    .line 414
    iput-boolean v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 415
    .line 416
    :cond_10
    :goto_a
    iget-boolean v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 417
    .line 418
    if-eqz v7, :cond_12

    .line 419
    .line 420
    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 421
    .line 422
    if-eqz v1, :cond_11

    .line 423
    .line 424
    const-string v1, "WindowOrientationListener"

    .line 425
    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    const-string v7, "Ignoring sensor data, device is overhead: tiltAngle="

    .line 432
    .line 433
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    :cond_11
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 447
    .line 448
    const-wide/high16 v13, -0x8000000000000000L

    .line 449
    .line 450
    iput-wide v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 451
    .line 452
    :goto_b
    move v7, v2

    .line 453
    goto/16 :goto_d

    .line 454
    .line 455
    :cond_12
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 456
    .line 457
    .line 458
    move-result v7

    .line 459
    const/16 v9, 0x50

    .line 460
    .line 461
    if-le v7, v9, :cond_14

    .line 462
    .line 463
    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 464
    .line 465
    if-eqz v1, :cond_13

    .line 466
    .line 467
    const-string v1, "WindowOrientationListener"

    .line 468
    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    const-string v7, "Ignoring sensor data, tilt angle too high: tiltAngle="

    .line 475
    .line 476
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .line 488
    .line 489
    :cond_13
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 490
    .line 491
    const-wide/high16 v13, -0x8000000000000000L

    .line 492
    .line 493
    iput-wide v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_14
    move/from16 v7, v19

    .line 497
    .line 498
    neg-float v7, v7

    .line 499
    float-to-double v13, v7

    .line 500
    move v7, v2

    .line 501
    float-to-double v1, v3

    .line 502
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    .line 503
    .line 504
    .line 505
    move-result-wide v1

    .line 506
    neg-double v1, v1

    .line 507
    mul-double v1, v1, v20

    .line 508
    .line 509
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 510
    .line 511
    .line 512
    move-result-wide v1

    .line 513
    long-to-int v1, v1

    .line 514
    if-gez v1, :cond_15

    .line 515
    .line 516
    add-int/lit16 v1, v1, 0x168

    .line 517
    .line 518
    :cond_15
    add-int/lit8 v2, v1, 0x2d

    .line 519
    .line 520
    div-int/lit8 v2, v2, 0x5a

    .line 521
    .line 522
    const/4 v3, 0x4

    .line 523
    if-ne v2, v3, :cond_16

    .line 524
    .line 525
    const/4 v2, 0x0

    .line 526
    :cond_16
    iget-object v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 527
    .line 528
    aget-object v9, v9, v2

    .line 529
    .line 530
    const/4 v13, 0x0

    .line 531
    aget v13, v9, v13

    .line 532
    .line 533
    if-lt v5, v13, :cond_1e

    .line 534
    .line 535
    const/4 v13, 0x1

    .line 536
    aget v9, v9, v13

    .line 537
    .line 538
    if-gt v5, v9, :cond_1e

    .line 539
    .line 540
    iget-object v9, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 541
    .line 542
    iget v9, v9, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 543
    .line 544
    if-ltz v9, :cond_1c

    .line 545
    .line 546
    if-eq v2, v9, :cond_17

    .line 547
    .line 548
    add-int/lit8 v13, v9, 0x1

    .line 549
    .line 550
    rem-int/2addr v13, v3

    .line 551
    if-ne v2, v13, :cond_19

    .line 552
    .line 553
    :cond_17
    mul-int/lit8 v13, v2, 0x5a

    .line 554
    .line 555
    add-int/lit8 v14, v13, -0x17

    .line 556
    .line 557
    if-nez v2, :cond_18

    .line 558
    .line 559
    const/16 v14, 0x13b

    .line 560
    .line 561
    if-lt v1, v14, :cond_19

    .line 562
    .line 563
    add-int/lit16 v13, v13, 0x151

    .line 564
    .line 565
    if-ge v1, v13, :cond_19

    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_18
    if-ge v1, v14, :cond_19

    .line 569
    .line 570
    goto :goto_c

    .line 571
    :cond_19
    if-eq v2, v9, :cond_1a

    .line 572
    .line 573
    add-int/lit8 v9, v9, 0x3

    .line 574
    .line 575
    rem-int/2addr v9, v3

    .line 576
    if-ne v2, v9, :cond_1c

    .line 577
    .line 578
    :cond_1a
    mul-int/lit8 v3, v2, 0x5a

    .line 579
    .line 580
    add-int/lit8 v3, v3, 0x17

    .line 581
    .line 582
    if-nez v2, :cond_1b

    .line 583
    .line 584
    const/16 v9, 0x2d

    .line 585
    .line 586
    if-gt v1, v9, :cond_1c

    .line 587
    .line 588
    if-le v1, v3, :cond_1c

    .line 589
    .line 590
    goto :goto_c

    .line 591
    :cond_1b
    if-le v1, v3, :cond_1c

    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_1c
    iget v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 595
    .line 596
    if-eq v3, v2, :cond_1d

    .line 597
    .line 598
    iput v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 599
    .line 600
    iput-wide v11, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 601
    .line 602
    :cond_1d
    sget-boolean v2, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 603
    .line 604
    if-eqz v2, :cond_20

    .line 605
    .line 606
    const-string v2, "WindowOrientationListener"

    .line 607
    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .line 612
    .line 613
    const-string v9, "Predicted: tiltAngle="

    .line 614
    .line 615
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v5, ", orientationAngle="

    .line 622
    .line 623
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string v1, ", predictedRotation="

    .line 630
    .line 631
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 635
    .line 636
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    const-string v1, ", predictedRotationAgeMS="

    .line 640
    .line 641
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    iget-wide v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 645
    .line 646
    sub-long v13, v11, v13

    .line 647
    .line 648
    long-to-float v1, v13

    .line 649
    const v5, 0x358637bd    # 1.0E-6f

    .line 650
    .line 651
    .line 652
    mul-float/2addr v1, v5

    .line 653
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    goto :goto_d

    .line 664
    :cond_1e
    :goto_c
    sget-boolean v2, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 665
    .line 666
    if-eqz v2, :cond_1f

    .line 667
    .line 668
    const-string v2, "WindowOrientationListener"

    .line 669
    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .line 674
    .line 675
    const-string v9, "Ignoring sensor data, no predicted rotation: tiltAngle="

    .line 676
    .line 677
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v5, ", orientationAngle="

    .line 684
    .line 685
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    :cond_1f
    iput v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 699
    .line 700
    const-wide/high16 v1, -0x8000000000000000L

    .line 701
    .line 702
    iput-wide v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 703
    .line 704
    :cond_20
    :goto_d
    move v13, v6

    .line 705
    move v6, v10

    .line 706
    goto :goto_f

    .line 707
    :cond_21
    move v13, v6

    .line 708
    :goto_e
    move v6, v13

    .line 709
    move v7, v6

    .line 710
    :goto_f
    iput-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 711
    .line 712
    iput-boolean v13, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 713
    .line 714
    iput-boolean v7, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 715
    .line 716
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 717
    .line 718
    iget v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 719
    .line 720
    const-wide/32 v9, 0x2625a00

    .line 721
    .line 722
    .line 723
    if-ltz v2, :cond_26

    .line 724
    .line 725
    iget-wide v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 726
    .line 727
    add-long/2addr v14, v9

    .line 728
    cmp-long v3, v11, v14

    .line 729
    .line 730
    if-gez v3, :cond_22

    .line 731
    .line 732
    goto :goto_10

    .line 733
    :cond_22
    iget-wide v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 734
    .line 735
    const-wide/32 v16, 0x1dcd6500

    .line 736
    .line 737
    .line 738
    add-long v14, v14, v16

    .line 739
    .line 740
    cmp-long v3, v11, v14

    .line 741
    .line 742
    if-gez v3, :cond_23

    .line 743
    .line 744
    goto :goto_10

    .line 745
    :cond_23
    iget-wide v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 746
    .line 747
    const-wide/32 v18, 0x11e1a300

    .line 748
    .line 749
    .line 750
    add-long v14, v14, v18

    .line 751
    .line 752
    cmp-long v3, v11, v14

    .line 753
    .line 754
    if-gez v3, :cond_24

    .line 755
    .line 756
    goto :goto_10

    .line 757
    :cond_24
    iget-wide v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 758
    .line 759
    const-wide/32 v16, 0x1dcd6500

    .line 760
    .line 761
    .line 762
    add-long v14, v14, v16

    .line 763
    .line 764
    cmp-long v3, v11, v14

    .line 765
    .line 766
    if-gez v3, :cond_25

    .line 767
    .line 768
    goto :goto_10

    .line 769
    :cond_25
    iget-boolean v3, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 770
    .line 771
    if-nez v3, :cond_27

    .line 772
    .line 773
    iget-wide v14, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 774
    .line 775
    add-long v14, v14, v16

    .line 776
    .line 777
    cmp-long v3, v11, v14

    .line 778
    .line 779
    if-gez v3, :cond_26

    .line 780
    .line 781
    goto :goto_10

    .line 782
    :cond_26
    iput v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 783
    .line 784
    :cond_27
    :goto_10
    iget v2, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 785
    .line 786
    sget-boolean v3, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 787
    .line 788
    if-eqz v3, :cond_28

    .line 789
    .line 790
    const-string v5, "WindowOrientationListener"

    .line 791
    .line 792
    new-instance v14, Ljava/lang/StringBuilder;

    .line 793
    .line 794
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .line 796
    .line 797
    const-string v15, "Result: currentRotation="

    .line 798
    .line 799
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    iget-object v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 803
    .line 804
    iget v15, v15, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 805
    .line 806
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v15, ", proposedRotation="

    .line 810
    .line 811
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v15, ", predictedRotation="

    .line 818
    .line 819
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    iget v15, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 823
    .line 824
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    const-string v15, ", timeDeltaMS="

    .line 828
    .line 829
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    const-string v8, ", isAccelerating="

    .line 836
    .line 837
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    const-string v7, ", isFlat="

    .line 844
    .line 845
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v6, ", isSwinging="

    .line 852
    .line 853
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    const-string v6, ", isOverhead="

    .line 860
    .line 861
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    iget-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 865
    .line 866
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    const-string v6, ", isTouched="

    .line 870
    .line 871
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    iget-boolean v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 875
    .line 876
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    const-string v6, ", timeUntilSettledMS="

    .line 880
    .line 881
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    iget-wide v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 885
    .line 886
    add-long/2addr v6, v9

    .line 887
    invoke-static {v11, v12, v6, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    .line 888
    .line 889
    .line 890
    move-result v6

    .line 891
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const-string v6, ", timeUntilAccelerationDelayExpiredMS="

    .line 895
    .line 896
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    iget-wide v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 900
    .line 901
    const-wide/32 v8, 0x1dcd6500

    .line 902
    .line 903
    .line 904
    add-long/2addr v6, v8

    .line 905
    invoke-static {v11, v12, v6, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    .line 906
    .line 907
    .line 908
    move-result v6

    .line 909
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    const-string v6, ", timeUntilFlatDelayExpiredMS="

    .line 913
    .line 914
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    iget-wide v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 918
    .line 919
    add-long/2addr v6, v8

    .line 920
    invoke-static {v11, v12, v6, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    .line 921
    .line 922
    .line 923
    move-result v6

    .line 924
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    const-string v6, ", timeUntilSwingDelayExpiredMS="

    .line 928
    .line 929
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    iget-wide v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 933
    .line 934
    const-wide/32 v8, 0x11e1a300

    .line 935
    .line 936
    .line 937
    add-long/2addr v6, v8

    .line 938
    invoke-static {v11, v12, v6, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    .line 939
    .line 940
    .line 941
    move-result v6

    .line 942
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    const-string v6, ", timeUntilTouchDelayExpiredMS="

    .line 946
    .line 947
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    iget-wide v6, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 951
    .line 952
    const-wide/32 v8, 0x1dcd6500

    .line 953
    .line 954
    .line 955
    add-long/2addr v6, v8

    .line 956
    invoke-static {v11, v12, v6, v7}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    .line 957
    .line 958
    .line 959
    move-result v6

    .line 960
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v6

    .line 967
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .line 969
    .line 970
    :cond_28
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    if-eq v2, v1, :cond_2a

    .line 972
    .line 973
    if-ltz v2, :cond_2a

    .line 974
    .line 975
    if-eqz v3, :cond_29

    .line 976
    .line 977
    const-string v3, "WindowOrientationListener"

    .line 978
    .line 979
    new-instance v4, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    const-string v5, "Proposed rotation changed!  proposedRotation="

    .line 982
    .line 983
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    const-string v5, ", oldProposedRotation="

    .line 990
    .line 991
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .line 1003
    .line 1004
    :cond_29
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 1005
    .line 1006
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1007
    .line 1008
    .line 1009
    :cond_2a
    return-void

    .line 1010
    :goto_11
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    throw v0
.end method

.method public final onTouchEndLocked(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 5
    .line 6
    return-void
.end method

.method public final onTouchStartLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 3
    .line 4
    return-void
.end method

.method public final resetLocked()V
    .locals 4

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 14
    .line 15
    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 18
    .line 19
    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 20
    .line 21
    iput-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 22
    .line 23
    iput v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 28
    .line 29
    aput-wide v0, v2, v3

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 33
    .line 34
    return-void
.end method
