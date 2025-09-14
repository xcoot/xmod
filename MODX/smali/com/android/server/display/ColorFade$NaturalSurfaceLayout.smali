.class public final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# instance fields
.field public final mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

.field public final mBlastControl:Landroid/view/SurfaceControl;

.field public mCallback:Lcom/android/server/display/ColorFade$1;

.field public mChildSurfaceControl:Landroid/view/SurfaceControl;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayWidth:I

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 6
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 8
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 10
    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$1;

    .line 16
    iput-object p4, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

    .line 18
    iput-object p5, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastControl:Landroid/view/SurfaceControl;

    .line 20
    iput p6, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 22
    iput p7, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 24
    return-void
.end method


# virtual methods
.method public final onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .locals 14

    .line 1
    const-string v0, "ColorFade_d"

    .line 3
    const-string v1, "ColorFade_d"

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 8
    if-nez v2, :cond_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto/16 :goto_2

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 17
    iget v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 19
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    iget v3, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v3, :cond_5

    .line 34
    if-eq v3, v5, :cond_4

    .line 36
    if-eq v3, v4, :cond_3

    .line 38
    const/4 v7, 0x3

    .line 39
    if-eq v3, v7, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 44
    iget v7, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 46
    int-to-float v7, v7

    .line 47
    invoke-virtual {p1, v3, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 50
    iget-object v9, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 52
    const/high16 v12, -0x40800000    # -1.0f

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/high16 v11, 0x3f800000    # 1.0f

    .line 58
    move-object v8, p1

    .line 59
    invoke-virtual/range {v8 .. v13}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 65
    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 67
    int-to-float v6, v6

    .line 68
    iget v7, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 70
    int-to-float v7, v7

    .line 71
    invoke-virtual {p1, v3, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 74
    iget-object v9, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 76
    const/4 v12, 0x0

    .line 77
    const/high16 v13, -0x40800000    # -1.0f

    .line 79
    const/high16 v10, -0x40800000    # -1.0f

    .line 81
    const/4 v11, 0x0

    .line 82
    move-object v8, p1

    .line 83
    invoke-virtual/range {v8 .. v13}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 89
    iget v7, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 91
    int-to-float v7, v7

    .line 92
    invoke-virtual {p1, v3, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 95
    iget-object v9, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 97
    const/high16 v12, 0x3f800000    # 1.0f

    .line 99
    const/4 v13, 0x0

    .line 100
    const/4 v10, 0x0

    .line 101
    const/high16 v11, -0x40800000    # -1.0f

    .line 103
    move-object v8, p1

    .line 104
    invoke-virtual/range {v8 .. v13}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 110
    invoke-virtual {p1, v3, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 113
    iget-object v8, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 115
    const/4 v11, 0x0

    .line 116
    const/high16 v12, 0x3f800000    # 1.0f

    .line 118
    const/high16 v9, 0x3f800000    # 1.0f

    .line 120
    const/4 v10, 0x0

    .line 121
    move-object v7, p1

    .line 122
    invoke-virtual/range {v7 .. v12}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 125
    :goto_0
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 128
    move-result v3

    .line 129
    iget v6, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 131
    if-eq v6, v3, :cond_8

    .line 133
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 136
    move-result v2

    .line 137
    const-string v6, "ColorFade"

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 146
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, " Surface Size Changing From("

    .line 151
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 156
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ","

    .line 161
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 166
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ") To("

    .line 171
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ","

    .line 179
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ")"

    .line 187
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 199
    iput v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 201
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 203
    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 206
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 208
    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 210
    iget v3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 212
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 215
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

    .line 217
    if-eqz v1, :cond_7

    .line 219
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 221
    if-nez v1, :cond_6

    .line 223
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 225
    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "_child-surface"

    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 254
    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 260
    move-result-object v0

    .line 261
    const-string v1, "ColorFade.onDisplayTransaction"

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 266
    move-result-object v0

    .line 267
    const/16 v1, 0x1e

    .line 269
    invoke-virtual {v0, v1, v4}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 276
    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 281
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 283
    invoke-virtual {p1, v0, v1, v5}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 286
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 291
    iget-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastBuffer:Landroid/graphics/BLASTBufferQueue;

    .line 293
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mBlastControl:Landroid/view/SurfaceControl;

    .line 295
    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 297
    iget v2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 299
    const/4 v3, -0x1

    .line 300
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 303
    :cond_7
    iget-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$1;

    .line 305
    if-eqz p1, :cond_8

    .line 307
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :try_start_1
    iget-object v0, p1, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    .line 310
    iput-boolean v5, v0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 312
    monitor-exit p1

    .line 313
    goto :goto_1

    .line 314
    :catchall_1
    move-exception v0

    .line 315
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    :try_start_2
    throw v0

    .line 317
    :cond_8
    :goto_1
    monitor-exit p0

    .line 318
    return-void

    .line 319
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    throw p1
.end method
