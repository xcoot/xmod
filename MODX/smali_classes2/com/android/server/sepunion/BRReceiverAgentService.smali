.class public final Lcom/android/server/sepunion/BRReceiverAgentService;
.super Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/sepunion/BRReceiverAgentService$1;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/sepunion/BRReceiverAgentService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v4, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 11
    .line 12
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 p1, -0x3e8

    .line 16
    .line 17
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Lcom/android/server/sepunion/BRReceiverAgentService$1;

    .line 23
    .line 24
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    .line 1
    return-void
.end method
