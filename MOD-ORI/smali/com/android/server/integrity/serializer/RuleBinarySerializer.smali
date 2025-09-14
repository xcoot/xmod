.class public final Lcom/android/server/integrity/serializer/RuleBinarySerializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/integrity/serializer/RuleSerializer;


# direct methods
.method public static serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V
    .locals 6

    .line 1
    instance-of v0, p0, Landroid/content/integrity/AtomicFormula;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x3

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    check-cast p0, Landroid/content/integrity/AtomicFormula;

    .line 9
    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v3, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x4

    .line 17
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula;->getKey()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {p1, v4, v5}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula;->getTag()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v4, v2, :cond_0

    .line 29
    .line 30
    check-cast p0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    .line 31
    .line 32
    invoke-virtual {p1, v3, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;->getIsHashedValue()Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {v0, p0, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula;->getTag()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ne v2, v1, :cond_1

    .line 57
    .line 58
    check-cast p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getOperator()Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {p1, v3, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getValue()Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    const/16 p0, 0x20

    .line 80
    .line 81
    ushr-long v2, v0, p0

    .line 82
    .line 83
    long-to-int v2, v2

    .line 84
    invoke-virtual {p1, p0, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 85
    .line 86
    .line 87
    long-to-int v0, v0

    .line 88
    invoke-virtual {p1, p0, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula;->getTag()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ne v1, v3, :cond_2

    .line 98
    .line 99
    check-cast p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    .line 100
    .line 101
    invoke-virtual {p1, v3, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;->getValue()Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "Invalid atomic formula type: "

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    const-string p1, "Null atomic formula can not be serialized"

    .line 143
    .line 144
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_4
    instance-of v0, p0, Landroid/content/integrity/CompoundFormula;

    .line 149
    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    check-cast p0, Landroid/content/integrity/CompoundFormula;

    .line 153
    .line 154
    if-eqz p0, :cond_6

    .line 155
    .line 156
    invoke-virtual {p1, v3, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getConnector()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-virtual {p1, v1, v0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/content/integrity/CompoundFormula;->getFormulas()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Landroid/content/integrity/IntegrityFormula;

    .line 185
    .line 186
    invoke-static {v0, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_5
    invoke-virtual {p1, v3, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    const-string p1, "Null compound formula can not be serialized"

    .line 197
    .line 198
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0

    .line 202
    :cond_7
    instance-of v0, p0, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    .line 203
    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    invoke-virtual {p1, v3, v3}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 207
    .line 208
    .line 209
    :goto_1
    return-void

    .line 210
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v1, "Invalid formula type: "

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1
.end method

.method public static serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V
    .locals 6

    .line 1
    const-string v0, "START_KEY"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    invoke-virtual {p1, v3, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 20
    .line 21
    .line 22
    const-string v2, "END_KEY"

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_0

    .line 69
    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v5, v1, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {p1, v3, v4}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v2, v1, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {p1, v3, p0}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    const-string/jumbo v3, "serializeRuleList should never be called with null rule list."

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/android/server/integrity/model/BitOutputStream;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iget v4, p1, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "START_KEY"

    .line 31
    .line 32
    invoke-virtual {v3, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v4}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move v5, v0

    .line 62
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/lang/String;

    .line 73
    .line 74
    const/16 v7, 0x32

    .line 75
    .line 76
    if-lt v5, v7, :cond_2

    .line 77
    .line 78
    iget v5, p1, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move v5, v0

    .line 88
    :cond_2
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_1

    .line 103
    .line 104
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Landroid/content/integrity/Rule;

    .line 109
    .line 110
    if-eqz v7, :cond_3

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v8, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeFormula(Landroid/content/integrity/IntegrityFormula;Lcom/android/server/integrity/model/BitOutputStream;)V

    .line 120
    .line 121
    .line 122
    const/4 v8, 0x3

    .line 123
    invoke-virtual {v7}, Landroid/content/integrity/Rule;->getEffect()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {v2, v8, v7}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string p1, "Null rule can not be serialized"

    .line 142
    .line 143
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_4
    iget p0, p1, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 148
    .line 149
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const-string p1, "END_KEY"

    .line 154
    .line 155
    invoke-virtual {v3, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    return-object v3
.end method

.method public static serializeStringValue(Ljava/lang/String;ZLcom/android/server/integrity/model/BitOutputStream;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getBytesFromHexDigest(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(Z)V

    .line 17
    .line 18
    .line 19
    array-length p1, p0

    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p2, v0, p1}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 23
    .line 24
    .line 25
    array-length p1, p0

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_1
    if-ge v1, p1, :cond_1

    .line 28
    .line 29
    aget-byte v2, p0, v1

    .line 30
    .line 31
    invoke-virtual {p2, v0, v2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "String value can not be null."

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static verifySize(ILjava/util/Map;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/server/integrity/serializer/RuleBinarySerializer$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/stream/Collectors;->summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-gt p1, p0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "Too many rules provided in the indexing group. Provided "

    .line 44
    .line 45
    const-string v2, " limit "

    .line 46
    .line 47
    invoke-static {p1, p0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method


# virtual methods
.method public final serialize(Ljava/util/List;Ljava/util/Optional;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 1
    const-string p0, "Too many rules provided: "

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x30d40

    .line 10
    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->splitRulesIntoIndexBuckets(Ljava/util/List;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast p0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map;

    .line 30
    .line 31
    const v1, 0x186a0

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(ILjava/util/Map;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/util/Map;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(ILjava/util/Map;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/Map;

    .line 61
    .line 62
    const/16 v3, 0x3e8

    .line 63
    .line 64
    invoke-static {v3, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->verifySize(ILjava/util/Map;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/android/server/integrity/model/ByteTrackedOutputStream;

    .line 68
    .line 69
    invoke-direct {v2, p3}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p2, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    new-instance p3, Lcom/android/server/integrity/model/BitOutputStream;

    .line 87
    .line 88
    invoke-direct {p3, v2}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    .line 90
    .line 91
    const/16 v3, 0x8

    .line 92
    .line 93
    invoke-virtual {p3, v3, p2}, Lcom/android/server/integrity/model/BitOutputStream;->setNext(II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Ljava/util/Map;

    .line 108
    .line 109
    invoke-static {p2, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    check-cast p3, Ljava/util/Map;

    .line 122
    .line 123
    invoke-static {p3, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/util/Map;

    .line 136
    .line 137
    invoke-static {p0, v2}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeRuleList(Ljava/util/Map;Lcom/android/server/integrity/model/ByteTrackedOutputStream;)Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    new-instance v0, Lcom/android/server/integrity/model/BitOutputStream;

    .line 142
    .line 143
    invoke-direct {v0, p4}, Lcom/android/server/integrity/model/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p2, v0, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 147
    .line 148
    .line 149
    invoke-static {p3, v0, p1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 150
    .line 151
    .line 152
    invoke-static {p0, v0, v1}, Lcom/android/server/integrity/serializer/RuleBinarySerializer;->serializeIndexGroup(Ljava/util/LinkedHashMap;Lcom/android/server/integrity/model/BitOutputStream;Z)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/android/server/integrity/model/BitOutputStream;->flush()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :catch_0
    move-exception p0

    .line 160
    goto :goto_0

    .line 161
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p2

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string p1, "Null rules cannot be serialized."

    .line 186
    .line 187
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    new-instance p1, Lcom/android/server/integrity/serializer/RuleSerializeException;

    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw p1
.end method
