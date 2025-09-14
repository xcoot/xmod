.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$1:Landroid/view/autofill/AutofillId;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$0:Ljava/util/List;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$1:Landroid/view/autofill/AutofillId;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    move v4, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-ge v2, v6, :cond_3

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Landroid/service/autofill/Dataset;

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    const/4 v8, 0x4

    .line 51
    if-ne v7, v8, :cond_0

    .line 52
    .line 53
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    invoke-virtual {v6}, Landroid/service/autofill/Dataset;->getEligibleReason()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x5

    .line 63
    if-ne v6, v7, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v3, v1

    .line 70
    move v4, v3

    .line 71
    move v5, v4

    .line 72
    :cond_3
    iput v3, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailableCount:I

    .line 73
    .line 74
    iput v4, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccCount:I

    .line 75
    .line 76
    iput v5, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAvailablePccOnlyCount:I

    .line 77
    .line 78
    if-lez v3, :cond_4

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_4
    iput-boolean v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mIsDatasetAvailable:Z

    .line 82
    .line 83
    return-void
.end method
