.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-nez v0, :cond_1

    .line 4
    const-string/jumbo v1, "notification"

    .line 7
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V

    .line 23
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 27
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method
