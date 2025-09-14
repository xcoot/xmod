.class public final Lcom/android/server/accessibility/magnification/MagnificationProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mController:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_4

    .line 8
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/Display;

    .line 14
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "Magnifier on display#"

    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    const-string v4, "    "

    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 60
    new-instance v3, Landroid/graphics/Region;

    .line 62
    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V

    .line 69
    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_0

    .line 75
    const-string v5, "    Magnification region="

    .line 77
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v3}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 92
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    const-string v5, "    IdOfLastServiceToMagnify="

    .line 96
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    .line 102
    move-result v5

    .line 103
    if-ne v5, v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 107
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    .line 114
    move-result v4

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 118
    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 121
    move-result-object v4

    .line 122
    iget-object v5, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 124
    monitor-enter v5

    .line 125
    :try_start_0
    iget-object v4, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 127
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 133
    if-eqz v4, :cond_2

    .line 135
    iget v4, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 137
    monitor-exit v5

    .line 138
    goto :goto_1

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const/4 v4, -0x1

    .line 143
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    .line 160
    move-result v2

    .line 161
    const/4 v3, 0x2

    .line 162
    if-ne v2, v3, :cond_3

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    const-string v3, "    TrackingTypingFocusEnabled="

    .line 168
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 173
    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isTrackingTypingFocusEnabled(I)Z

    .line 180
    move-result v1

    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 195
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 197
    goto/16 :goto_0

    .line 199
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    throw p0

    .line 201
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    const-string v0, "    SupportWindowMagnification="

    .line 205
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 210
    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    .line 212
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "    WindowMagnificationConnectionState="

    .line 230
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 235
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 238
    move-result-object p0

    .line 239
    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    .line 241
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 259
    return-void
.end method

