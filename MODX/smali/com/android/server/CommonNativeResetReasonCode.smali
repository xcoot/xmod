.class public abstract Lcom/android/server/CommonNativeResetReasonCode;
.super Lcom/android/server/ResetReasonCode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public addCauseStackFromContexts(Ljava/util/List;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    const-string v0, ""

    .line 12
    move-object v1, v0

    .line 13
    move-object v2, v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_5

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/String;

    .line 26
    const-string/jumbo v4, "signal"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v6, ","

    .line 36
    if-eqz v4, :cond_1

    .line 38
    invoke-static {v1, v6}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    aget-object v3, v3, v5

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v4, "Abort message"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_4

    .line 64
    const-string v4, "#"

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string/jumbo v4, "pid: "

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 82
    const-string v4, "  >>>"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 87
    move-result v7

    .line 88
    const/4 v8, -0x1

    .line 89
    if-ne v7, v8, :cond_3

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const-string v7, ">>>"

    .line 94
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 97
    move-result v8

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 101
    move-result v9

    .line 102
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v8, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    const-string v8, "<<<"

    .line 112
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 123
    move-result v4

    .line 124
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    const-string v4, ":"

    .line 130
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 133
    move-result-object v3

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, "("

    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v3, ")"

    .line 152
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v3

    .line 159
    const-string v4, ", "

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 164
    move-result-object v3

    .line 165
    array-length v4, v3

    .line 166
    const/4 v5, 0x6

    .line 167
    if-lt v4, v5, :cond_0

    .line 169
    invoke-static {v1, v6}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    move-result-object v1

    .line 173
    const/4 v4, 0x5

    .line 174
    aget-object v3, v3, v4

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v1

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_4
    :goto_1
    const-string v4, "\n"

    .line 187
    invoke-static {v2, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v2

    .line 191
    goto/16 :goto_0

    .line 193
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public addSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "sys_native"

    .line 4
    return-object p0
.end method
