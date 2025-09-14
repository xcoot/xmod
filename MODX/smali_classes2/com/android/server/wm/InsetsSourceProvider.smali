.class public Lcom/android/server/wm/InsetsSourceProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field public mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

.field public mClientVisible:Z

.field public mControl:Landroid/view/InsetsSourceControl;

.field public mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public final mControllable:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFakeControl:Landroid/view/InsetsSourceControl;

.field public mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFlagsFromFrameProvider:I

.field public mFlagsFromServer:I

.field public mFrameProvider:Lcom/android/internal/util/function/TriFunction;

.field public mHasPendingPosition:Z

.field public mInsetsHint:Landroid/graphics/Insets;

.field public mInsetsHintStale:Z

.field public mIsLeashReadyForDispatching:Z

.field public final mLastSourceFrame:Landroid/graphics/Rect;

.field public mOverrideFrameProviders:Landroid/util/SparseArray;

.field public final mOverrideFrames:Landroid/util/SparseArray;

.field public mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mSeamlessRotating:Z

.field public mServerVisible:Z

.field public final mSetLeashPositionConsumer:Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;

.field public final mSource:Landroid/view/InsetsSource;

.field public final mSourceFrame:Landroid/graphics/Rect;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/InsetsSourceProvider;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 9

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
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mLastSourceFrame:Landroid/graphics/Rect;

    .line 31
    .line 32
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 33
    .line 34
    iput-object v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 38
    .line 39
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    and-int/2addr v1, v2

    .line 48
    const/4 v8, 0x0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    move v1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v8

    .line 54
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 57
    .line 58
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 61
    .line 62
    new-instance p2, Landroid/view/InsetsSourceControl;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    new-instance v6, Landroid/graphics/Point;

    .line 73
    .line 74
    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    move-object v1, p2

    .line 80
    invoke-direct/range {v1 .. v7}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    .line 84
    .line 85
    sget p2, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    and-int/2addr p1, p2

    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move v0, v8

    .line 96
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 97
    .line 98
    new-instance p1, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSetLeashPositionConsumer:Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, "  "

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "mSource="

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 62
    .line 63
    const-string v1, ""

    .line 64
    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v2, "mSourceFrame="

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v2, "mOverrideFrames="

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 129
    .line 130
    if-eqz v0, :cond_1

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, "mControl="

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 153
    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/view/InsetsSourceControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 155
    .line 156
    .line 157
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 158
    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, "mInsetsHint="

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 187
    .line 188
    if-eqz v0, :cond_2

    .line 189
    .line 190
    const-string v0, " stale"

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 196
    .line 197
    .line 198
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "mIsLeashReadyForDispatching="

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 209
    .line 210
    .line 211
    const-string v0, " mHasPendingPosition="

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 225
    .line 226
    if-eqz v0, :cond_4

    .line 227
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string/jumbo v2, "mWindowContainer="

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 255
    .line 256
    if-eqz v0, :cond_5

    .line 257
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v2, "mAdapter="

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 279
    .line 280
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 284
    .line 285
    if-eqz v0, :cond_6

    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v1, "mControlTarget="

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 308
    .line 309
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 313
    .line 314
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 315
    .line 316
    if-eq v0, v1, :cond_7

    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string/jumbo v1, "mPendingControlTarget="

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 345
    .line 346
    if-eqz v0, :cond_8

    .line 347
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string p2, "mFakeControlTarget="

    .line 357
    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 369
    .line 370
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 6
    .line 7
    const-wide v1, 0x10b00000001L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    const-wide v1, 0x10b00000002L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    .line 26
    .line 27
    const-wide v1, 0x10b00000003L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-wide v1, 0x10b00000004L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-wide v1, 0x10b00000005L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 76
    .line 77
    if-eq v0, v1, :cond_2

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 86
    .line 87
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-wide v1, 0x10b00000006L

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 110
    .line 111
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-wide v1, 0x10b00000007L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    const-wide v1, 0x10b00000008L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 137
    .line 138
    .line 139
    :cond_4
    const-wide v0, 0x1080000000aL

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 145
    .line 146
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 147
    .line 148
    .line 149
    const-wide v0, 0x1080000000bL

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 155
    .line 156
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 157
    .line 158
    .line 159
    const-wide v0, 0x1080000000cL

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 165
    .line 166
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 167
    .line 168
    .line 169
    const-wide v0, 0x1080000000dL

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 177
    .line 178
    .line 179
    const-wide v0, 0x1080000000fL

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 185
    .line 186
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 190
    .line 191
    if-eqz v0, :cond_5

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    const-wide v0, 0x10b00000010L

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 211
    .line 212
    .line 213
    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isLeashReadyForDispatching()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroid/view/InsetsSourceControl;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->isInitiallyVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v0, p1

    .line 49
    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 57
    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControl:Landroid/view/InsetsSourceControl;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_2
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public getInsetsHint()Landroid/graphics/Insets;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 6
    .line 7
    return-object p0

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
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v0, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 44
    .line 45
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHint:Landroid/graphics/Insets;

    .line 46
    .line 47
    return-object p0
