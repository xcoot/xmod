.class public final Lcom/android/server/wm/DragState$InputInterceptor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClientChannel:Landroid/view/InputChannel;

.field public mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field public mDragWindowHandle:Landroid/view/InputWindowHandle;

.field public mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 9
    .line 10
    const-string v1, "drag"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/wm/DragInputEventReceiver;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v5, p1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 31
    .line 32
    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/wm/DragInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 36
    .line 37
    new-instance v0, Landroid/view/InputApplicationHandle;

    .line 38
    .line 39
    new-instance v2, Landroid/os/Binder;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 42
    .line 43
    .line 44
    sget v4, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 45
    .line 46
    int-to-long v5, v4

    .line 47
    invoke-direct {v0, v2, v1, v5, v6}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 51
    .line 52
    new-instance v0, Landroid/view/InputWindowHandle;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-direct {v0, v2, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 64
    .line 65
    iput-object v1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 76
    .line 77
    const/16 p2, 0x7e0

    .line 78
    .line 79
    iput p2, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 80
    .line 81
    int-to-long v0, v4

    .line 82
    iput-wide v0, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    .line 83
    .line 84
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 85
    .line 86
    iput p2, p0, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 87
    .line 88
    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    .line 89
    .line 90
    iput p2, p0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 91
    .line 92
    const/high16 p2, 0x3f800000    # 1.0f

    .line 93
    .line 94
    iput p2, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 95
    .line 96
    iget p1, p1, Lcom/android/server/wm/DragState;->mFlags:I

    .line 97
    .line 98
    and-int/lit16 p1, p1, 0x100

    .line 99
    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    iget p1, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 103
    .line 104
    or-int/lit16 p1, p1, 0x100

    .line 105
    .line 106
    iput p1, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 107
    .line 108
    :cond_0
    iget-object p0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 111
    .line 112
    .line 113
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    aget-boolean p0, p0, p1

    .line 117
    .line 118
    if-eqz p0, :cond_1

    .line 119
    .line 120
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 121
    .line 122
    const/4 v8, 0x0

    .line 123
    const/4 v9, 0x0

    .line 124
    const-wide v5, 0x6e065fc9a4823e8dL    # 1.0109595201615303E222

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_1
    iget-object p0, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 134
    .line 135
    new-instance p1, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;

    .line 136
    .line 137
    const/4 p2, 0x1

    .line 138
    invoke-direct {p1, p2}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final tearDown()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DragState$InputInterceptor;->this$0:Lcom/android/server/wm/DragState;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mInputEventReceiver:Lcom/android/server/wm/DragInputEventReceiver;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mClientChannel:Landroid/view/InputChannel;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 34
    .line 35
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    aget-boolean p0, p0, v1

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const-wide v2, 0x723c18610a163783L    # 1.8733940382774938E242

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-direct {v0, v1}, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
