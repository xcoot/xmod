.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/UserHandle;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/app/appfunctions/IAppFunctionEnabledCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$3:Landroid/os/UserHandle;

    .line 12
    iput p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$4:I

    .line 14
    iput-object p6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$5:Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 3
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$3:Landroid/os/UserHandle;

    .line 9
    iget v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$4:I

    .line 11
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;->f$5:Landroid/app/appfunctions/IAppFunctionEnabledCallback;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 20
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->setAppFunctionEnabledInternalLocked(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-interface {p0}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 34
    :goto_0
    const-string v1, "AppFunctionManagerServiceImpl"

    .line 36
    const-string v2, "Error in setAppFunctionEnabled: "

    .line 38
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :try_start_5
    new-instance v1, Landroid/os/ParcelableException;

    .line 43
    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    invoke-interface {p0, v1}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p0

    .line 51
    const-string v0, "AppFunctionManagerServiceImpl"

    .line 53
    const-string v1, "Failed to report the exception"

    .line 55
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_1
    return-void
.end method
