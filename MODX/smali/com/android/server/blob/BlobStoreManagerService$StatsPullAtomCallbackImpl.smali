.class public final Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 1

    .line 1
    const/16 v0, 0x2761

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;

    .line 12
    invoke-direct {v0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/util/List;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlob(Ljava/util/function/Consumer;)V

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    const-string p2, "Unknown tagId="

    .line 24
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method
