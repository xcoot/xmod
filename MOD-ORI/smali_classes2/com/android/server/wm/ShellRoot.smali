.class public final Lcom/android/server/wm/ShellRoot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccessibilityWindow:Landroid/view/IWindow;

.field public mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

.field public mClient:Landroid/view/IWindow;

.field public final mDeathRecipient:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public mToken:Lcom/android/server/wm/WindowToken;

.field public final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V
    .locals 12

    .line 1
    const-string v0, "ShellRoot"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v2, p0, p3}, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ShellRoot;I)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne p3, v2, :cond_0

    .line 32
    .line 33
    const/16 p3, 0x7f6

    .line 34
    .line 35
    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, " is not an acceptable shell root layer."

    .line 41
    .line 42
    invoke-static {p3, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    const/16 p3, 0x7f2

    .line 51
    .line 52
    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    .line 53
    .line 54
    :goto_0
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 55
    .line 56
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget v5, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    .line 61
    .line 62
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v6, 0x1

    .line 66
    const/4 v8, 0x1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    const/16 p1, 0xa48

    .line 70
    .line 71
    if-ne v5, p1, :cond_2

    .line 72
    .line 73
    new-instance p1, Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    const/16 v5, 0xa48

    .line 78
    .line 79
    move-object v2, p1

    .line 80
    move-object v7, p2

    .line 81
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    iget-object p3, p2, Lcom/android/server/wm/DisplayContent;->mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance p1, Lcom/android/server/wm/WindowToken;

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    move-object v2, p1

    .line 95
    move-object v7, p2

    .line 96
    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "Shell Root Leash "

    .line 112
    .line 113
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 117
    .line 118
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 138
    .line 139
    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catch_0
    move-exception p0

    .line 150
    const-string p1, "Unable to add shell root layer "

    .line 151
    .line 152
    const-string v1, " on display "

    .line 153
    .line 154
    invoke-static {p3, p1, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final setAccessibilityWindow(Landroid/view/IWindow;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    :try_start_0
    new-instance v0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ShellRoot;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
