.class public final synthetic Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    iget p0, p1, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    .line 10
    const/4 p1, 0x2

    .line 11
    if-ne p0, p1, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0

    .line 17
    :pswitch_0
    iget p0, p1, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    .line 19
    const/4 p1, 0x1

    .line 20
    if-ne p0, p1, :cond_1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_1
    return p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
