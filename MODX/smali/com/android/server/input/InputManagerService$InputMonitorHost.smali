.class public final Lcom/android/server/input/InputManagerService$InputMonitorHost;
.super Landroid/view/IInputMonitorHost$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInputChannelToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    .line 5
    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    .line 10
    return-void
.end method

.method public final pilferPointers()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 5
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    .line 7
    invoke-interface {v0, p0}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    .line 10
    return-void
.end method
