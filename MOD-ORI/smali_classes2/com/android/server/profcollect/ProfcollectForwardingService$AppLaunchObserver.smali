.class public final Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onIntentStarted(Landroid/content/Intent;J)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "applaunch_trace_freq"

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    const-string/jumbo p3, "profcollect_native_boot"

    .line 15
    .line 16
    .line 17
    invoke-static {p3, p1, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/16 p3, 0x64

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-ge p2, p1, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance p2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 p3, 0x4

    .line 44
    invoke-direct {p2, p3, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
