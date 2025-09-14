.class public final synthetic Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/BRReceiverAgentService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/BRReceiverAgentService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/BRReceiverAgentService$1;->this$0:Lcom/android/server/sepunion/BRReceiverAgentService;

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-class v2, Lcom/android/server/DrmEventService;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 32
    .line 33
    const/high16 v1, -0x77000000

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method
