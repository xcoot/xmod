.class public final synthetic Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 7
    .line 8
    iget-object v5, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    move-object v3, p1

    .line 11
    check-cast v3, Ljava/lang/Void;

    .line 12
    .line 13
    move-object v4, p2

    .line 14
    check-cast v4, Ljava/lang/Throwable;

    .line 15
    .line 16
    sget p0, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance p1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    move-object v1, p1

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 37
    .line 38
    iget-object v11, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    .line 40
    move-object v9, p1

    .line 41
    check-cast v9, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 42
    .line 43
    move-object v10, p2

    .line 44
    check-cast v10, Ljava/lang/Throwable;

    .line 45
    .line 46
    sget p0, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-instance p1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    move-object v7, p1

    .line 59
    invoke-direct/range {v7 .. v12}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    .line 70
    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Throwable;

    .line 73
    .line 74
    sget v1, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    .line 84
    .line 85
    invoke-direct {v2, v0, p1, p2, p0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
