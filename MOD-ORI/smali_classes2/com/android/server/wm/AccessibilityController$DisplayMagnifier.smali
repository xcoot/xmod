.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field public final mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field public final mCircularPath:Landroid/graphics/Path;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

.field public mIsFullscreenMagnificationActivated:Z

.field public final mLongAnimationDuration:J

.field public final mMagnificationRegion:Landroid/graphics/Region;

.field public final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public final mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field public final mOldMagnificationRegion:Landroid/graphics/Region;

.field public final mScreenSize:Landroid/graphics/Point;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mTempLayer:I

.field public final mTempMatrix:Landroid/graphics/Matrix;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTempRegion1:Landroid/graphics/Region;

.field public final mTempRegion2:Landroid/graphics/Region;

.field public final mTempRegion3:Landroid/graphics/Region;

.field public final mTempRegion4:Landroid/graphics/Region;

.field public final mTempWindowStates:Landroid/util/SparseArray;

.field public final mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
    .locals 6

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
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Region;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Region;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Region;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/Region;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mIsFullscreenMagnificationActivated:Z

    .line 48
    .line 49
    new-instance v1, Landroid/graphics/Region;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 55
    .line 56
    new-instance v1, Landroid/graphics/Region;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 62
    .line 63
    new-instance v1, Landroid/view/MagnificationSpec;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 69
    .line 70
    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    .line 71
    .line 72
    new-instance v0, Landroid/graphics/Point;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    .line 78
    .line 79
    new-instance v1, Landroid/util/SparseArray;

    .line 80
    .line 81
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempWindowStates:Landroid/util/SparseArray;

    .line 85
    .line 86
    new-instance v1, Landroid/graphics/RectF;

    .line 87
    .line 88
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v1, Landroid/graphics/Matrix;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempMatrix:Landroid/graphics/Matrix;

    .line 97
    .line 98
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v1, p3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 107
    .line 108
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 109
    .line 110
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 111
    .line 112
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    .line 113
    .line 114
    new-instance v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 115
    .line 116
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 117
    .line 118
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 124
    .line 125
    .line 126
    iput-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 127
    .line 128
    new-instance v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    .line 129
    .line 130
    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;)V

    .line 131
    .line 132
    .line 133
    iput-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    .line 134
    .line 135
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    const/4 v3, 0x0

    .line 140
    if-eqz v2, :cond_0

    .line 141
    .line 142
    move-object v2, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_0
    new-instance v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 145
    .line 146
    invoke-direct {v2, p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    .line 147
    .line 148
    .line 149
    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iput-object v2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    const v5, 0x10e0002

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    int-to-long v4, v4

    .line 169
    iput-wide v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isScreenRound()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_1

    .line 184
    .line 185
    new-instance v1, Landroid/graphics/Path;

    .line 186
    .line 187
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCircularPath:Landroid/graphics/Path;

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getDisplaySizeLocked(Landroid/graphics/Point;)V

    .line 193
    .line 194
    .line 195
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 196
    .line 197
    div-int/lit8 v0, v0, 0x2

    .line 198
    .line 199
    int-to-float v0, v0

    .line 200
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 201
    .line 202
    invoke-virtual {v1, v0, v0, v0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_1
    iput-object v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCircularPath:Landroid/graphics/Path;

    .line 207
    .line 208
    :goto_1
    const-wide/16 v0, 0x800

    .line 209
    .line 210
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_2

    .line 215
    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string/jumbo v4, "windowManagerService={"

    .line 219
    .line 220
    .line 221
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string/jumbo p1, "}; displayContent={"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string/jumbo p1, "}; display={"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string/jumbo p1, "}; callbacks={"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string/jumbo p1, "}"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string p2, "WindowManager.DisplayMagnifier.constructor"

    .line 265
    .line 266
    invoke-virtual {v2, p2, v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    .line 270
    .line 271
    .line 272
    return-void
.end method


# virtual methods
.method public final getDisplaySizeLocked(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final isFullscreenMagnificationActivated()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    const-string v3, "WindowManager.isFullscreenMagnificationActivated"

    .line 12
    .line 13
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mIsFullscreenMagnificationActivated:Z

    .line 17
    .line 18
    return p0
.end method

.method public final notifyImeWindowVisibilityChanged(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    .line 2
    .line 3
    const-wide/16 v1, 0x800

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v4, "shown="

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "WindowManager.notifyImeWindowVisibilityChanged"

    .line 27
    .line 28
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 32
    .line 33
    const/4 v0, 0x6

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final recomputeBounds()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getDisplaySizeLocked(Landroid/graphics/Point;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mScreenSize:Landroid/graphics/Point;

    .line 9
    .line 10
    iget v8, v1, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 18
    .line 19
    .line 20
    iget-object v10, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 21
    .line 22
    invoke-virtual {v10, v9, v9, v8, v1}, Landroid/graphics/Region;->set(IIII)Z

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCircularPath:Landroid/graphics/Path;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v10, v2, v10}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v11, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    .line 33
    .line 34
    invoke-virtual {v11, v9, v9, v9, v9}, Landroid/graphics/Region;->set(IIII)Z

    .line 35
    .line 36
    .line 37
    iget-object v12, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempWindowStates:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 40
    .line 41
    .line 42
    iput v9, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    .line 43
    .line 44
    new-instance v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v2, v0, v12}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/util/SparseArray;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    .line 51
    invoke-virtual {v3, v2, v9}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    .line 56
    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    new-instance v2, Landroid/graphics/Region;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 85
    .line 86
    .line 87
    :goto_0
    move-object v13, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const/4 v2, 0x0

    .line 90
    goto :goto_0

    .line 91
    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v14, 0x1

    .line 96
    sub-int/2addr v2, v14

    .line 97
    move v15, v2

    .line 98
    :goto_2
    if-ltz v15, :cond_c

    .line 99
    .line 100
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 105
    .line 106
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 109
    .line 110
    const/16 v5, 0x7eb

    .line 111
    .line 112
    if-eq v4, v5, :cond_b

    .line 113
    .line 114
    const/16 v5, 0x7f7

    .line 115
    .line 116
    if-ne v4, v5, :cond_2

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_2
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 121
    .line 122
    const/high16 v4, 0x200000

    .line 123
    .line 124
    and-int/2addr v4, v3

    .line 125
    if-nez v4, :cond_b

    .line 126
    .line 127
    const/high16 v4, 0x100000

    .line 128
    .line 129
    and-int/2addr v3, v4

    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempMatrix:Landroid/graphics/Matrix;

    .line 135
    .line 136
    sget-object v4, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    .line 137
    .line 138
    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 139
    .line 140
    .line 141
    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 144
    .line 145
    .line 146
    iget-object v6, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 147
    .line 148
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 149
    .line 150
    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 151
    .line 152
    iget v14, v7, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    neg-int v14, v14

    .line 155
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 156
    .line 157
    neg-int v7, v7

    .line 158
    invoke-virtual {v5, v14, v7}, Landroid/graphics/Region;->translate(II)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 162
    .line 163
    .line 164
    aget v3, v4, v9

    .line 165
    .line 166
    invoke-virtual {v5, v3}, Landroid/graphics/Region;->scale(F)V

    .line 167
    .line 168
    .line 169
    const/4 v3, 0x2

    .line 170
    aget v3, v4, v3

    .line 171
    .line 172
    float-to-int v3, v3

    .line 173
    const/4 v7, 0x5

    .line 174
    aget v4, v4, v7

    .line 175
    .line 176
    float-to-int v4, v4

    .line 177
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Region;->translate(II)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 181
    .line 182
    .line 183
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 184
    .line 185
    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 188
    .line 189
    .line 190
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 191
    .line 192
    invoke-virtual {v3, v11, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 193
    .line 194
    .line 195
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 196
    .line 197
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_4

    .line 205
    .line 206
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 207
    .line 208
    invoke-virtual {v3, v6, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 209
    .line 210
    .line 211
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 212
    .line 213
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 214
    .line 215
    invoke-virtual {v3, v10, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_4
    invoke-virtual {v11, v6, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v6, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 223
    .line 224
    .line 225
    :goto_3
    if-eqz v13, :cond_5

    .line 226
    .line 227
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_5

    .line 232
    .line 233
    invoke-virtual {v13, v6, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 234
    .line 235
    .line 236
    :cond_5
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 237
    .line 238
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 239
    .line 240
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 241
    .line 242
    const/16 v7, 0x7e3

    .line 243
    .line 244
    if-eq v6, v7, :cond_6

    .line 245
    .line 246
    move v3, v9

    .line 247
    goto :goto_4

    .line 248
    :cond_6
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    :goto_4
    if-eqz v3, :cond_8

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-eqz v3, :cond_7

    .line 262
    .line 263
    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 264
    .line 265
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    goto :goto_5

    .line 270
    :cond_7
    sget-object v3, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 271
    .line 272
    :goto_5
    invoke-virtual {v11, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 276
    .line 277
    .line 278
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_a

    .line 283
    .line 284
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 285
    .line 286
    if-nez v3, :cond_9

    .line 287
    .line 288
    new-instance v2, Landroid/graphics/Region;

    .line 289
    .line 290
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-static {v2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    sget-object v7, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 307
    .line 308
    invoke-static {v3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-static {v7, v3}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 317
    .line 318
    .line 319
    new-instance v3, Landroid/graphics/Region;

    .line 320
    .line 321
    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 328
    .line 329
    .line 330
    move-object v2, v3

    .line 331
    :goto_6
    invoke-virtual {v11, v2, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 332
    .line 333
    .line 334
    invoke-virtual {v10, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 335
    .line 336
    .line 337
    :cond_a
    iget-object v14, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 338
    .line 339
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 340
    .line 341
    invoke-virtual {v14, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 342
    .line 343
    .line 344
    invoke-virtual {v14, v11, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 345
    .line 346
    .line 347
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 348
    .line 349
    const/4 v3, 0x0

    .line 350
    const/4 v4, 0x0

    .line 351
    move-object v2, v14

    .line 352
    move v5, v8

    .line 353
    move v6, v1

    .line 354
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 355
    .line 356
    .line 357
    invoke-virtual {v14}, Landroid/graphics/Region;->isRect()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_b

    .line 362
    .line 363
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 364
    .line 365
    invoke-virtual {v14, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-ne v3, v8, :cond_b

    .line 373
    .line 374
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-ne v2, v1, :cond_b

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_b
    :goto_7
    add-int/lit8 v15, v15, -0x1

    .line 382
    .line 383
    const/4 v14, 0x1

    .line 384
    goto/16 :goto_2

    .line 385
    .line 386
    :cond_c
    :goto_8
    if-eqz v13, :cond_d

    .line 387
    .line 388
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 389
    .line 390
    invoke-virtual {v13, v11, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 391
    .line 392
    .line 393
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 394
    .line 395
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 396
    .line 397
    invoke-virtual {v2, v13, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 398
    .line 399
    .line 400
    :cond_d
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez v2, :cond_e

    .line 408
    .line 409
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 410
    .line 411
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 412
    .line 413
    iget-object v10, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 414
    .line 415
    iget v12, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 416
    .line 417
    sub-int v13, v8, v12

    .line 418
    .line 419
    sub-int v14, v1, v12

    .line 420
    .line 421
    sget-object v15, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 422
    .line 423
    move v11, v12

    .line 424
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 425
    .line 426
    .line 427
    :cond_e
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 428
    .line 429
    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 430
    .line 431
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    const/4 v3, 0x1

    .line 436
    xor-int/2addr v2, v3

    .line 437
    if-eqz v2, :cond_12

    .line 438
    .line 439
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-nez v2, :cond_11

    .line 444
    .line 445
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 446
    .line 447
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 448
    .line 449
    iget-object v4, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 450
    .line 451
    iget-object v4, v4, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 452
    .line 453
    iget-object v5, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 454
    .line 455
    iget-object v5, v5, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 456
    .line 457
    iget-object v5, v5, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 458
    .line 459
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 460
    .line 461
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 462
    .line 463
    .line 464
    monitor-enter v5

    .line 465
    :try_start_0
    iget-object v6, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 466
    .line 467
    invoke-virtual {v6, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    if-eqz v6, :cond_f

    .line 472
    .line 473
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 475
    .line 476
    .line 477
    goto :goto_9

    .line 478
    :catchall_0
    move-exception v0

    .line 479
    goto :goto_a

    .line 480
    :cond_f
    :try_start_1
    iget-object v6, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mBounds:Landroid/graphics/Region;

    .line 481
    .line 482
    invoke-virtual {v6, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 483
    .line 484
    .line 485
    iget-object v4, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mDirtyRect:Landroid/graphics/Rect;

    .line 486
    .line 487
    invoke-virtual {v3, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 488
    .line 489
    .line 490
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 492
    .line 493
    .line 494
    :goto_9
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 495
    .line 496
    iget-object v4, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 497
    .line 498
    iget-boolean v5, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 499
    .line 500
    if-eqz v5, :cond_10

    .line 501
    .line 502
    iput-boolean v9, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 503
    .line 504
    iget v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 505
    .line 506
    sub-int/2addr v8, v3

    .line 507
    sub-int/2addr v1, v3

    .line 508
    invoke-virtual {v4, v3, v3, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 509
    .line 510
    .line 511
    iget-object v1, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 512
    .line 513
    invoke-virtual {v1, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 514
    .line 515
    .line 516
    goto :goto_b

    .line 517
    :cond_10
    iget-object v1, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 518
    .line 519
    iget-object v3, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 520
    .line 521
    invoke-virtual {v1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 522
    .line 523
    .line 524
    iget-object v3, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 525
    .line 526
    iget-object v3, v3, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 527
    .line 528
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    .line 529
    .line 530
    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 534
    .line 535
    .line 536
    iget-object v1, v2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 537
    .line 538
    invoke-virtual {v1, v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->invalidate(Landroid/graphics/Rect;)V

    .line 539
    .line 540
    .line 541
    goto :goto_b

    .line 542
    :goto_a
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_11
    :goto_b
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 548
    .line 549
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 550
    .line 551
    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 552
    .line 553
    .line 554
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    iget-object v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnificationRegion:Landroid/graphics/Region;

    .line 559
    .line 560
    invoke-static {v2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 565
    .line 566
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    .line 567
    .line 568
    const/4 v2, 0x1

    .line 569
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 574
    .line 575
    .line 576
    :cond_12
    return-void
.end method
