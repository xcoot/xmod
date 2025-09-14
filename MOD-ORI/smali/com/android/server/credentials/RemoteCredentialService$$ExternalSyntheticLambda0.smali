.class public final synthetic Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/service/credentials/ClearCredentialStateRequest;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    .line 17
    .line 18
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    :try_start_0
    new-instance v6, Lcom/android/server/credentials/RemoteCredentialService$3;

    .line 33
    .line 34
    invoke-direct {v6, v0, v3, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService$3;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1, v6}, Landroid/service/credentials/ICredentialProviderService;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/service/credentials/IClearCredentialStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/service/credentials/BeginGetCredentialRequest;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    .line 59
    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    .line 60
    .line 61
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    :try_start_1
    new-instance v6, Lcom/android/server/credentials/RemoteCredentialService$1;

    .line 76
    .line 77
    invoke-direct {v6, v0, v3, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService$1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v1, v6}, Landroid/service/credentials/ICredentialProviderService;->onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/service/credentials/IBeginGetCredentialCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Landroid/service/credentials/BeginCreateCredentialRequest;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    .line 102
    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    .line 103
    .line 104
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    :try_start_2
    new-instance v6, Lcom/android/server/credentials/RemoteCredentialService$2;

    .line 119
    .line 120
    invoke-direct {v6, v0, v3, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService$2;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v1, v6}, Landroid/service/credentials/ICredentialProviderService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    .line 125
    .line 126
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    return-object v3

    .line 130
    :catchall_2
    move-exception p0

    .line 131
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