.end method

.method public final getWindowFrameSurfacePosition()Landroid/graphics/Point;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget v2, v1, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    if-ne v2, v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget v2, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_1
    new-instance v1, Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 80
    .line 81
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 82
    .line 83
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 84
    .line 85
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/WindowContainer;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 86
    .line 87
    .line 88
    return-object v1
.end method

.method public isLeashReadyForDispatching()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 2
    .line 3
    return p0
.end method

.method public onPostLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    move v3, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v3, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    :goto_0
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 43
    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ne v4, v5, :cond_4

    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 57
    .line 58
    if-nez v4, :cond_4

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 71
    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    move v3, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v3, v1

    .line 77
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 78
    .line 79
    if-eq v4, v3, :cond_5

    .line 80
    .line 81
    move v1, v2

    .line 82
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->updateInsetsControlPosition(Lcom/android/server/wm/WindowState;Z)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public setClientVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setFlags(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFlagsFromServer:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFlagsFromServer:I

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFlagsFromFrameProvider:I

    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFlags()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public setServerVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrameForServerVisibility()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 32
    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 35
    .line 36
    iput-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-virtual {v4, v5}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 57
    .line 58
    .line 59
    :cond_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 60
    .line 61
    aget-boolean v0, v0, v3

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    const-wide v6, 0x1522685aa46234ddL    # 7.166893265107985E-207

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriFunction;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 106
    .line 107
    .line 108
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrameProviders:Landroid/util/SparseArray;

    .line 109
    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 121
    .line 122
    const/4 p2, -0x1

    .line 123
    invoke-virtual {p1, v3, p2}, Landroid/view/InsetsSource;->setFlags(II)Landroid/view/InsetsSource;

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 150
    .line 151
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 155
    .line 156
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 157
    .line 158
    if-eq p1, p2, :cond_4

    .line 159
    .line 160
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 161
    .line 162
    invoke-virtual {p2, p1, p0, v3}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 166
    .line 167
    .line 168
    :cond_4
    :goto_0
    return-void
.end method

.method public updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 16
    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSeamlessRotating:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mPendingControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 28
    .line 29
    if-ne p1, v1, :cond_3

    .line 30
    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    .line 35
    .line 36
    if-eqz p2, :cond_4

    .line 37
    .line 38
    return-void

    .line 39
    :cond_4
    const/4 p2, 0x1

    .line 40
    const/4 v1, 0x0

    .line 41
    if-nez p1, :cond_6

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    and-int/2addr p1, v0

    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    move p2, v1

    .line 61
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getWindowFrameSurfacePosition()Landroid/graphics/Point;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    new-instance v0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 70
    .line 71
    invoke-direct {v0, p0, v7}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;Landroid/graphics/Point;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ne v0, v2, :cond_8

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 89
    .line 90
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 93
    .line 94
    if-ne v2, v3, :cond_7

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 97
    .line 98
    if-ne v0, p1, :cond_7

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    move v0, p2

    .line 105
    goto :goto_1

    .line 106
    :cond_7
    move v0, v1

    .line 107
    :goto_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_8
    move v0, v1

    .line 120
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 129
    .line 130
    iget-boolean v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 131
    .line 132
    xor-int/2addr v5, p2

    .line 133
    const/16 v6, 0x20

    .line 134
    .line 135
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 136
    .line 137
    .line 138
    iput-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashReadyForDispatching:Z

    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 141
    .line 142
    iget-object v5, v2, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 143
    .line 144
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 147
    .line 148
    .line 149
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-ne v2, v3, :cond_a

    .line 162
    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    move v6, p2

    .line 166
    goto :goto_3

    .line 167
    :cond_9
    move v6, v1

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    move v6, p1

    .line 170
    :goto_3
    new-instance p1, Landroid/view/InsetsSourceControl;

    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getInsetsHint()Landroid/graphics/Insets;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    move-object v2, p1

    .line 189
    invoke-direct/range {v2 .. v8}, Landroid/view/InsetsSourceControl;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V

    .line 190
    .line 191
    .line 192
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 193
    .line 194
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 195
    .line 196
    aget-boolean p2, p2, v1

    .line 197
    .line 198
    if-eqz p2, :cond_b

    .line 199
    .line 200
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 205
    .line 206
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 211
    .line 212
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const-wide v1, 0x56a3c45df07a3a82L    # 2.321188919541133E109

    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    const/4 v4, 0x0

    .line 223
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string/jumbo p2, "updateControlForTarget: control="

    .line 229
    .line 230
    .line 231
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p2, ", target="

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 245
    .line 246
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p0, ", from="

    .line 250
    .line 251
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const/4 p0, 0x5

    .line 255
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    const-string p1, "InsetsSourceProvider"

    .line 267
    .line 268
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    return-void
.end method

.method public final updateInsetsControlPosition(Lcom/android/server/wm/WindowState;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getWindowFrameSurfacePosition()Landroid/graphics/Point;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 11
    .line 12
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 13
    .line 14
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 25
    .line 26
    if-eqz v0, :cond_6

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSetLeashPositionConsumer:Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mHasPendingPosition:Z

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_5

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 79
    .line 80
    iget v4, v3, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v3, v3, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object v3, p1, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 97
    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v3, p1, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 106
    .line 107
    :cond_3
    iget-object v5, p1, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 108
    .line 109
    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    .line 110
    .line 111
    move-object v1, v5

    .line 112
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsSourceProvider$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    move v1, v2

    .line 116
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getInsetsHint()Landroid/graphics/Insets;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_7

    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl;->setInsetsHint(Landroid/graphics/Insets;)V

    .line 135
    .line 136
    .line 137
    move v1, v2

    .line 138
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    if-eqz p2, :cond_8

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_8
    move v2, v1

    .line 148
    :goto_2
    if-eqz v2, :cond_9

    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriFunction;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-interface {p1, v0, v2, v3}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriFunction;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFlagsFromFrameProvider:I

    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 100
    .line 101
    iget v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFlagsFromServer:I

    .line 102
    .line 103
    or-int/2addr v2, v4

    .line 104
    invoke-virtual {v3, v2}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrameForServerVisibility()V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mLastSourceFrame:Landroid/graphics/Rect;

    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, 0x1

    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mLastSourceFrame:Landroid/graphics/Rect;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 124
    .line 125
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    iput-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 129
    .line 130
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrameProviders:Landroid/util/SparseArray;

    .line 131
    .line 132
    if-eqz v2, :cond_8

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    sub-int/2addr v2, v3

    .line 139
    :goto_1
    if-ltz v2, :cond_8

    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrameProviders:Landroid/util/SparseArray;

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_6
    new-instance v4, Landroid/graphics/Rect;

    .line 168
    .line 169
    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 170
    .line 171
    .line 172
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrameProviders:Landroid/util/SparseArray;

    .line 173
    .line 174
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Lcom/android/internal/util/function/TriFunction;

    .line 179
    .line 180
    if-eqz v5, :cond_7

    .line 181
    .line 182
    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrameProviders:Landroid/util/SparseArray;

    .line 183
    .line 184
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    check-cast v5, Lcom/android/internal/util/function/TriFunction;

    .line 189
    .line 190
    iget-object v6, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 197
    .line 198
    iget-object v7, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 199
    .line 200
    invoke-interface {v5, v6, v7, v4}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v2, v2, -0x1

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 212
    .line 213
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 214
    .line 215
    if-nez v3, :cond_a

    .line 216
    .line 217
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 218
    .line 219
    if-nez v3, :cond_a

    .line 220
    .line 221
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    if-nez v3, :cond_a

    .line 224
    .line 225
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 226
    .line 227
    if-eqz v2, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 231
    .line 232
    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 237
    .line 238
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 244
    .line 245
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 249
    .line 250
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 253
    .line 254
    .line 255
    :goto_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    .line 256
    .line 257
    if-eqz p1, :cond_b

    .line 258
    .line 259
    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 260
    .line 261
    if-eqz p1, :cond_b

    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 264
    .line 265
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    .line 266
    .line 267
    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setMinimizedInsetHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 268
    .line 269
    .line 270
    :cond_b
    return-void
.end method

.method public final updateSourceFrameForServerVisibility()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSourceFrame:Landroid/graphics/Rect;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/android/server/wm/InsetsSourceProvider;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public updateVisibility()V
    .locals 10

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
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v3

    .line 21
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 25
    .line 26
    aget-boolean v1, v1, v3

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const-wide v5, -0x72454969d051c7deL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq v0, v1, :cond_2

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v1, "updateVisibility: serverVisible="

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", clientVisible="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", source="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", controlTarget="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p0, ", from="

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const/16 p0, 0xa

    .line 129
    .line 130
    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const-string v0, "InsetsSourceProvider"

    .line 142
    .line 143
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    :cond_2
    return-void
.end method
