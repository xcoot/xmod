.class public Lcom/android/server/wm/WindowToken;
.super Lcom/android/server/wm/WindowContainer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClientVisible:Z

.field public mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

.field public mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

.field public final mFromClientToken:Z

.field public mIsPortraitWindowToken:Z

.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerCanManageAppTokens:Z

.field public mPersistOnEmpty:Z

.field public final mRoundedCornerOverlay:Z

.field public final mWindowComparator:Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;

.field public paused:Z

.field public stringName:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final windowType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 6
    .line 7
    new-instance p1, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowToken;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 15
    .line 16
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 21
    .line 22
    iput-boolean p6, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 23
    .line 24
    iput-boolean p7, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 25
    .line 26
    iput-boolean p8, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    .line 27
    .line 28
    if-eqz p5, :cond_0

    .line 29
    .line 30
    invoke-virtual {p5, p2, p0}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowState;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x5

    .line 13
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const-wide v3, 0x2609be4d5e3d39a8L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->createSurfaceControl(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 66
    .line 67
    aget-boolean v0, v0, v1

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 80
    .line 81
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const-wide v4, 0x211166baa2cf3c09L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->disassociate(Lcom/android/server/wm/WindowToken;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    .line 9
    .line 10
    invoke-direct {v0, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    new-instance p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 22
    .line 23
    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;-><init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 32
    .line 33
    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 34
    .line 35
    invoke-direct {p3, p1, p2, v0, v1}, Lcom/android/server/wm/WindowToken$FixedRotationTransformStateLegacy;-><init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-object p3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 39
    .line 40
    iget-object p1, p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->onFixedRotationStatePrepared()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final asWindowToken()Lcom/android/server/wm/WindowToken;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p2, 0x40000002    # 2.0000005f

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public canShowInCurrentDevice()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final createSurfaceControl(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mFromClientToken:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    .line 8
    .line 9
    .line 10
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v0, 0x40000002    # 2.0000005f

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;IZ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo p3, "windows="

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo p3, "windowType="

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p3, "fixedRotationConfig="

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 50
    .line 51
    iget-object p3, p3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "mIsPortraitWindowToken=true"

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p4, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    const-wide v0, 0x10b00000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    const-wide v0, 0x10500000002L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 33
    .line 34
    .line 35
    const-wide v0, 0x10800000006L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->resetTransform()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->run()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr v1, v2

    .line 25
    :goto_0
    if-ltz v1, :cond_6

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    iput-object v4, v3, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 37
    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-nez v5, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_4

    .line 66
    .line 67
    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-nez v6, :cond_3

    .line 74
    .line 75
    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 76
    .line 77
    const/4 v7, 0x6

    .line 78
    invoke-virtual {v6, v7, v0}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v6, v7, v4, v4, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    :cond_3
    invoke-virtual {v6, v3, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v3}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 90
    .line 91
    .line 92
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 93
    .line 94
    invoke-virtual {v6, v4, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowToken;->onCancelFixedRotationTransform(I)V

    .line 113
    .line 114
    .line 115
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    return-void
.end method

.method public getCompatScale()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    .line 4
    .line 5
    return p0
.end method

.method public final getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 10
    .line 11
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
.end method

.method public final getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " - rotation-leash"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "WindowToken.getOrCreateFixedRotationLeash"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 86
    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 92
    .line 93
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 94
    .line 95
    int-to-float v3, v3

    .line 96
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 97
    .line 98
    int-to-float v2, v2

    .line 99
    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 103
    .line 104
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    .line 122
    iput-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 123
    .line 124
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowToken;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 128
    .line 129
    return-object p0
.end method

.method public getProtoFieldId()J
    .locals 2

    .line 1
    const-wide v0, 0x10b00000007L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final getWindowLayerFromType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final getWindowType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 2
    .line 3
    return p0
.end method

.method public final hasFixedRotationTransform()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public hasSizeCompatBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 1
    iget p0, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 2
    .line 3
    iget p1, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 4
    .line 5
    if-lt p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isFixedRotationTransforming()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->disassociate(Lcom/android/server/wm/WindowToken;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->onFixedRotationStatePrepared()V

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public final makeSurface()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public onCancelFixedRotationTransform(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->reParentWindowToken(Lcom/android/server/wm/WindowToken;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq v1, v0, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final onFixedRotationStatePrepared()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final prepareSync()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final removeAllWindowsIfPossible()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    aget-boolean v2, v2, v3

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const-wide v4, 0x7170f134731034f9L    # 2.758078073791782E238

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-le v0, v1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method

.method public removeImmediately()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setClientVisible(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const/16 v5, 0xc

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const-wide v3, -0x658403d259a8ce7dL    # -4.215111242450243E-181

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setExiting(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    move v2, v0

    .line 30
    move v3, v2

    .line 31
    :goto_0
    if-ge v2, v1, :cond_2

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 40
    .line 41
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowState;->onSetAppExiting(Z)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    or-int/2addr v3, v4

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "WindowToken{"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " type="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "}"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 54
    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 56
    .line 57
    return-object p0
.end method

.method public final updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->transform(Lcom/android/server/wm/WindowContainer;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public final updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v0, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 40
    .line 41
    :goto_0
    const/4 v1, 0x2

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final windowsCanBeWallpaperTarget()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method
