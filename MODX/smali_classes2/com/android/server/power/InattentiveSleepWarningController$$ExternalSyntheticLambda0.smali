.class public final synthetic Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/InattentiveSleepWarningController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/InattentiveSleepWarningController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/InattentiveSleepWarningController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/InattentiveSleepWarningController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, v0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string/jumbo v1, "statusbar"

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 24
    .line 25
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/InattentiveSleepWarningController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 26
    .line 27
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->dismissInattentiveSleepWarning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string v0, "InattentiveSleepWarning"

    .line 33
    .line 34
    const-string v1, "Failed to dismiss inattentive sleep warning"

    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
