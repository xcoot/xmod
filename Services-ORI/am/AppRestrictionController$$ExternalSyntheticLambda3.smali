.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .line 12
    .line 13
    check-cast p3, Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 16
    .line 17
    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/16 v3, 0x32

    .line 26
    .line 27
    if-ne p2, v3, :cond_0

    .line 28
    .line 29
    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;

    .line 32
    .line 33
    invoke-direct {v0, v2, p1, p0, p3}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1, p1, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, v1, p1, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
