.class public final Lcom/android/server/autofill/Session$ClassificationState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

.field public mClassificationGroupHintsMap:Landroid/util/ArrayMap;

.field public mClassificationHintsMap:Landroid/util/ArrayMap;

.field public mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

.field public mHintsToAutofillIdMap:Landroid/util/ArrayMap;

.field public mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

.field public mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

.field public mState:I


# direct methods
.method public static processDetections(Ljava/util/Set;Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Set;

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 32
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 35
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public final processResponse()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    .line 15
    if-nez v0, :cond_1

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    new-instance v2, Landroid/util/ArrayMap;

    .line 21
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 24
    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    .line 26
    new-instance v2, Landroid/util/ArrayMap;

    .line 28
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationGroupHintsMap:Landroid/util/ArrayMap;

    .line 33
    new-instance v2, Landroid/util/ArrayMap;

    .line 35
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 40
    new-instance v2, Landroid/util/ArrayMap;

    .line 42
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 45
    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 47
    new-instance v2, Landroid/util/ArrayMap;

    .line 49
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    iput-object v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v0}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/service/assist/classification/FieldClassification;

    .line 74
    invoke-virtual {v2}, Landroid/service/assist/classification/FieldClassification;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2}, Landroid/service/assist/classification/FieldClassification;->getHints()Ljava/util/Set;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v2}, Landroid/service/assist/classification/FieldClassification;->getGroupHints()Ljava/util/Set;

    .line 85
    move-result-object v2

    .line 86
    new-instance v5, Landroid/util/ArraySet;

    .line 88
    invoke-direct {v5, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 91
    iget-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    .line 93
    invoke-virtual {v6, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    if-eqz v2, :cond_2

    .line 98
    iget-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationGroupHintsMap:Landroid/util/ArrayMap;

    .line 100
    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_2
    iget-object v6, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationCombinedHintsMap:Landroid/util/ArrayMap;

    .line 108
    invoke-virtual {v6, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v5, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 113
    invoke-static {v4, v3, v5}, Lcom/android/server/autofill/Session$ClassificationState;->processDetections(Ljava/util/Set;Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V

    .line 116
    iget-object v4, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 118
    invoke-static {v2, v3, v4}, Lcom/android/server/autofill/Session$ClassificationState;->processDetections(Ljava/util/Set;Landroid/view/autofill/AutofillId;Landroid/util/ArrayMap;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ClassificationState: [state="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_4

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v1, v2, :cond_3

    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_2

    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq v1, v2, :cond_1

    .line 22
    const/4 v2, 0x5

    .line 23
    if-eq v1, v2, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, "UNKNOWN_CLASSIFICATION_STATE_"

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget v2, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v1, "STATE_INVALIDATED"

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v1, "STATE_RESPONSE"

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "STATE_PENDING_REQUEST"

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string v1, "STATE_PENDING_ASSIST_REQUEST"

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const-string v1, "STATE_INITIAL"

    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", mPendingFieldClassificationRequest="

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", mLastFieldClassificationResponse="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", mClassificationHintsMap="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationHintsMap:Landroid/util/ArrayMap;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", mClassificationGroupHintsMap="

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mClassificationGroupHintsMap:Landroid/util/ArrayMap;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", mHintsToAutofillIdMap="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", mGroupHintsToAutofillIdMap="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object p0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mGroupHintsToAutofillIdMap:Landroid/util/ArrayMap;

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    const-string p0, "]"

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    return-object p0
.end method
