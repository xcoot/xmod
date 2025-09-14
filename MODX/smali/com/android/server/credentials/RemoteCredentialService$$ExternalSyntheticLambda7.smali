.class public final synthetic Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Throwable;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 8
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/lang/Void;

    .line 12
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Throwable;

    .line 14
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 18
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService;->handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 24
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 26
    check-cast v1, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 28
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Throwable;

    .line 30
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 34
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService;->handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/credentials/RemoteCredentialService;

    .line 40
    iget-object v1, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 42
    check-cast v1, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 44
    iget-object v2, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Throwable;

    .line 46
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    sget v3, Lcom/android/server/credentials/RemoteCredentialService;->$r8$clinit:I

    .line 50
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/credentials/RemoteCredentialService;->handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
