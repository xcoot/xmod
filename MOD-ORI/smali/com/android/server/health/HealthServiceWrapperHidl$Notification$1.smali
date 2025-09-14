.class public final Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;


# direct methods
.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Notification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;->this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "HealthServiceWrapperHidl"

    .line 2
    .line 3
    const-string/jumbo v1, "health: new instance registered "

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;->this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 9
    .line 10
    iget-object v3, v2, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;->this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/hardware/health/V2_0/IHealth;

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;->this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;->this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    .line 66
    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    check-cast v1, Lcom/android/server/health/HealthHalCallbackHidl;

    .line 71
    .line 72
    invoke-virtual {v1, v3, v2}, Lcom/android/server/health/HealthHalCallbackHidl;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo v3, "health: Cannot get instance \'"

    .line 80
    .line 81
    .line 82
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification$1;->this$1:Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;->this$0:Lcom/android/server/health/HealthServiceWrapperHidl;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, "\': "

    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p0, ". Perhaps no permission?"

    .line 107
    .line 108
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method
