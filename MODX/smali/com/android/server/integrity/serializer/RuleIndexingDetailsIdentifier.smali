.class public abstract Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 11
    if-eq v0, v2, :cond_1

    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1

    .line 16
    const/4 v1, 0x4

    .line 17
    if-ne v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-virtual {p0}, Landroid/content/integrity/IntegrityFormula;->getTag()I

    .line 25
    move-result p0

    .line 26
    const-string v1, "Invalid formula tag type: "

    .line 28
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 38
    invoke-direct {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>()V

    .line 41
    return-object p0

    .line 42
    :cond_2
    check-cast p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    .line 44
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getKey()I

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 50
    if-eq v0, v1, :cond_3

    .line 52
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 54
    invoke-direct {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>()V

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 60
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, v2, p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(ILjava/lang/String;)V

    .line 67
    :goto_1
    move-object p0, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 71
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>(ILjava/lang/String;)V

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    return-object p0

    .line 80
    :cond_5
    check-cast p0, Landroid/content/integrity/CompoundFormula;

    .line 82
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    .line 89
    move-result-object p0

    .line 90
    if-eqz v0, :cond_6

    .line 92
    if-eq v0, v1, :cond_6

    .line 94
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 96
    invoke-direct {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>()V

    .line 99
    goto :goto_3

    .line 100
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;

    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-direct {v1, v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;-><init>(I)V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;

    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {v1, v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;-><init>(I)V

    .line 120
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_7

    .line 134
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 144
    move-result-object p0

    .line 145
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;

    .line 147
    const/4 v1, 0x1

    .line 148
    invoke-direct {v0, v1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda0;-><init>(I)V

    .line 151
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 154
    move-result-object p0

    .line 155
    new-instance v0, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;

    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-direct {v0, v1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier$$ExternalSyntheticLambda1;-><init>(I)V

    .line 161
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 164
    move-result-object p0

    .line 165
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_8

    .line 175
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 181
    goto :goto_3

    .line 182
    :cond_8
    new-instance p0, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 184
    invoke-direct {p0}, Lcom/android/server/integrity/serializer/RuleIndexingDetails;-><init>()V

    .line 187
    :goto_3
    return-object p0
.end method

.method public static splitRulesIntoIndexBuckets(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/util/HashMap;

    .line 28
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/util/HashMap;

    .line 41
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/content/integrity/Rule;

    .line 63
    :try_start_0
    invoke-virtual {v1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->getIndexingDetails(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    .line 70
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget v3, v2, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mIndexType:I

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/util/Map;

    .line 83
    iget-object v2, v2, Lcom/android/server/integrity/serializer/RuleIndexingDetails;->mRuleKey:Ljava/lang/String;

    .line 85
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_0

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/util/Map;

    .line 101
    new-instance v5, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Ljava/util/Map;

    .line 119
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ljava/util/List;

    .line 125
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_0

    .line 129
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 131
    invoke-virtual {v1}, Landroid/content/integrity/Rule;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    const-string v1, "Malformed rule identified. ["

    .line 137
    const-string v2, "]"

    .line 139
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0

    .line 147
    :cond_1
    return-object v0

    .line 148
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 150
    const-string v0, "Index buckets cannot be created for null rule list."

    .line 152
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    throw p0
.end method
