.class public final Lcom/android/server/compat/overrides/XmlWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public indent:I

.field public out:Ljava/io/PrintWriter;

.field public outBuffer:Ljava/lang/StringBuilder;

.field public startLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/compat/overrides/XmlWriter;

    .line 3
    return-void
.end method

.method public static write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    .locals 8

    .line 1
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 6
    const-string v0, "<overrides"

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 11
    const-string v0, ">\n"

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 22
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_10

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    const-string v2, "<change-overrides"

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 50
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 52
    const-wide/16 v3, 0x0

    .line 54
    const-string v5, "\""

    .line 56
    if-nez v2, :cond_0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    const-string v2, " changeId=\""

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->changeId:Ljava/lang/Long;

    .line 66
    if-nez v2, :cond_1

    .line 68
    move-wide v6, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 73
    move-result-wide v6

    .line 74
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 84
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 91
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 93
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->validated:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 95
    if-nez v2, :cond_2

    .line 97
    goto :goto_4

    .line 98
    :cond_2
    const-string v6, "<validated"

    .line 100
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 106
    iget v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 110
    iput v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 112
    invoke-virtual {v2}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getOverrideValue()Ljava/util/List;

    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v2

    .line 120
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_3

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/android/server/compat/overrides/OverrideValue;

    .line 132
    invoke-virtual {v6, p0}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;)V

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 138
    add-int/lit8 v2, v2, -0x1

    .line 140
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 142
    const-string v2, "</validated>\n"

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 147
    :goto_4
    iget-object v2, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->deferred:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 149
    if-nez v2, :cond_4

    .line 151
    goto :goto_6

    .line 152
    :cond_4
    const-string v6, "<deferred"

    .line 154
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 160
    iget v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 162
    add-int/lit8 v6, v6, 0x1

    .line 164
    iput v6, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 166
    iget-object v6, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 168
    if-nez v6, :cond_5

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    .line 172
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iput-object v6, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 177
    :cond_5
    iget-object v2, v2, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->rawOverrideValue:Ljava/util/List;

    .line 179
    check-cast v2, Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v2

    .line 185
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v6

    .line 189
    if-eqz v6, :cond_6

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Lcom/android/server/compat/overrides/OverrideValue;

    .line 197
    invoke-virtual {v6, p0}, Lcom/android/server/compat/overrides/OverrideValue;->write(Lcom/android/server/compat/overrides/XmlWriter;)V

    .line 200
    goto :goto_5

    .line 201
    :cond_6
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 203
    add-int/lit8 v2, v2, -0x1

    .line 205
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 207
    const-string v2, "</deferred>\n"

    .line 209
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 212
    :goto_6
    iget-object v1, v1, Lcom/android/server/compat/overrides/ChangeOverrides;->raw:Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    .line 214
    if-nez v1, :cond_7

    .line 216
    goto/16 :goto_f

    .line 218
    :cond_7
    const-string v2, "<raw"

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 226
    iget v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 228
    add-int/lit8 v2, v2, 0x1

    .line 230
    iput v2, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 232
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    .line 235
    move-result-object v1

    .line 236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v1

    .line 240
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_f

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v2

    .line 250
    check-cast v2, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    const-string v6, "<raw-override-value"

    .line 257
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 260
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 262
    if-nez v6, :cond_8

    .line 264
    goto :goto_8

    .line 265
    :cond_8
    const-string v6, " packageName=\""

    .line 267
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    .line 272
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 278
    :goto_8
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 280
    if-nez v6, :cond_9

    .line 282
    goto :goto_a

    .line 283
    :cond_9
    const-string v6, " minVersionCode=\""

    .line 285
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 288
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    .line 290
    if-nez v6, :cond_a

    .line 292
    move-wide v6, v3

    .line 293
    goto :goto_9

    .line 294
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 297
    move-result-wide v6

    .line 298
    :goto_9
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 308
    :goto_a
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 310
    if-nez v6, :cond_b

    .line 312
    goto :goto_c

    .line 313
    :cond_b
    const-string v6, " maxVersionCode=\""

    .line 315
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    .line 320
    if-nez v6, :cond_c

    .line 322
    move-wide v6, v3

    .line 323
    goto :goto_b

    .line 324
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 327
    move-result-wide v6

    .line 328
    :goto_b
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 338
    :goto_c
    iget-object v6, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 340
    if-nez v6, :cond_d

    .line 342
    goto :goto_e

    .line 343
    :cond_d
    const-string v6, " enabled=\""

    .line 345
    invoke-virtual {p0, v6}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-object v2, v2, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    .line 350
    if-nez v2, :cond_e

    .line 352
    const/4 v2, 0x0

    .line 353
    goto :goto_d

    .line 354
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 357
    move-result v2

    .line 358
    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, v5}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 368
    :goto_e
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 371
    const-string v2, "</raw-override-value>\n"

    .line 373
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 376
    goto/16 :goto_7

    .line 378
    :cond_f
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 380
    add-int/lit8 v1, v1, -0x1

    .line 382
    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 384
    const-string v1, "</raw>\n"

    .line 386
    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 389
    :goto_f
    iget v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 391
    add-int/lit8 v1, v1, -0x1

    .line 393
    iput v1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 395
    const-string v1, "</change-overrides>\n"

    .line 397
    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 400
    goto/16 :goto_0

    .line 402
    :cond_10
    iget p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 404
    add-int/lit8 p1, p1, -0x1

    .line 406
    iput p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 408
    const-string p1, "</overrides>\n"

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 415
    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object p0

    .line 421
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/overrides/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    .line 8
    :cond_0
    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "\n"

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    move v2, v0

    .line 10
    :cond_0
    :goto_0
    array-length v3, p1

    .line 11
    if-ge v2, v3, :cond_3

    .line 13
    iget-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 15
    if-eqz v3, :cond_2

    .line 17
    aget-object v3, p1, v2

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 25
    move v3, v0

    .line 26
    :goto_1
    iget v4, p0, Lcom/android/server/compat/overrides/XmlWriter;->indent:I

    .line 28
    if-ge v3, v4, :cond_1

    .line 30
    iget-object v4, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 32
    const-string v5, "    "

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 44
    aget-object v4, p1, v2

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 51
    array-length v3, p1

    .line 52
    if-ge v2, v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v3, 0x1

    .line 60
    iput-boolean v3, p0, Lcom/android/server/compat/overrides/XmlWriter;->startLine:Z

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-void
.end method
