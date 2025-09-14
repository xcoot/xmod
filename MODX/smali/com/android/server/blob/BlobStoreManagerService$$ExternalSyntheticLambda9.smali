.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$1:I

    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 8
    iget v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$1:I

    .line 10
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/android/server/blob/BlobMetadata;->isACommitter(ILjava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$1:I

    .line 26
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 28
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    check-cast p1, Lcom/android/server/blob/BlobStoreSession;

    .line 32
    iget v2, p1, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 34
    if-ne v2, v0, :cond_1

    .line 36
    iget-object p1, p1, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 50
    iget v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$1:I

    .line 52
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/android/server/blob/BlobMetadata;->isALeasee(ILjava/lang/String;)Z

    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 65
    :cond_2
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
