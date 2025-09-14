.class public final synthetic Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda2;->f$0:I

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda2;->f$0:I

    .line 3
    check-cast p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    .line 5
    sget-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;->getValue()I

    .line 10
    move-result p1

    .line 11
    and-int/2addr p0, p1

    .line 12
    if-lez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method
