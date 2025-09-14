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

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 8
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Landroid/service/credentials/ClearCredentialStateRequest;

    .line 12
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    .line 18
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 25
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v4

    .line 32
    :try_start_0
    new-instance v6, Lcom/android/server/credentials/RemoteCredentialService$3;

    .line 34
    invoke-direct {v6, v0, v3, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService$3;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 37
    invoke-interface {p1, v1, v6}, Landroid/service/credentials/ICredentialProviderService;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/service/credentials/IClearCredentialStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return-object v3

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 51
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 53
    check-cast v1, Landroid/service/credentials/BeginGetCredentialRequest;

    .line 55
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    .line 61
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 68
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    move-result-wide v4

    .line 75
    :try_start_1
    new-instance v6, Lcom/android/server/credentials/RemoteCredentialService$1;

    .line 77
    invoke-direct {v6, v0, v3, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService$1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 80
    invoke-interface {p1, v1, v6}, Landroid/service/credentials/ICredentialProviderService;->onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/service/credentials/IBeginGetCredentialCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    return-object v3

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    throw p0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 94
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 96
    check-cast v1, Landroid/service/credentials/BeginCreateCredentialRequest;

    .line 98
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    check-cast p1, Landroid/service/credentials/ICredentialProviderService;

    .line 104
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 111
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 117
    move-result-wide v4

    .line 118
    :try_start_2
    new-instance v6, Lcom/android/server/credentials/RemoteCredentialService$2;

    .line 120
    invoke-direct {v6, v0, v3, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService$2;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 123
    invoke-interface {p1, v1, v6}, Landroid/service/credentials/ICredentialProviderService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    return-object v3

    .line 130
    :catchall_2
    move-exception p0

    .line 131
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw p0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