.method public final getControllingMode(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    return v2

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 23
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 31
    move-result p0

    .line 32
    monitor-exit v0

    .line 33
    if-ne p0, v1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v1, v2

    .line 37
    :goto_0
    return v1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    const/4 p3, 0x2

    .line 13
    if-ne v0, p3, :cond_3

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 20
    move-result-object p0

    .line 21
    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter p3

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 32
    if-eqz p0, :cond_2

    .line 34
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 36
    if-nez p1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    .line 50
    :goto_1
    monitor-exit p3

    .line 51
    goto :goto_3

    .line 52
    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_3
    :goto_3
    return-void
.end method

.method public final getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 22
    const/4 p3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p3, 0x0

    .line 25
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz p3, :cond_1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 37
    :cond_1
    return-void

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    if-eqz p3, :cond_2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    .line 44
    :cond_2
    throw p2
.end method

.method public final getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 7
    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 26
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v2, 0x2

    .line 56
    if-ne v0, v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    .line 69
    move-result p0

    .line 70
    invoke-virtual {v0, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 77
    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    const/4 p0, 0x0

    .line 99
    invoke-virtual {v1, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    .line 102
    :goto_0
    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method public final resetAllIfNeeded(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    :try_start_0
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_0

    .line 20
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    move-result v4

    .line 26
    invoke-virtual {v0, v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)V

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_4

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 37
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 40
    move-result-object p0

    .line 41
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter v0

    .line 44
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 49
    move-result v1

    .line 50
    if-ge v2, v1, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    .line 60
    if-eqz v1, :cond_1

    .line 62
    iget-boolean v3, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    .line 64
    if-eqz v3, :cond_1

    .line 66
    iget v3, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    .line 68
    if-ne p1, v3, :cond_1

    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    throw p0

    .line 84
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0
.end method

.method public final setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v8, p1

    .line 5
    move/from16 v9, p3

    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 10
    move-result v1

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    .line 14
    move-result v2

    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    .line 25
    move-result v2

    .line 26
    if-ne v1, v2, :cond_9

    .line 28
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 30
    iget-object v2, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 32
    monitor-enter v2

    .line 33
    :try_start_0
    iget-object v1, v1, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 41
    if-eqz v1, :cond_1

    .line 43
    monitor-exit v2

    .line 44
    goto/16 :goto_3

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_2

    .line 49
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 56
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    .line 59
    move-result v1

    .line 60
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    .line 63
    move-result v2

    .line 64
    if-ne v1, v10, :cond_5

    .line 66
    if-eqz v2, :cond_4

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    .line 71
    move-result v2

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    .line 75
    move-result v3

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    .line 79
    move-result v4

    .line 80
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 82
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_3

    .line 92
    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 94
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 101
    :cond_3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 106
    move-result-object v0

    .line 107
    move/from16 v1, p1

    .line 109
    move/from16 v5, p3

    .line 111
    move/from16 v6, p4

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 116
    move-result v0

    .line 117
    return v0

    .line 118
    :cond_4
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 127
    move-result v0

    .line 128
    return v0

    .line 129
    :cond_5
    if-ne v1, v3, :cond_8

    .line 131
    if-eqz v2, :cond_7

    .line 133
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 135
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 138
    move-result-object v0

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    .line 142
    move-result v2

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    .line 146
    move-result v3

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    .line 150
    move-result v4

    .line 151
    if-eqz v9, :cond_6

    .line 153
    sget-object v1, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 155
    move-object v5, v1

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    move-object v5, v11

    .line 158
    :goto_1
    const/4 v6, 0x0

    .line 159
    move/from16 v1, p1

    .line 161
    move/from16 v7, p4

    .line 163
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    .line 166
    move-result v0

    .line 167
    return v0

    .line 168
    :cond_7
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 170
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 173
    move-result-object v0

    .line 174
    sget-object v1, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 176
    invoke-virtual {v0, v8, v4, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 179
    move-result v0

    .line 180
    return v0

    .line 181
    :cond_8
    return v4

    .line 182
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    throw v0

    .line 184
    :cond_9
    :goto_3
    iget-object v12, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 186
    sget-boolean v0, Lcom/android/server/accessibility/magnification/MagnificationController;->SEC_DEBUG:Z

    .line 188
    if-eqz v0, :cond_a

    .line 190
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    const-string v0, "MagnificationController"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v2, "transitionMagnificationConfigMode displayId = "

    .line 200
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, ", config = "

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    move-object/from16 v2, p2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_4

    .line 224
    :cond_a
    move-object/from16 v2, p2

    .line 226
    :goto_4
    iget-object v13, v12, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    .line 228
    monitor-enter v13

    .line 229
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    .line 232
    move-result v14

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    .line 236
    move-result v0

    .line 237
    invoke-virtual {v12, v8, v14}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    .line 240
    move-result-object v1

    .line 241
    new-instance v5, Landroid/graphics/PointF;

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    .line 246
    move-result v6

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    .line 250
    move-result v7

    .line 251
    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 254
    if-eqz v1, :cond_d

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    .line 259
    move-result v6

    .line 260
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 263
    move-result v6

    .line 264
    if-eqz v6, :cond_b

    .line 266
    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 268
    goto :goto_5

    .line 269
    :catchall_1
    move-exception v0

    .line 270
    goto/16 :goto_b

    .line 272
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    .line 275
    move-result v6

    .line 276
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    .line 279
    move-result v7

    .line 280
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 283
    move-result v7

    .line 284
    if-eqz v7, :cond_c

    .line 286
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 288
    goto :goto_6

    .line 289
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    .line 292
    move-result v1

    .line 293
    :goto_6
    invoke-virtual {v5, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 296
    :cond_d
    iget-object v1, v12, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    .line 298
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    .line 304
    if-eqz v1, :cond_e

    .line 306
    const-string v6, "MagnificationController"

    .line 308
    const-string v7, "Discard previous animation request"

    .line 310
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-boolean v10, v1, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    .line 315
    iget-object v6, v1, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 317
    iget v1, v1, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    .line 319
    invoke-virtual {v6, v1, v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    .line 322
    :cond_e
    invoke-virtual {v12}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v12}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 329
    move-result-object v6

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    .line 333
    move-result v7

    .line 334
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_10

    .line 340
    if-ne v14, v3, :cond_f

    .line 342
    invoke-virtual {v12}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    .line 349
    move-result v2

    .line 350
    goto :goto_7

    .line 351
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v2, v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    .line 358
    move-result v2

    .line 359
    goto :goto_7

    .line 360
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    .line 363
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 364
    :goto_7
    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    move-result-object v7

    .line 368
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    move-result-object v15

    .line 372
    invoke-virtual {v12, v7, v15}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 375
    if-eqz v9, :cond_11

    .line 377
    new-instance v7, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;

    .line 379
    invoke-direct {v7, v12, v8, v14}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    .line 382
    goto :goto_8

    .line 383
    :catchall_2
    move-exception v0

    .line 384
    goto :goto_a

    .line 385
    :cond_11
    move-object v7, v11

    .line 386
    :goto_8
    if-ne v14, v3, :cond_13

    .line 388
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    invoke-virtual {v1, v8, v11}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 394
    if-eqz v0, :cond_12

    .line 396
    iget v3, v5, Landroid/graphics/PointF;->x:F

    .line 398
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 400
    const/4 v15, 0x0

    .line 401
    move-object v0, v6

    .line 402
    move/from16 v1, p1

    .line 404
    move-object v5, v7

    .line 405
    move v6, v15

    .line 406
    move/from16 v7, p4

    .line 408
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    .line 411
    goto :goto_9

    .line 412
    :cond_12
    invoke-virtual {v6, v8, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    .line 415
    goto :goto_9

    .line 416
    :cond_13
    if-ne v14, v10, :cond_16

    .line 418
    invoke-virtual {v6, v8, v4, v11}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 421
    if-eqz v0, :cond_15

    .line 423
    invoke-virtual {v1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 426
    move-result v0

    .line 427
    if-nez v0, :cond_14

    .line 429
    invoke-virtual {v1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    .line 432
    :cond_14
    iget v3, v5, Landroid/graphics/PointF;->x:F

    .line 434
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 436
    move-object v0, v1

    .line 437
    move v1, v2

    .line 438
    move v2, v3

    .line 439
    move v3, v4

    .line 440
    move/from16 v4, p1

    .line 442
    move/from16 v5, p4

    .line 444
    move-object v6, v7

    .line 445
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(FFFIILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    .line 448
    goto :goto_9

    .line 449
    :cond_15
    invoke-virtual {v1, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_16

    .line 455
    invoke-virtual {v1, v8, v11}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 458
    :cond_16
    :goto_9
    if-nez v9, :cond_17

    .line 460
    :try_start_4
    iget-object v0, v12, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 462
    invoke-virtual {v0, v8, v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 465
    :cond_17
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {v12, v0, v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 472
    monitor-exit v13

    .line 473
    return v10

    .line 474
    :goto_a
    if-nez v9, :cond_18

    .line 476
    iget-object v1, v12, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 478
    invoke-virtual {v1, v8, v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    .line 481
    :cond_18
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v12, v1, v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 488
    throw v0

    .line 489
    :goto_b
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 490
    throw v0
.end method

.method public final unregister(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method
