.class public final Lcom/android/server/integrity/parser/RuleBinaryParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/integrity/parser/RuleParser;


# direct methods
.method public static parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Landroid/content/integrity/InstallerAllowedByManifestFormula;

    .line 17
    .line 18
    invoke-direct {p0}, Landroid/content/integrity/InstallerAllowedByManifestFormula;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Unknown formula separator: "

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance p0, Landroid/content/integrity/CompoundFormula;

    .line 60
    .line 61
    invoke-direct {p0, v0, v1}, Landroid/content/integrity/CompoundFormula;-><init>(ILjava/util/List;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_4
    const/4 v1, 0x4

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const/4 v3, 0x0

    .line 75
    packed-switch v1, :pswitch_data_0

    .line 76
    .line 77
    .line 78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "Unknown key: %d"

    .line 89
    .line 90
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-ne p0, v2, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move v2, v3

    .line 106
    :goto_1
    new-instance p0, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;

    .line 107
    .line 108
    invoke-direct {p0, v1, v2}, Landroid/content/integrity/AtomicFormula$BooleanAtomicFormula;-><init>(IZ)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :pswitch_1
    const/16 v2, 0x20

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    int-to-long v3, v3

    .line 119
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    int-to-long v5, p0

    .line 124
    shl-long v2, v3, v2

    .line 125
    .line 126
    or-long/2addr v2, v5

    .line 127
    new-instance p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    .line 128
    .line 129
    invoke-direct {p0, v1, v0, v2, v3}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;-><init>(IIJ)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ne v0, v2, :cond_6

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    move v2, v3

    .line 141
    :goto_2
    const/16 v0, 0x8

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {p0, v0, v2}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    new-instance v0, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;

    .line 152
    .line 153
    invoke-direct {v0, v1, p0, v2}, Landroid/content/integrity/AtomicFormula$StringAtomicFormula;-><init>(ILjava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    move-object p0, v0

    .line 157
    :goto_3
    return-object p0

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static parseRules(Lcom/android/server/integrity/parser/RandomAccessInputStream;Ljava/util/List;)Ljava/util/List;
    .locals 9

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->skip(J)J

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "A rule must end with a \'1\' bit."

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/android/server/integrity/model/BitInputStream;

    .line 22
    .line 23
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v4}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-object p0, v0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-lez p0, :cond_7

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-ne p0, v3, :cond_0

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-ne v5, v3, :cond_1

    .line 58
    .line 59
    new-instance v5, Landroid/content/integrity/Rule;

    .line 60
    .line 61
    invoke-direct {v5, p0, v4}, Landroid/content/integrity/Rule;-><init>(Landroid/content/integrity/IntegrityFormula;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/android/server/integrity/parser/RuleIndexRange;

    .line 94
    .line 95
    iget v5, v4, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 96
    .line 97
    iget-object v6, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    .line 98
    .line 99
    iget-object v6, v6, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 100
    .line 101
    int-to-long v7, v5

    .line 102
    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    .line 104
    .line 105
    iput v5, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 106
    .line 107
    new-instance v5, Lcom/android/server/integrity/model/BitInputStream;

    .line 108
    .line 109
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 110
    .line 111
    new-instance v7, Lcom/android/server/integrity/parser/LimitInputStream;

    .line 112
    .line 113
    iget v8, v4, Lcom/android/server/integrity/parser/RuleIndexRange;->mEndIndex:I

    .line 114
    .line 115
    iget v4, v4, Lcom/android/server/integrity/parser/RuleIndexRange;->mStartIndex:I

    .line 116
    .line 117
    sub-int/2addr v8, v4

    .line 118
    invoke-direct {v7, p0, v8}, Lcom/android/server/integrity/parser/LimitInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v6}, Lcom/android/server/integrity/model/BitInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_1
    iget-object v4, v5, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-lez v4, :cond_3

    .line 134
    .line 135
    invoke-virtual {v5, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-ne v4, v3, :cond_4

    .line 140
    .line 141
    invoke-static {v5}, Lcom/android/server/integrity/parser/RuleBinaryParser;->parseFormula(Lcom/android/server/integrity/model/BitInputStream;)Landroid/content/integrity/IntegrityFormula;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v5, v2}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v5, v3}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-ne v7, v3, :cond_5

    .line 154
    .line 155
    new-instance v7, Landroid/content/integrity/Rule;

    .line 156
    .line 157
    invoke-direct {v7, v4, v6}, Landroid/content/integrity/Rule;-><init>(Landroid/content/integrity/IntegrityFormula;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0

    .line 170
    :cond_6
    move-object p1, v0

    .line 171
    :cond_7
    return-object p1
.end method
