.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/util/SparseArray;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;->f$0:Landroid/util/SparseArray;

    .line 2
    .line 3
    check-cast p1, Landroid/content/pm/UserPackage;

    .line 4
    .line 5
    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    iget v1, p1, Landroid/content/pm/UserPackage;->userId:I

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
