.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/LongObjPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 6
    iput p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final test(JLjava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 3
    iget p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 7
    check-cast p3, Lcom/android/server/blob/BlobStoreSession;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p3, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 14
    if-ne v0, p2, :cond_0

    .line 16
    iget-object p2, p3, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 18
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p1, p3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteSessionLocked(Lcom/android/server/blob/BlobStoreSession;)V

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method
