.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 8
    check-cast p2, Landroid/graphics/Region;

    .line 10
    iget-object p0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 12
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    .line 17
    if-nez v0, :cond_0

    .line 19
    monitor-exit p0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 25
    invoke-virtual {v0, p2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 31
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 33
    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 36
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 38
    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 43
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->refreshThumbnail()V

    .line 46
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 48
    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 50
    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Region;->recycle()V

    .line 70
    monitor-exit p0

    .line 71
    :goto_0
    return-void

    .line 72
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1

    .line 74
    :pswitch_0
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result p0

    .line 82
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter v0

    .line 85
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_3

    .line 91
    monitor-exit v0

    .line 92
    goto :goto_5

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    goto :goto_6

    .line 95
    :cond_3
    iget-boolean p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mAlwaysOnMagnificationEnabled:Z

    .line 97
    const/4 v1, 0x1

    .line 98
    if-eqz p2, :cond_6

    .line 100
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 102
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 105
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 111
    if-eqz p0, :cond_5

    .line 113
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationActivated:Z

    .line 115
    if-nez p1, :cond_4

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    sget-object v6, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 120
    const/4 v7, 0x0

    .line 121
    const/high16 v3, 0x3f800000    # 1.0f

    .line 123
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 125
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 127
    move-object v2, p0

    .line 128
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->setScaleAndCenter(FFFLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mZoomedOutFromService:Z

    .line 133
    monitor-exit p2

    .line 134
    goto :goto_4

    .line 135
    :catchall_2
    move-exception p0

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    :goto_2
    monitor-exit p2

    .line 138
    goto :goto_4

    .line 139
    :goto_3
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 140
    :try_start_3
    throw p0

    .line 141
    :cond_6
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getVisiblityShortcutDialog()Z

    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_7

    .line 147
    monitor-exit v0

    .line 148
    goto :goto_5

    .line 149
    :cond_7
    invoke-virtual {p1, p0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    .line 152
    :goto_4
    monitor-exit v0

    .line 153
    :goto_5
    return-void

    .line 154
    :goto_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    throw p0

    .line 156
    :pswitch_1
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 158
    check-cast p2, Ljava/lang/Boolean;

    .line 160
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    move-result p0

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetAllIfNeeded(Z)V

    .line 167
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
