.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    check-cast p1, Landroid/app/blob/BlobHandle;

    .line 6
    .line 7
    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    .line 8
    .line 9
    invoke-virtual {p2, p0, v0}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
