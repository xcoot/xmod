.class public final Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public final mWindows:Landroid/util/ArrayMap;

.field public final mWindowsByInputTransferToken:Landroid/util/ArrayMap;

.field public final mWindowsByWindowToken:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 32
    .line 33
    return-void
.end method

.method public static isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    aget-boolean p0, v0, v2

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 12
    .line 13
    const-wide v3, -0x18f294284d81c31cL    # -2.5602865557940637E188

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    aget-boolean p0, v0, v2

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 34
    .line 35
    const-wide v3, 0xce7e638d4a03bf1L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return v1

    .line 47
    :cond_3
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 48
    .line 49
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 54
    .line 55
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eq v3, v4, :cond_5

    .line 60
    .line 61
    aget-boolean p0, v0, v2

    .line 62
    .line 63
    if-eqz p0, :cond_4

    .line 64
    .line 65
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 66
    .line 67
    const-wide v3, 0x96251081c1431a2L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return v1

    .line 79
    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 80
    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    const/4 p1, 0x0

    .line 89
    :goto_0
    if-nez p1, :cond_8

    .line 90
    .line 91
    aget-boolean p0, v0, v2

    .line 92
    .line 93
    if-eqz p0, :cond_7

    .line 94
    .line 95
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 96
    .line 97
    const-wide v3, 0x7ad897a35fe3389L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    return v1

    .line 109
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 110
    .line 111
    if-nez p0, :cond_a

    .line 112
    .line 113
    aget-boolean p0, v0, v2

    .line 114
    .line 115
    if-eqz p0, :cond_9

    .line 116
    .line 117
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 118
    .line 119
    const-wide v3, -0x7871a9458b81c6baL    # -2.80409086366314E-272

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_9
    return v1

    .line 131
    :cond_a
    const/4 p0, 0x1

    .line 132
    return p0
.end method


# virtual methods
.method public final add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iget-object v3, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    iget v4, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 27
    .line 28
    iget v5, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    const-string v3, "WindowManager"

    .line 39
    .line 40
    const-string v4, "Could not find the embedding process."

    .line 41
    .line 42
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    aget v4, v3, v2

    .line 51
    .line 52
    or-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    aput v4, v3, v2

    .line 55
    .line 56
    :goto_0
    iget-object p2, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 57
    .line 58
    new-instance v3, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public final remove(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 35
    .line 36
    iget-object v0, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 42
    .line 43
    iget-object p1, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method
