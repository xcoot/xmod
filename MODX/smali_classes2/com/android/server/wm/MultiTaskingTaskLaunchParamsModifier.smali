.class public final Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public mDefaultFreeformStepHorizontal:I

.field public mDefaultFreeformStepVertical:I

.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpBounds2:Landroid/graphics/Rect;

.field public final mTmpDirections:[I

.field public mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    .line 22
    .line 23
    new-instance v0, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 36
    .line 37
    return-void
.end method

.method public static boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x4

    .line 28
    const/4 v4, 0x1

    .line 29
    if-ge v2, v3, :cond_1

    .line 30
    .line 31
    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v1

    .line 34
    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    sub-int/2addr v5, v6

    .line 39
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v5, v3, :cond_2

    .line 44
    .line 45
    move v5, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v5, v1

    .line 48
    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget v7, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    sub-int/2addr v6, v7

    .line 53
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ge v6, v3, :cond_3

    .line 58
    .line 59
    move v6, v4

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move v6, v1

    .line 62
    :goto_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 65
    .line 66
    sub-int/2addr v0, v7

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ge v0, v3, :cond_4

    .line 72
    .line 73
    move v1, v4

    .line 74
    :cond_4
    if-eqz v2, :cond_5

    .line 75
    .line 76
    if-nez v5, :cond_8

    .line 77
    .line 78
    :cond_5
    if-eqz v2, :cond_6

    .line 79
    .line 80
    if-nez v1, :cond_8

    .line 81
    .line 82
    :cond_6
    if-eqz v6, :cond_7

    .line 83
    .line 84
    if-nez v5, :cond_8

    .line 85
    .line 86
    :cond_7
    if-eqz v6, :cond_0

    .line 87
    .line 88
    if-eqz v1, :cond_0

    .line 89
    .line 90
    :cond_8
    return v4

    .line 91
    :cond_9
    return v1
.end method

.method public static orientationFromBounds(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-le v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    :goto_0
    return p0
.end method

.method public static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    sub-int/2addr p1, p0

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ge p0, v1, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
.end method


# virtual methods
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDirections:[I

    .line 26
    .line 27
    array-length v7, v6

    .line 28
    if-ge v5, v7, :cond_2

    .line 29
    .line 30
    aput v4, v6, v5

    .line 31
    .line 32
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 36
    .line 37
    mul-int/lit8 v7, v5, 0x2

    .line 38
    .line 39
    iget v8, v1, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    add-int/2addr v7, v8

    .line 42
    const/4 v9, 0x3

    .line 43
    div-int/2addr v7, v9

    .line 44
    mul-int/lit8 v8, v8, 0x2

    .line 45
    .line 46
    add-int/2addr v8, v5

    .line 47
    div-int/2addr v8, v9

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerX()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v10, 0x5

    .line 53
    if-ge v5, v7, :cond_3

    .line 54
    .line 55
    aput v10, v6, v4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    if-le v5, v8, :cond_4

    .line 59
    .line 60
    aput v9, v6, v4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    mul-int/lit8 v7, v5, 0x2

    .line 66
    .line 67
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    add-int/2addr v7, v8

    .line 70
    div-int/2addr v7, v9

    .line 71
    mul-int/lit8 v8, v8, 0x2

    .line 72
    .line 73
    add-int/2addr v8, v5

    .line 74
    div-int/2addr v8, v9

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->centerY()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v11, 0x1

    .line 80
    if-lt v5, v7, :cond_6

    .line 81
    .line 82
    if-le v5, v8, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    const/16 v5, 0x55

    .line 86
    .line 87
    aput v5, v6, v4

    .line 88
    .line 89
    const/16 v5, 0x33

    .line 90
    .line 91
    aput v5, v6, v11

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    :goto_1
    aput v10, v6, v4

    .line 95
    .line 96
    aput v9, v6, v11

    .line 97
    .line 98
    :goto_2
    array-length v5, v6

    .line 99
    move v7, v4

    .line 100
    :goto_3
    if-ge v7, v5, :cond_10

    .line 101
    .line 102
    aget v8, v6, v7

    .line 103
    .line 104
    if-nez v8, :cond_7

    .line 105
    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :cond_7
    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    move v11, v4

    .line 114
    :goto_4
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 115
    .line 116
    invoke-static {v2, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_e

    .line 121
    .line 122
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 123
    .line 124
    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-nez v12, :cond_8

    .line 129
    .line 130
    if-eqz p4, :cond_e

    .line 131
    .line 132
    :cond_8
    iget-object v12, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 133
    .line 134
    and-int/lit8 v13, v8, 0x7

    .line 135
    .line 136
    if-eq v13, v9, :cond_a

    .line 137
    .line 138
    if-eq v13, v10, :cond_9

    .line 139
    .line 140
    move v13, v4

    .line 141
    goto :goto_5

    .line 142
    :cond_9
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_a
    iget v13, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 146
    .line 147
    neg-int v13, v13

    .line 148
    :goto_5
    and-int/lit8 v14, v8, 0x70

    .line 149
    .line 150
    const/16 v15, 0x30

    .line 151
    .line 152
    if-eq v14, v15, :cond_c

    .line 153
    .line 154
    const/16 v15, 0x50

    .line 155
    .line 156
    if-eq v14, v15, :cond_b

    .line 157
    .line 158
    move v14, v4

    .line 159
    goto :goto_6

    .line 160
    :cond_b
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_c
    iget v14, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 164
    .line 165
    neg-int v14, v14

    .line 166
    :goto_6
    invoke-virtual {v12, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v12, v11, 0x1

    .line 170
    .line 171
    const/16 v13, 0xc8

    .line 172
    .line 173
    if-le v11, v13, :cond_d

    .line 174
    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v11, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, inOutBounds="

    .line 178
    .line 179
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v11, ", mTmpBounds="

    .line 186
    .line 187
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v11, ", displayBounds="

    .line 196
    .line 197
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v11, ", mDefaultFreeformStepHorizontal="

    .line 204
    .line 205
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    .line 209
    .line 210
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v11, ", mDefaultFreeformStepVertical="

    .line 214
    .line 215
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget v11, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    .line 219
    .line 220
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v11, ", Callers="

    .line 224
    .line 225
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const/16 v11, 0x8

    .line 229
    .line 230
    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    const-string v11, "ActivityTaskManager"

    .line 242
    .line 243
    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 247
    .line 248
    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v12, "TaskLaunchParamsModifier.position: max_bounds_conflict_count, adjusted proposal="

    .line 252
    .line 253
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v12, ", break!"

    .line 260
    .line 261
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_d
    move v11, v12

    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :cond_e
    :goto_7
    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 276
    .line 277
    invoke-static {v2, v8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    .line 278
    .line 279
    .line 280
    move-result v8

    .line 281
    if-nez v8, :cond_f

    .line 282
    .line 283
    iget-object v8, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 284
    .line 285
    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_f

    .line 290
    .line 291
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 292
    .line 293
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v2, "avoid-bounds-conflict="

    .line 299
    .line 300
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_10
    :goto_8
    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    sget-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 23
    .line 24
    int-to-float p1, p1

    .line 25
    const/high16 v1, 0x43200000    # 160.0f

    .line 26
    .line 27
    div-float/2addr p1, v1

    .line 28
    const/high16 v1, 0x41d80000    # 27.0f

    .line 29
    .line 30
    mul-float/2addr p1, v1

    .line 31
    const/high16 v1, 0x3f000000    # 0.5f

    .line 32
    .line 33
    add-float/2addr p1, v1

    .line 34
    float-to-int p1, p1

    .line 35
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lt p1, v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-ge p1, v1, :cond_4

    .line 57
    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    int-to-float p1, p1

    .line 63
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    int-to-float v1, v1

    .line 68
    div-float/2addr p1, v1

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    int-to-float v1, v1

    .line 74
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    int-to-float v2, v2

    .line 79
    div-float/2addr v1, v2

    .line 80
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/4 v1, -0x1

    .line 85
    if-nez p2, :cond_1

    .line 86
    .line 87
    move v2, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget v2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 90
    .line 91
    :goto_0
    if-nez p2, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 95
    .line 96
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    int-to-float p2, p2

    .line 101
    mul-float/2addr p2, p1

    .line 102
    float-to-int p2, p2

    .line 103
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    int-to-float v2, v2

    .line 112
    mul-float/2addr v2, p1

    .line 113
    float-to-int p1, v2

    .line 114
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-lt v1, p2, :cond_9

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-ge v1, p1, :cond_3

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_3
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    add-int/2addr p2, p0

    .line 136
    add-int/2addr p1, v1

    .line 137
    invoke-virtual {p3, p0, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 138
    .line 139
    .line 140
    :cond_4
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 141
    .line 142
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 143
    .line 144
    const/4 p2, 0x0

    .line 145
    if-le p0, p1, :cond_5

    .line 146
    .line 147
    :goto_2
    sub-int/2addr p1, p0

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    iget p0, p3, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 152
    .line 153
    if-ge p0, p1, :cond_6

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    move p1, p2

    .line 157
    :goto_3
    iget p0, p3, Landroid/graphics/Rect;->top:I

    .line 158
    .line 159
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 160
    .line 161
    if-ge p0, v1, :cond_7

    .line 162
    .line 163
    sub-int p2, v1, p0

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    .line 167
    .line 168
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    if-le p0, v0, :cond_8

    .line 171
    .line 172
    sub-int p2, v0, p0

    .line 173
    .line 174
    :cond_8
    :goto_4
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 175
    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_9
    :goto_5
    const/4 v1, 0x1

    .line 179
    if-ne p0, v1, :cond_a

    .line 180
    .line 181
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 182
    .line 183
    sub-int/2addr p0, p2

    .line 184
    goto :goto_6

    .line 185
    :cond_a
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    :goto_6
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    add-int/2addr p2, p0

    .line 190
    add-int/2addr p1, v0

    .line 191
    invoke-virtual {p3, p0, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 192
    .line 193
    .line 194
    :goto_7
    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 15

    .line 1
    move-object/from16 v3, p3

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 6
    .line 7
    and-int/lit8 v8, v0, 0x70

    .line 8
    .line 9
    and-int/lit8 v9, v0, 0x7

    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    if-nez v8, :cond_0

    .line 18
    .line 19
    if-nez v9, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    move-object v0, p0

    .line 26
    iget-object v10, v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 27
    .line 28
    move-object/from16 v2, p1

    .line 29
    .line 30
    invoke-virtual {v2, v10}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 34
    .line 35
    .line 36
    move-result v11

    .line 37
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v12

    .line 41
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/high16 v13, 0x3f800000    # 1.0f

    .line 46
    .line 47
    const/4 v14, 0x0

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v4, 0x5

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v0, p0

    .line 68
    move-object/from16 v1, p2

    .line 69
    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    move-object/from16 v3, p3

    .line 73
    .line 74
    move-object/from16 v6, p4

    .line 75
    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 89
    .line 90
    if-ltz v0, :cond_3

    .line 91
    .line 92
    if-ge v0, v11, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget v0, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 96
    .line 97
    cmpl-float v1, v0, v14

    .line 98
    .line 99
    if-lez v1, :cond_4

    .line 100
    .line 101
    cmpg-float v1, v0, v13

    .line 102
    .line 103
    if-gez v1, :cond_4

    .line 104
    .line 105
    int-to-float v1, v11

    .line 106
    mul-float/2addr v1, v0

    .line 107
    float-to-int v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    move v0, v11

    .line 110
    :goto_0
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 111
    .line 112
    if-ltz v1, :cond_5

    .line 113
    .line 114
    if-ge v1, v12, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    iget v1, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 118
    .line 119
    cmpl-float v2, v1, v14

    .line 120
    .line 121
    if-lez v2, :cond_6

    .line 122
    .line 123
    cmpg-float v2, v1, v13

    .line 124
    .line 125
    if-gez v2, :cond_6

    .line 126
    .line 127
    int-to-float v2, v12

    .line 128
    mul-float/2addr v2, v1

    .line 129
    float-to-int v1, v2

    .line 130
    goto :goto_1

    .line 131
    :cond_6
    move v1, v12

    .line 132
    :goto_1
    const/4 v2, 0x3

    .line 133
    const/high16 v3, 0x3f000000    # 0.5f

    .line 134
    .line 135
    if-eq v9, v2, :cond_8

    .line 136
    .line 137
    const/4 v2, 0x5

    .line 138
    if-eq v9, v2, :cond_7

    .line 139
    .line 140
    move v2, v3

    .line 141
    goto :goto_2

    .line 142
    :cond_7
    move v2, v13

    .line 143
    goto :goto_2

    .line 144
    :cond_8
    move v2, v14

    .line 145
    :goto_2
    const/16 v4, 0x30

    .line 146
    .line 147
    if-eq v8, v4, :cond_9

    .line 148
    .line 149
    const/16 v4, 0x50

    .line 150
    .line 151
    if-eq v8, v4, :cond_a

    .line 152
    .line 153
    move v13, v3

    .line 154
    goto :goto_3

    .line 155
    :cond_9
    move v13, v14

    .line 156
    :cond_a
    :goto_3
    const/4 v3, 0x0

    .line 157
    invoke-virtual {v7, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 158
    .line 159
    .line 160
    iget v3, v10, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    iget v4, v10, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 165
    .line 166
    .line 167
    sub-int/2addr v11, v0

    .line 168
    int-to-float v0, v11

    .line 169
    mul-float/2addr v2, v0

    .line 170
    float-to-int v0, v2

    .line 171
    sub-int/2addr v12, v1

    .line 172
    int-to-float v1, v12

    .line 173
    mul-float/2addr v13, v1

    .line 174
    float-to-int v1, v13

    .line 175
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p4, v0, :cond_0

    .line 4
    .line 5
    if-eq p4, v1, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p2, "skip-bounds-"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eq p1, v1, :cond_2

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p3, "Orientation must be one of portrait or landscape, but it\'s "

    .line 45
    .line 46
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p2, p4}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 70
    .line 71
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    .line 89
    .line 90
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p4, p3, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDefaultFreeformBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    new-instance p4, Landroid/util/Size;

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-direct {p4, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v2, v2, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 121
    .line 122
    .line 123
    if-nez p5, :cond_5

    .line 124
    .line 125
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-static {p6, p4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    if-eqz p4, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p3, "freeform-size-mismatch="

    .line 160
    .line 161
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    :goto_1
    invoke-static {p6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 176
    .line 177
    .line 178
    move-result p3

    .line 179
    if-ne p1, p3, :cond_6

    .line 180
    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string p3, "freeform-size-orientation-match="

    .line 184
    .line 185
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 200
    .line 201
    invoke-static {p6, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_7

    .line 206
    .line 207
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 208
    .line 209
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    iget-object p3, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 219
    .line 220
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 221
    .line 222
    .line 223
    move-result p3

    .line 224
    iget-object p4, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 225
    .line 226
    invoke-static {p2, p1, p3, p4}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds2:Landroid/graphics/Rect;

    .line 230
    .line 231
    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 232
    .line 233
    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string p3, "freeform-orientation-ignore="

    .line 237
    .line 238
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_7
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    .line 257
    .line 258
    .line 259
    move-result p3

    .line 260
    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string p3, "freeform-orientation-mismatch="

    .line 266
    .line 267
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    new-instance p3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    .line 286
    .line 287
    const/4 p4, 0x0

    .line 288
    invoke-direct {p3, p4, p4, p4, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p3, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-virtual {p0, p2, p1, p6, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    .line 299
    .line 300
    .line 301
    :goto_3
    return-void
.end method

.method public final onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v1, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TaskLaunchParamsModifier:task="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " activity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v2, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-eqz v8, :cond_1

    .line 2
    invoke-virtual {v8, v15, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v15, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v9

    :goto_1
    if-nez v5, :cond_2

    if-eqz v12, :cond_2

    goto/16 :goto_4e

    :cond_2
    if-eqz v11, :cond_3

    .line 3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "display-area-token-from-option="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    const/4 v4, -0x1

    .line 7
    iget-object v3, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-nez v2, :cond_6

    if-eqz v11, :cond_6

    .line 8
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v6

    if-eq v6, v4, :cond_6

    .line 9
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v15

    if-ne v15, v4, :cond_5

    const/4 v15, 0x0

    goto :goto_4

    .line 10
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v15

    .line 11
    :goto_4
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    invoke-virtual {v4, v15}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 13
    new-instance v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;

    invoke-direct {v2, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea;

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display-area-feature-from-option="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_6
    if-nez v2, :cond_8

    if-eqz v11, :cond_7

    .line 15
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    :goto_5
    const/4 v6, -0x1

    goto :goto_6

    :cond_7
    const/4 v4, -0x1

    goto :goto_5

    :goto_6
    if-eq v4, v6, :cond_8

    .line 16
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    invoke-virtual {v6, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 18
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "display-from-option="

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_8
    if-nez v2, :cond_a

    if-eqz v10, :cond_a

    .line 20
    iget-boolean v4, v10, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_a

    .line 21
    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_9

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display-area-from-no-display-source="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_7

    .line 23
    :cond_9
    iget v4, v10, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 24
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 25
    invoke-virtual {v6, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 26
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "display-from-no-display-source="

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_a
    :goto_7
    if-eqz v8, :cond_c

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-virtual {v8, v4, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    if-nez v15, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v8, v4, v6}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    goto :goto_9

    :cond_c
    :goto_8
    move-object v15, v9

    :goto_9
    if-nez v2, :cond_d

    if-eqz v10, :cond_d

    .line 29
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display-area-from-source="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_d
    if-nez v2, :cond_e

    if-eqz v8, :cond_e

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_11

    .line 32
    sget-boolean v6, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v6, :cond_10

    .line 33
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v6, :cond_10

    .line 34
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v6

    .line 35
    iget-boolean v6, v6, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/16 v17, 0x1

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_10

    if-eqz v15, :cond_f

    .line 36
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-nez v2, :cond_f

    .line 37
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 38
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 39
    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v6, :cond_f

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "display-from-focus="

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget v15, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 42
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    :cond_10
    :goto_b
    if-nez v2, :cond_11

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "display-from-task="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    :cond_11
    if-nez v2, :cond_12

    if-eqz v11, :cond_12

    .line 46
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v4

    .line 47
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 48
    invoke-virtual {v6, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 49
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "display-from-caller="

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_12
    if-nez v2, :cond_13

    if-eqz v13, :cond_13

    .line 51
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display-area-from-current-params="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_13
    if-eqz v2, :cond_14

    .line 53
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v4, :cond_14

    .line 54
    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v4, :cond_14

    .line 56
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 57
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 58
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display-area-from-no-multidisplay="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_14
    if-eqz v2, :cond_15

    if-eqz v9, :cond_15

    .line 60
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v15, 0x0

    .line 61
    invoke-virtual {v4, v6, v2, v15}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v4

    if-nez v4, :cond_15

    .line 62
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 63
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 64
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "display-area-from-home="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_15
    if-eqz v2, :cond_17

    :cond_16
    :goto_c
    move-object v15, v2

    goto/16 :goto_f

    :cond_17
    if-eqz v9, :cond_19

    .line 66
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v6, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 67
    invoke-virtual {v2, v4, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 68
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "display-area-for-launching-record="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_e

    .line 70
    :cond_18
    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    .line 72
    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 73
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "display-area-for-record="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    if-eqz v1, :cond_1a

    .line 75
    iget-object v2, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 76
    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 77
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "display-area-source-process="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_d
    move-object v2, v1

    goto :goto_e

    .line 79
    :cond_1a
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 80
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 81
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "display-area-from-default-fallback="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_d

    .line 83
    :goto_e
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 84
    iget-object v4, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 86
    invoke-interface {v1, v4}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldChooseDefaultTaskDisplayArea(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 87
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 88
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 89
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto/16 :goto_c

    .line 90
    :goto_f
    iput-object v15, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 91
    iget-object v6, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display-id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " task-display-area-windowing-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " suggested-display-area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    if-eqz v0, :cond_1c

    .line 97
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    .line 98
    iget-object v2, v15, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v2

    int-to-float v2, v2

    if-eqz v9, :cond_1b

    .line 99
    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    .line 100
    :goto_10
    invoke-static {v1, v2, v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->recalculateWindowLayout(FFLandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;)Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v0

    :cond_1c
    move-object v4, v0

    if-eqz v9, :cond_1f

    .line 101
    iget-object v0, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1d

    .line 103
    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 104
    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_11

    .line 105
    :cond_1d
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 106
    invoke-virtual {v1, v0, v2, v9, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1e

    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1f

    .line 108
    iput-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tda-from-lott="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " display-windowing-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_1f
    if-nez v12, :cond_20

    :goto_13
    const/4 v6, 0x2

    goto/16 :goto_4e

    .line 112
    :cond_20
    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503a1

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    const v1, 0x10503a0

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    if-eqz v11, :cond_21

    .line 116
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_14

    :cond_21
    const/4 v0, 0x0

    .line 117
    :goto_14
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    const/4 v2, 0x5

    if-nez v0, :cond_28

    if-eqz v10, :cond_28

    .line 118
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_23

    goto :goto_16

    .line 119
    :cond_23
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_16

    .line 120
    :cond_24
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 121
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v9, 0x1

    if-eq v1, v9, :cond_25

    if-eq v1, v2, :cond_25

    goto :goto_16

    :cond_25
    if-ne v1, v2, :cond_26

    .line 122
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_26

    .line 123
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_26

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v1, v9, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 125
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_26

    goto :goto_16

    .line 126
    :cond_26
    iget v1, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 127
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_28

    .line 128
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 130
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_27

    .line 131
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    goto :goto_15

    .line 132
    :cond_27
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 134
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inherit-from-source="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_28
    :goto_16
    if-nez v0, :cond_2a

    if-eqz v8, :cond_2a

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v15, :cond_2a

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-nez v1, :cond_2a

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 140
    iget-object v1, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 141
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v1, :cond_2a

    .line 142
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inherit-from-task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 146
    :cond_2a
    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v2, :cond_2d

    .line 147
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_2b

    if-eqz v0, :cond_2c

    :cond_2b
    if-ne v0, v9, :cond_2d

    :cond_2c
    const/4 v2, 0x1

    goto :goto_17

    :cond_2d
    const/4 v2, 0x0

    :goto_17
    const/4 v9, 0x6

    if-eqz v11, :cond_2f

    .line 148
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v18

    if-eqz v18, :cond_2f

    if-eq v0, v9, :cond_2f

    .line 149
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2f

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v18

    if-nez v18, :cond_2f

    :cond_2e
    :goto_18
    const/4 v9, 0x1

    goto :goto_19

    .line 150
    :cond_2f
    iget-boolean v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v9, :cond_31

    .line 151
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_30

    if-eqz v0, :cond_2e

    :cond_30
    const/4 v9, 0x5

    if-ne v0, v9, :cond_31

    goto :goto_18

    :cond_31
    const/4 v9, 0x0

    :goto_19
    if-eqz v4, :cond_33

    if-nez v9, :cond_32

    if-eqz v2, :cond_33

    :cond_32
    const/16 v18, 0x1

    goto :goto_1a

    :cond_33
    const/16 v18, 0x0

    .line 152
    :goto_1a
    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v19

    if-eqz v19, :cond_3c

    if-nez v9, :cond_36

    .line 153
    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_34

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    goto :goto_1b

    :cond_34
    const/4 v1, 0x2

    :cond_35
    if-eqz v2, :cond_3c

    goto :goto_1b

    :cond_36
    const/4 v1, 0x2

    :goto_1b
    if-eq v0, v1, :cond_37

    :goto_1c
    const/4 v0, 0x5

    goto :goto_1d

    :cond_37
    if-nez v0, :cond_38

    if-eqz v9, :cond_38

    goto :goto_1c

    .line 154
    :cond_38
    :goto_1d
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v9, :cond_3a

    if-eqz v1, :cond_3a

    .line 155
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 156
    invoke-virtual {v6, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    move/from16 p6, v0

    .line 157
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_39

    .line 158
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getFreeformTopInset()I

    move-result v18

    add-int v2, v18, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_39
    if-eqz v8, :cond_3b

    .line 159
    invoke-virtual {v8, v1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    goto :goto_1e

    :cond_3a
    move/from16 p6, v0

    .line 160
    :cond_3b
    :goto_1e
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity-options-bounds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v0, p6

    :goto_1f
    move-object/from16 v18, v3

    move-object/from16 p6, v4

    move-object/from16 v19, v5

    :goto_20
    const/4 v10, 0x1

    :goto_21
    const/4 v11, 0x0

    goto/16 :goto_24

    .line 162
    :cond_3c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v1, :cond_3f

    if-eqz v10, :cond_3f

    iget-boolean v1, v10, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v1, :cond_3f

    .line 163
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityRecord;->mIsUnhandledDropLaunch:Z

    if-eqz v1, :cond_3f

    .line 164
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 165
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3d

    .line 166
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 167
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 168
    :cond_3d
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 169
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3e

    .line 170
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "inherit-unhandled-drop-bounds="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1f

    :cond_3f
    if-eqz v18, :cond_42

    .line 172
    iget-object v1, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object v1, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v15, v5, v4, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 174
    iget-object v1, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    if-eqz v9, :cond_40

    const/4 v0, 0x5

    .line 175
    :cond_40
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bounds-from-layout="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v18, v3

    move-object/from16 p6, v4

    move-object/from16 v19, v5

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto/16 :goto_24

    .line 177
    :cond_41
    const-string v1, "empty-window-layout"

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v18, v3

    move-object/from16 p6, v4

    move-object/from16 v19, v5

    goto/16 :goto_23

    :cond_42
    const/4 v1, 0x6

    if-ne v0, v1, :cond_43

    if-eqz v11, :cond_43

    .line 178
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 179
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "multiwindow-activity-options-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_43
    if-eqz v9, :cond_4b

    .line 181
    iget-boolean v1, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_4b

    .line 182
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_4b

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v1, :cond_44

    .line 183
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    if-ne v1, v2, :cond_4b

    .line 184
    :cond_44
    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 185
    iget-object v2, v1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 186
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget-object v2, v1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4b

    iget v1, v1, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    .line 187
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 188
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    move-object/from16 v18, v3

    iget-object v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 189
    iget v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 190
    iget-object v10, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 191
    iget v10, v10, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 p6, v4

    .line 192
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 193
    iget-object v12, v6, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v12, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 194
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v5, :cond_45

    if-eqz v8, :cond_45

    iget-boolean v5, v6, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_45

    .line 195
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v5

    if-nez v5, :cond_45

    .line 196
    iget-object v3, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_22

    .line 197
    :cond_45
    invoke-static {v10, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v5

    const/4 v11, 0x1

    if-eq v5, v11, :cond_46

    const/4 v11, 0x3

    if-ne v5, v11, :cond_47

    .line 198
    :cond_46
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v12, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 199
    :cond_47
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v11, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v5, v11

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v2, v2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v11, v5, v2

    const/high16 v12, 0x3f000000    # 0.5f

    if-eqz v11, :cond_48

    .line 201
    iget v11, v1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v1, Landroid/graphics/Rect;->left:I

    .line 202
    iget v11, v1, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float/2addr v11, v12

    float-to-int v5, v11

    iput v5, v1, Landroid/graphics/Rect;->right:I

    :cond_48
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_49

    .line 203
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v12

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 204
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v12

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_49
    if-eq v3, v10, :cond_4a

    .line 205
    invoke-virtual {v6, v3, v1, v10}, Lcom/android/server/wm/DisplayContent;->rotateBounds(ILandroid/graphics/Rect;I)V

    .line 206
    :cond_4a
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "freeform-persist-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_4b
    move-object/from16 v18, v3

    move-object/from16 p6, v4

    move-object/from16 v19, v5

    if-eqz v9, :cond_4c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4c

    .line 207
    iput v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_4c
    :goto_23
    const/4 v10, 0x0

    goto/16 :goto_21

    .line 208
    :goto_24
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v1, :cond_4e

    if-eqz v8, :cond_4e

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    goto :goto_25

    :cond_4d
    const/4 v1, 0x0

    .line 210
    throw v1

    .line 211
    :cond_4e
    :goto_25
    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 212
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-nez v1, :cond_4f

    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez v1, :cond_4f

    goto/16 :goto_2a

    :cond_4f
    if-nez v10, :cond_57

    .line 213
    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_50

    .line 214
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 215
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 216
    iget v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v2, :cond_57

    .line 217
    :cond_50
    iget v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v1, :cond_53

    .line 218
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x5

    if-eqz v9, :cond_51

    if-ne v0, v1, :cond_51

    goto :goto_26

    .line 219
    :cond_51
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_26
    if-eq v0, v1, :cond_52

    const/4 v1, 0x1

    goto :goto_27

    :cond_52
    const/4 v1, 0x0

    .line 220
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inherit-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_28

    .line 221
    :cond_53
    iget-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v1, 0x0

    .line 222
    :goto_28
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 223
    iget v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 224
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_54

    goto :goto_29

    .line 225
    :cond_54
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x5

    if-ne v0, v1, :cond_55

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inherit-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_55
    const/4 v9, 0x1

    goto :goto_2b

    :cond_56
    :goto_29
    move v9, v1

    goto :goto_2b

    :cond_57
    :goto_2a
    const/4 v9, 0x0

    .line 227
    :goto_2b
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v1, 0x2

    if-ne v0, v1, :cond_58

    .line 228
    const-string/jumbo v1, "picture-in-picture"

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object/from16 v27, p6

    move-object/from16 v20, v6

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v24, v11

    move-object/from16 v13, v18

    move-object/from16 v26, v19

    const/16 p2, 0x5

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v10, p5

    move/from16 v19, v0

    goto/16 :goto_3f

    .line 229
    :cond_58
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_MODE:Z

    if-eqz v1, :cond_76

    .line 230
    sget-object v1, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    sget-object v2, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 233
    iget v3, v2, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    move-object/from16 v12, p5

    move-object/from16 v5, v19

    goto :goto_2d

    .line 234
    :cond_59
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_76

    move-object/from16 v12, p5

    move-object/from16 v5, v19

    .line 235
    invoke-virtual {v7, v5, v15, v12}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 236
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5c

    :cond_5a
    move/from16 v19, v0

    :cond_5b
    :goto_2c
    move-object/from16 v26, v5

    move-object/from16 v20, v6

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v24, v11

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v9, p7

    goto/16 :goto_3d

    .line 237
    :cond_5c
    :goto_2d
    iget-object v3, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 238
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 239
    iget-object v2, v2, Lcom/android/server/wm/SizeCompatPolicyManager;->mDisplayIdsForActiveMode:Landroid/util/SparseArray;

    move/from16 v19, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5b

    .line 240
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DexSizeCompatController;->getCompatPolicy(Lcom/android/server/wm/Task;)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    move-result-object v0

    if-nez v0, :cond_64

    .line 241
    sget-object v2, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 242
    iget v3, v2, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    const/4 v4, 0x0

    if-nez v3, :cond_5d

    goto :goto_2f

    .line 243
    :cond_5d
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_5e

    goto :goto_2f

    :cond_5e
    if-eqz v5, :cond_62

    .line 244
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v20

    if-nez v20, :cond_5f

    goto :goto_2f

    :cond_5f
    const/4 v3, 0x0

    .line 245
    invoke-static {v3, v4}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    move-result-object v21

    if-eqz v21, :cond_60

    goto :goto_2f

    .line 246
    :cond_60
    iget v2, v2, Lcom/android/server/wm/SizeCompatPolicyManager;->mLaunchPolicy:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_61

    :goto_2e
    const/4 v4, 0x1

    goto :goto_2f

    .line 247
    :cond_61
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-nez v2, :cond_62

    goto :goto_2e

    :cond_62
    :goto_2f
    if-eqz v4, :cond_63

    goto :goto_30

    .line 248
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interceptCalculateIfPossible: root="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tda="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SizeCompatPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :cond_64
    :goto_30
    if-nez v8, :cond_65

    move-object/from16 v26, v5

    move-object/from16 v20, v6

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v24, v11

    const/4 v3, 0x5

    goto/16 :goto_3a

    :cond_65
    if-nez v0, :cond_67

    .line 249
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_66

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "createCompatPolicy: Display is null, task="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tda="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SizeCompatPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_31

    .line 251
    :cond_66
    new-instance v2, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    invoke-direct {v2, v8, v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 252
    sget-object v0, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 253
    invoke-virtual {v0, v8, v2}, Lcom/android/server/wm/SizeCompatPolicyManager;->setCompatPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;)V

    move-object v0, v2

    :goto_31
    if-nez v0, :cond_67

    goto/16 :goto_2c

    .line 254
    :cond_67
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 255
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v20, v6

    .line 257
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v13, p3

    if-eqz v13, :cond_68

    .line 258
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v21

    goto :goto_32

    .line 259
    :cond_68
    invoke-virtual {v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    move-result v21

    .line 260
    :goto_32
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v22

    const/16 v17, 0x1

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_6e

    .line 261
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    move/from16 v23, v9

    .line 262
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 263
    invoke-static/range {v21 .. v21}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    move-result v24

    if-eqz v24, :cond_69

    move/from16 v24, v11

    .line 264
    invoke-static {v13, v9}, Lcom/samsung/android/core/CompatUtils;->getConfigurationOrientation(II)I

    move-result v11

    .line 265
    iput v11, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    move/from16 v25, v10

    goto :goto_33

    :cond_69
    move/from16 v24, v11

    move/from16 v25, v10

    move/from16 v11, v21

    .line 266
    :goto_33
    iget-object v10, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v10, :cond_6a

    .line 267
    invoke-virtual {v0, v10}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getStableBounds(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_34

    :cond_6a
    move-object v10, v3

    .line 268
    :goto_34
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    move-object/from16 v26, v5

    .line 269
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gt v13, v12, :cond_6d

    if-le v9, v5, :cond_6b

    goto :goto_35

    .line 270
    :cond_6b
    iget-object v5, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v5}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getFrameByOrientation(ILandroid/graphics/Rect;)V

    .line 271
    iget-object v5, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTmpFullScreenBounds:Landroid/graphics/Rect;

    .line 272
    invoke-static {v5, v2}, Lcom/samsung/android/core/CompatUtils;->getCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    move-result v9

    .line 273
    iget v12, v1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    cmpg-float v12, v9, v12

    if-gez v12, :cond_6c

    .line 274
    invoke-virtual {v0, v11, v10, v5}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getMinScale(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v5

    cmpg-float v10, v9, v5

    if-gez v10, :cond_6c

    move v9, v5

    .line 275
    :cond_6c
    invoke-static {v9}, Lcom/samsung/android/core/CompatUtils;->adjustRoundScale(F)F

    move-result v5

    iput v5, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    goto :goto_36

    .line 276
    :cond_6d
    :goto_35
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_36

    :cond_6e
    move-object/from16 v26, v5

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v11, v21

    .line 277
    :goto_36
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 278
    invoke-virtual {v0}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTopOrientationInTask()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->isRotatable(I)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 279
    iget v1, v1, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    :goto_37
    const/4 v5, 0x1

    goto :goto_38

    .line 280
    :cond_6f
    iget v1, v0, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    goto :goto_37

    .line 281
    :goto_38
    invoke-virtual {v0, v3, v11, v1, v5}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->getTaskBounds(Landroid/graphics/Rect;IFZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 282
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    :cond_70
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 284
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, v4, :cond_72

    .line 285
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, v6, :cond_72

    :cond_71
    const/4 v3, 0x5

    goto :goto_39

    :cond_72
    if-nez v22, :cond_73

    .line 286
    invoke-static {v3, v2}, Lcom/samsung/android/core/CompatUtils;->adjustBoundsToCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_73
    const/4 v3, 0x5

    .line 287
    iput v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_3a

    .line 288
    :goto_39
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x1

    .line 289
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 290
    :goto_3a
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 291
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v2, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v8, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;)V

    const/4 v6, 0x0

    invoke-virtual {v15, v2, v6}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 294
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v7, v2, v1, v0, v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    :goto_3b
    move/from16 v9, p7

    const/4 v0, 0x1

    goto :goto_3c

    :cond_74
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_3b

    :goto_3c
    if-eq v9, v0, :cond_75

    move-object/from16 v10, p5

    move-object/from16 v27, p6

    move/from16 p2, v3

    move v11, v6

    move-object/from16 v13, v18

    const/4 v9, -0x1

    const/4 v12, 0x2

    goto/16 :goto_40

    :cond_75
    move-object/from16 v10, p5

    move-object/from16 v27, p6

    move/from16 p2, v3

    move v11, v6

    move-object/from16 v13, v18

    const/4 v9, -0x1

    goto/16 :goto_3f

    :cond_76
    move-object/from16 v20, v6

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v24, v11

    move-object/from16 v26, v19

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move/from16 v9, p7

    move/from16 v19, v0

    .line 295
    :goto_3d
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_75

    move-object/from16 v10, p5

    move-object/from16 v5, v26

    .line 296
    invoke-virtual {v7, v5, v15, v10}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v11, 0x5

    if-eqz p6, :cond_77

    .line 297
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 298
    iget-object v12, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v5

    const/4 v13, -0x1

    move-object v2, v15

    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v3, p6

    move-object/from16 v27, p6

    const/4 v9, -0x1

    move v4, v11

    move-object/from16 v26, v5

    move/from16 v5, v25

    move v11, v6

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    const/4 v6, 0x1

    goto :goto_3e

    :cond_77
    move-object/from16 v27, p6

    move/from16 p2, v3

    move-object/from16 v26, v5

    move v11, v6

    move-object/from16 v13, v18

    const/4 v9, -0x1

    move v6, v11

    .line 299
    :goto_3e
    const-string/jumbo v0, "unresizable-freeform"

    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v12, p7

    const/16 v19, 0x5

    goto :goto_40

    :cond_78
    move-object/from16 v27, p6

    move/from16 p2, v3

    move-object/from16 v26, v5

    move v11, v6

    move-object/from16 v13, v18

    const/4 v9, -0x1

    .line 300
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 301
    const-string/jumbo v0, "unresizable-forced-maximize"

    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v12, p7

    const/16 v19, 0x1

    goto :goto_40

    :cond_79
    move-object/from16 v27, p6

    move-object/from16 v20, v6

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v24, v11

    move-object/from16 v13, v18

    move-object/from16 v26, v19

    const/16 p2, 0x5

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v10, p5

    move/from16 v19, v0

    .line 302
    const-string/jumbo v0, "non-freeform-task-display-area"

    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_3f
    move/from16 v12, p7

    move v6, v11

    :goto_40
    if-nez v19, :cond_7b

    .line 303
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 304
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 305
    invoke-virtual {v15, v0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v1

    if-nez v1, :cond_7a

    .line 306
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notMinimizedFreeform-to-display-windowing-mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v3, p2

    move v4, v0

    move-object/from16 v5, v20

    goto :goto_41

    .line 310
    :cond_7a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freeform-task"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-static/range {p2 .. p2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move/from16 v3, p2

    move v4, v3

    goto :goto_41

    :cond_7b
    move-object/from16 v5, v20

    :cond_7c
    move/from16 v3, p2

    move/from16 v4, v19

    :goto_41
    if-ne v4, v3, :cond_7d

    .line 314
    iput v4, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :goto_42
    const/4 v0, 0x1

    goto :goto_44

    .line 315
    :cond_7d
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v4, v0, :cond_7e

    move v0, v11

    goto :goto_43

    :cond_7e
    move v0, v4

    .line 316
    :goto_43
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_42

    :goto_44
    if-ne v12, v0, :cond_7f

    goto/16 :goto_13

    :cond_7f
    if-eqz v4, :cond_80

    move v2, v4

    goto :goto_45

    .line 317
    :cond_80
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    move v2, v0

    :goto_45
    if-eqz v10, :cond_82

    .line 318
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_81

    .line 319
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v0

    if-ne v0, v9, :cond_81

    goto :goto_46

    :cond_81
    move/from16 p6, v2

    move v11, v3

    move-object/from16 v28, v5

    move-object/from16 v9, v26

    move-object/from16 v13, v27

    const/16 v16, 0x1

    goto/16 :goto_49

    .line 320
    :cond_82
    :goto_46
    iget-object v0, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, v26

    invoke-static {v10, v9, v8}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v8

    .line 322
    new-instance v0, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v2, v8}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;II)V

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 323
    iget-object v0, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_86

    if-eq v0, v15, :cond_86

    .line 324
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v4, v0, :cond_83

    move v0, v11

    goto :goto_47

    :cond_83
    move v0, v4

    .line 325
    :goto_47
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v24, :cond_85

    .line 326
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 327
    iget-object v0, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v13, v27

    invoke-virtual {v7, v0, v9, v13, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 328
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v25, v0

    :cond_84
    move/from16 p6, v2

    move v11, v3

    move-object/from16 v28, v5

    goto :goto_48

    :cond_85
    move-object/from16 v13, v27

    const/16 v16, 0x1

    if-eqz v6, :cond_84

    .line 329
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 330
    iget-object v6, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v9

    move/from16 p6, v2

    move-object v2, v6

    move v6, v3

    move-object v3, v13

    move-object/from16 v28, v5

    move/from16 v5, v25

    move v11, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_48

    :cond_86
    move/from16 p6, v2

    move v11, v3

    move-object/from16 v28, v5

    move-object/from16 v13, v27

    const/16 v16, 0x1

    .line 331
    :goto_48
    iget-object v0, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_87

    const/4 v1, 0x0

    .line 332
    iput-object v1, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "overridden-display-area=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {v8}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static/range {p6 .. p6}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v15, v0

    .line 337
    :cond_87
    :goto_49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "display-area="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 338
    iput-object v15, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v0, 0x2

    if-ne v12, v0, :cond_89

    :cond_88
    :goto_4a
    move v6, v0

    goto/16 :goto_4e

    :cond_89
    if-eqz v23, :cond_8b

    move/from16 v4, p6

    if-ne v4, v11, :cond_88

    move-object/from16 v1, p8

    .line 339
    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v15, :cond_8a

    .line 340
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v15, v13, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 341
    :cond_8a
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance v3, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/android/server/wm/Task;Ljava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 344
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v7, v3, v2, v1, v4}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;Z)V

    goto :goto_4a

    :cond_8b
    move-object/from16 v1, p3

    move/from16 v4, p6

    .line 345
    iget-object v2, v15, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 346
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_8d

    if-eqz v10, :cond_8d

    .line 347
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isApplyBigFreeformSize()Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 349
    iget-object v1, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    move-object/from16 v2, v28

    .line 350
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 351
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_8c

    const v2, 0x3f733333    # 0.95f

    .line 352
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 353
    :cond_8c
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "big-freeform-bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_4a

    :cond_8d
    if-eqz v1, :cond_8e

    .line 355
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_8e

    .line 356
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    move-object/from16 v1, p4

    move/from16 v6, v16

    goto :goto_4b

    :cond_8e
    move-object/from16 v1, p4

    const/4 v6, 0x0

    :goto_4b
    if-eqz v1, :cond_8f

    .line 357
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_8f

    .line 358
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    goto :goto_4c

    :cond_8f
    const/16 v16, 0x0

    :goto_4c
    if-ne v4, v11, :cond_91

    if-nez v6, :cond_90

    if-eqz v16, :cond_91

    :cond_90
    if-eqz v16, :cond_92

    .line 359
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 360
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 361
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 362
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4d

    :cond_91
    if-eqz v1, :cond_92

    .line 363
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_92

    if-ne v4, v11, :cond_92

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 364
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 365
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne v2, v15, :cond_92

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v2, :cond_92

    .line 366
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 367
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 368
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 369
    iget-object v3, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 370
    iget v3, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepHorizontal:I

    iget-object v5, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    .line 371
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 372
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 373
    iget v5, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mDefaultFreeformStepVertical:I

    iget-object v8, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v1

    .line 374
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 375
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 376
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 377
    :cond_92
    :goto_4d
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 p1, p0

    move-object/from16 p2, v9

    move-object/from16 p3, v15

    move-object/from16 p4, v13

    move/from16 p5, v4

    move/from16 p6, v25

    move-object/from16 p7, v1

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto/16 :goto_4a

    .line 378
    :goto_4e
    iget-object v0, v7, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    if-eq p1, v3, :cond_1

    .line 13
    .line 14
    const/16 v4, 0xb

    .line 15
    .line 16
    if-eq p1, v4, :cond_2

    .line 17
    .line 18
    const/16 v4, 0xc

    .line 19
    .line 20
    if-eq p1, v4, :cond_1

    .line 21
    .line 22
    if-eq p1, v1, :cond_0

    .line 23
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    move p1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :pswitch_0
    move p1, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :pswitch_1
    const-string p1, "activity-requested-portrait"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move p1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    :pswitch_2
    const-string p1, "activity-requested-landscape"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move p1, v0

    .line 44
    :goto_0
    if-ne p1, v1, :cond_7

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 57
    .line 58
    if-eq p1, v3, :cond_3

    .line 59
    .line 60
    const/4 p2, 0x2

    .line 61
    if-eq p1, p2, :cond_4

    .line 62
    .line 63
    move v0, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v0, v3

    .line 66
    :cond_4
    :goto_1
    move p1, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_5
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    :goto_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_6

    .line 77
    .line 78
    const-string p2, "locked-orientation-from-display="

    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    goto :goto_3

    .line 85
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v0, "locked-orientation-from-bounds="

    .line 88
    .line 89
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    if-ne p1, v2, :cond_a

    .line 103
    .line 104
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    :goto_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_9

    .line 120
    .line 121
    const-string p1, "default-portrait"

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo p2, "orientation-from-bounds="

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move p1, v3

    .line 143
    :cond_a
    return p1

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    if-eqz p3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/MultiTaskingTaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 p2, 0x5

    .line 46
    if-ne p1, p2, :cond_2

    .line 47
    .line 48
    if-eq p3, p0, :cond_2

    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    :goto_0
    return v1
.end method
