.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseBooleanArray;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseBooleanArray;ILjava/util/function/IntConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;->f$0:Landroid/util/SparseBooleanArray;

    .line 6
    iput p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/IntConsumer;

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;->f$0:Landroid/util/SparseBooleanArray;

    .line 3
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/IntConsumer;

    .line 7
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 12
    move-result v2

    .line 13
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSharedUserId()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 22
    move-result p1

    .line 23
    if-gez p1, :cond_1

    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 29
    :cond_0
    invoke-static {v1, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 32
    move-result p1

    .line 33
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 36
    :cond_1
    return-void
.end method
