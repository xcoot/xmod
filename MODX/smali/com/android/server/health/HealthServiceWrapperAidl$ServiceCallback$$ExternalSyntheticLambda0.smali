.class public final synthetic Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    .line 6
    iput-object p2, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    .line 3
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v1, "HealthServiceWrapperAidl"

    .line 10
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 13
    move-result-object v2

    .line 14
    sget v3, Landroid/hardware/health/IHealth$Stub;->$r8$clinit:I

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 19
    move-object v4, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v4, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    .line 23
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_1

    .line 29
    instance-of v5, v4, Landroid/hardware/health/IHealth;

    .line 31
    if-eqz v5, :cond_1

    .line 33
    check-cast v4, Landroid/hardware/health/IHealth;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v4, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 38
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, v4, Landroid/hardware/health/IHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 43
    :goto_0
    iget-object v2, v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    .line 45
    iget-object v2, v2, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/hardware/health/IHealth;

    .line 53
    if-eqz v2, :cond_2

    .line 55
    check-cast v2, Landroid/hardware/health/IHealth$Stub$Proxy;

    .line 57
    iget-object v2, v2, Landroid/hardware/health/IHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v2, v3

    .line 61
    :goto_1
    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 67
    goto :goto_4

    .line 68
    :cond_3
    :try_start_0
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 75
    move-result-object p0

    .line 76
    sget v2, Lvendor/samsung/hardware/health/ISehHealth$Stub;->$r8$clinit:I

    .line 78
    if-nez p0, :cond_4

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    sget-object v2, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    invoke-interface {p0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_5

    .line 89
    instance-of v4, v2, Lvendor/samsung/hardware/health/ISehHealth;

    .line 91
    if-eqz v4, :cond_5

    .line 93
    check-cast v2, Lvendor/samsung/hardware/health/ISehHealth;

    .line 95
    :goto_2
    move-object v3, v2

    .line 96
    goto :goto_3

    .line 97
    :cond_5
    new-instance v2, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    .line 99
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p0, v2, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p0

    .line 106
    const-string v2, "Unable to getExtension for health "

    .line 108
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_3
    if-eqz v3, :cond_7

    .line 113
    iget-object p0, v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    .line 115
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth;

    .line 123
    const-string v2, "New health AIDL HAL service registered"

    .line 125
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    .line 130
    iget-object v0, v0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    .line 132
    if-eqz v0, :cond_6

    .line 134
    invoke-virtual {v0, p0, v3}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V

    .line 137
    :cond_6
    :goto_4
    return-void

    .line 138
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "HealthServiceWrapperAidl: ServiceCallback: newSehService: "

    .line 142
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 157
    const-string v0, "ServiceCallback: ISehHealth service instance isn\'t available. Perhaps no permission?"

    .line 159
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0
.end method
