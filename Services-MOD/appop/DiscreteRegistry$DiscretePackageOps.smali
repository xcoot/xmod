.class public final Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageOps:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 13
    return-void
.end method


# virtual methods
.method public final getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 17
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 19
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-object v0
.end method
