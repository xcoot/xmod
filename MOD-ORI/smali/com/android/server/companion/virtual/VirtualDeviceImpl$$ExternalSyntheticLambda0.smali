.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

.field public final synthetic f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 4
    .line 5
    sget v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    .line 18
    .line 19
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;->this$1:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
