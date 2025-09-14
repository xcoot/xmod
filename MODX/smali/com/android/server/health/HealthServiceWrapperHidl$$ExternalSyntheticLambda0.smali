.class public final synthetic Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/health/HealthServiceWrapperHidl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "HealthServiceWrapperHidl"

    .line 8
    const-wide/32 v1, 0x80000

    .line 11
    const-string v3, "HealthScheduleUpdate"

    .line 13
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    .line 24
    if-nez p0, :cond_0

    .line 26
    const-string/jumbo p0, "no health service"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :try_start_1
    invoke-interface {p0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    :try_start_2
    const-string v1, "Cannot call update on health HAL"

    .line 46
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :goto_2
    return-void

    .line 51
    :goto_3
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 54
    throw p0
.end method
