.class public final synthetic Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    iget p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    check-cast p1, Landroid/companion/AssociationInfo;

    .line 7
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 20
    move-result p1

    .line 21
    if-eq p0, p1, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method
