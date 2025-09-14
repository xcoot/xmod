.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 10
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 19
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 25
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 33
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 41
    check-cast v0, Ljava/util/Set;

    .line 43
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 45
    check-cast p0, Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/util/function/Consumer;

    .line 79
    invoke-interface {v3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-void

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 86
    check-cast v0, [Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 88
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 90
    check-cast p0, Landroid/util/ArraySet;

    .line 92
    array-length v1, v0

    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_1
    if-ge v2, v1, :cond_3

    .line 96
    aget-object v3, v0, v2

    .line 98
    iget-object v3, v3, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 100
    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/ProxyManager;->notifyProxyOfRunningAppsChange(Ljava/util/Set;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
