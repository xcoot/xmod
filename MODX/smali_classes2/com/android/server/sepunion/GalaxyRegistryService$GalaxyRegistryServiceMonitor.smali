.class public final Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

.field public mWatcher:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/sepunion/GalaxyRegistryService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/GalaxyRegistryService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget v0, Lcom/android/server/sepunion/GalaxyRegistryService;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "binderDied() binder="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "GalaxyRegistryService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mWatcher:Landroid/os/IBinder;

    .line 34
    .line 35
    const-string v0, "GalaxyRegistryService has died unexpectedly"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/sepunion/GalaxyRegistryService;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->this$0:Lcom/android/server/sepunion/GalaxyRegistryService;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/sepunion/GalaxyRegistryService;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor;->mRestartRunnable:Lcom/android/server/sepunion/GalaxyRegistryService$GalaxyRegistryServiceMonitor$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const-wide/16 v2, 0x2710

    .line 56
    .line 57
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    sget v0, Lcom/android/server/sepunion/GalaxyRegistryService;->$r8$clinit:I

    .line 63
    .line 64
    const-string v0, "exception on binderDied() e="

    .line 65
    .line 66
    invoke-static {p0, v0, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    return-void
.end method
