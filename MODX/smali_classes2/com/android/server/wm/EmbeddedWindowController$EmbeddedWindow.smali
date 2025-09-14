.class public final Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/InputTarget;


# instance fields
.field public final mClient:Landroid/os/IBinder;

.field public final mDisplayId:I

.field public mFocusGranted:Z

.field public final mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mHostWindowState:Lcom/android/server/wm/WindowState;

.field public mInputChannel:Landroid/view/InputChannel;

.field public final mInputTransferToken:Landroid/window/InputTransferToken;

.field public mIsFocusable:Z

.field public final mName:Ljava/lang/String;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mSession:Lcom/android/server/wm/Session;

.field public final mShowUserId:I

.field public mSurface:Landroid/view/SurfaceControl;

.field public mTaskToken:Landroid/window/WindowContainerToken;

.field public final mWindowType:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Lcom/android/server/wm/WindowState;IIIILandroid/window/InputTransferToken;Ljava/lang/String;ZLandroid/view/SurfaceControl;Landroid/window/WindowContainerToken;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iput-object p12, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSurface:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    iput-object p13, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    if-eqz p4, :cond_1

    .line 21
    .line 22
    iget-object p2, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 29
    .line 30
    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 31
    .line 32
    iput p7, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    .line 33
    .line 34
    iput p8, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    .line 35
    .line 36
    iput-object p9, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 37
    .line 38
    if-eqz p4, :cond_2

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p3, "-"

    .line 43
    .line 44
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string p2, ""

    .line 64
    .line 65
    :goto_1
    iput-boolean p11, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    .line 66
    .line 67
    const-string p3, "Embedded{"

    .line 68
    .line 69
    const-string/jumbo p4, "}"

    .line 70
    .line 71
    .line 72
    invoke-static {p3, p10, p2, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    .line 77
    .line 78
    iget p1, p1, Lcom/android/server/wm/Session;->mUid:I

    .line 79
    .line 80
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mShowUserId:I

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final canScreenshotIme()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final dumpProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 1
    const-wide v0, 0x10b0000001cL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x10b00000002L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    const-wide v4, 0x10500000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p2, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 29
    .line 30
    .line 31
    const-wide p0, 0x10900000003L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-string v4, "EmbeddedWindow"

    .line 37
    .line 38
    invoke-virtual {p2, p0, p1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApplicationHandle()Landroid/view/InputApplicationHandle;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/view/InputApplicationHandle;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 19
    .line 20
    iget-object p0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getDisplayId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 17
    .line 18
    return-object p0
.end method

.method public final getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWindowState()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWindowToken()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleTap(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v3, v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->handleTapOutsideFocusInsideSelf()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 28
    .line 29
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final handleTapOutsideFocusInsideSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final handleTapOutsideFocusOutsideSelf()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final isInputMethodClientFocus(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 6
    .line 7
    if-ne p2, p0, :cond_0

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

.method public final onRemoved()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGranted:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    .line 11
    .line 12
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 41
    .line 42
    iget v3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 43
    .line 44
    iget v4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 45
    .line 46
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(ILcom/android/server/wm/ActivityRecord;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mTaskToken:Landroid/window/WindowContainerToken;

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSurface:Landroid/view/SurfaceControl;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSurface:Landroid/view/SurfaceControl;

    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method public final receiveFocusFromTapOutside()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    .line 2
    .line 3
    return p0
.end method

.method public final shouldControlIme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

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

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
