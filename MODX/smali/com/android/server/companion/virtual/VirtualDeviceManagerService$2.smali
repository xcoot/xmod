.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCallingPackage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 11
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCallingPackage()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 25
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    if-nez v0, :cond_1

    .line 32
    return-object v1

    .line 33
    :cond_1
    iget-object p0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_2

    .line 45
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 48
    move-result-object p0

    .line 49
    :cond_2
    new-instance v1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getIntent()Landroid/content/Intent;

    .line 54
    move-result-object p1

    .line 55
    iget v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mDisplayId:I

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 64
    return-object v1
.end method
