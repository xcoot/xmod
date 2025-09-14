.class public final Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;->this$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;->this$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 p3, 0x3c

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3, p4, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method
