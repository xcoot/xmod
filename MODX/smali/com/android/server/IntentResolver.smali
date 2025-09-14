.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mResolvePrioritySorter:Lcom/android/server/IntentResolver$1;


# instance fields
.field public final mActionToFilter:Landroid/util/ArrayMap;

.field public final mBaseTypeToFilter:Landroid/util/ArrayMap;

.field public final mFilters:Landroid/util/ArraySet;

.field public final mSchemeToFilter:Landroid/util/ArrayMap;

.field public final mTypeToFilter:Landroid/util/ArrayMap;

.field public final mTypedActionToFilter:Landroid/util/ArrayMap;

.field public final mWildTypeToFilter:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/IntentResolver$1;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Lcom/android/server/IntentResolver$1;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 53
    return-void
.end method

.method public static writeProtoMap(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 12
    move-result-wide v3

    .line 13
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/String;

    .line 19
    const-wide v6, 0x10900000001L

    .line 24
    invoke-virtual {p0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 27
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, [Ljava/lang/Object;

    .line 33
    array-length v6, v5

    .line 34
    move v7, v1

    .line 35
    :goto_1
    if-ge v7, v6, :cond_1

    .line 37
    aget-object v8, v5, v7

    .line 39
    if-eqz v8, :cond_0

    .line 41
    const-wide v9, 0x20900000002L

    .line 46
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {p0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 53
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void
.end method


# virtual methods
.method public final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 15
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    .line 17
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    aput-object p3, p0, v2

    goto :goto_1

    .line 19
    :cond_0
    array-length v3, v0

    move v4, v3

    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 20
    aget-object v5, v0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-ge v4, v3, :cond_2

    .line 21
    aput-object p3, v0, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v3, 0x3

    .line 22
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    .line 23
    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    aput-object p3, p0, v3

    .line 25
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public addFilter(Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    move-result v1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    move v4, v3

    .line 5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x2f

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 8
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 9
    :cond_1
    const-string v7, "/*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    move-object v7, v5

    move-object v5, v9

    .line 10
    :goto_1
    iget-object v8, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v8, v5, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v6, :cond_2

    .line 11
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v7, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v5, v7, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_2
    if-nez v1, :cond_4

    if-nez v3, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    :cond_4
    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    :cond_5
    return-void
.end method

.method public allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v8, p8

    .line 5
    move-object/from16 v9, p9

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    move-result-object v10

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    move-result-object v11

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 18
    move-result-object v12

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isExcludingStopped()Z

    .line 22
    move-result v13

    .line 23
    const-string v14, "IntentResolver"

    .line 25
    if-eqz p4, :cond_0

    .line 27
    new-instance v0, Landroid/util/LogPrinter;

    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-direct {v0, v1, v14, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 34
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 36
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    .line 39
    move-object v15, v0

    .line 40
    move-object v6, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    move-object v6, v0

    .line 44
    move-object v15, v6

    .line 45
    :goto_0
    const/16 v16, 0x0

    .line 47
    if-eqz v8, :cond_1

    .line 49
    array-length v0, v8

    .line 50
    move v5, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move/from16 v5, v16

    .line 54
    :goto_1
    move/from16 v4, v16

    .line 56
    move/from16 v17, v4

    .line 58
    :goto_2
    if-ge v4, v5, :cond_12

    .line 60
    aget-object v2, v8, v4

    .line 62
    if-eqz v2, :cond_12

    .line 64
    if-eqz p4, :cond_2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "Matching against filter "

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2
    move-object/from16 v1, p1

    .line 85
    move/from16 v0, p10

    .line 87
    if-eqz v13, :cond_4

    .line 89
    invoke-virtual {v7, v1, v2, v0}, Lcom/android/server/IntentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z

    .line 92
    move-result v18

    .line 93
    if-eqz v18, :cond_4

    .line 95
    if-eqz p4, :cond_3

    .line 97
    const-string v2, "  Filter\'s target is stopped; skipping"

    .line 99
    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    :goto_3
    move/from16 v20, v4

    .line 104
    move/from16 v21, v5

    .line 106
    move-object/from16 v19, v10

    .line 108
    move-object v10, v6

    .line 109
    goto/16 :goto_7

    .line 111
    :cond_4
    if-eqz v12, :cond_5

    .line 113
    invoke-virtual {v7, v12, v2}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 116
    move-result v18

    .line 117
    if-nez v18, :cond_5

    .line 119
    if-eqz p4, :cond_3

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    const-string v3, "  Filter is not from package "

    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "; skipping"

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    invoke-virtual {v7, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v8}, Landroid/content/IntentFilter;->getAutoVerify()Z

    .line 151
    move-result v18

    .line 152
    if-eqz v18, :cond_6

    .line 154
    if-eqz p4, :cond_6

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    const-string v0, "  Filter verified: "

    .line 160
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v7, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/content/IntentFilter;->isVerified()Z

    .line 170
    move-result v0

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countDataAuthorities()I

    .line 184
    move-result v0

    .line 185
    move/from16 v3, v16

    .line 187
    :goto_4
    if-ge v3, v0, :cond_6

    .line 189
    move/from16 v18, v0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "   "

    .line 195
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v8, v3}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 218
    move-object/from16 v1, p1

    .line 220
    move/from16 v0, v18

    .line 222
    goto :goto_4

    .line 223
    :cond_6
    invoke-virtual {v7, v9, v2}, Lcom/android/server/IntentResolver;->allowFilterResult(Ljava/util/List;Ljava/lang/Object;)Z

    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_7

    .line 229
    if-eqz p4, :cond_3

    .line 231
    const-string v0, "  Filter\'s target already added"

    .line 233
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto/16 :goto_3

    .line 238
    :cond_7
    const-string v18, "IntentResolver"

    .line 240
    move-object v0, v8

    .line 241
    move-object v1, v10

    .line 242
    move-object v3, v2

    .line 243
    move-object/from16 v2, p6

    .line 245
    move-object/from16 p2, v3

    .line 247
    move-object/from16 v19, v10

    .line 249
    const/4 v10, 0x1

    .line 250
    move-object/from16 v3, p7

    .line 252
    move/from16 v20, v4

    .line 254
    move-object v4, v11

    .line 255
    move/from16 v21, v5

    .line 257
    move-object/from16 v5, p3

    .line 259
    move-object v10, v6

    .line 260
    move-object/from16 v6, v18

    .line 262
    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 265
    move-result v3

    .line 266
    if-ltz v3, :cond_c

    .line 268
    const-string v0, "android.intent.category.DEFAULT"

    .line 270
    if-eqz p4, :cond_8

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    const-string v2, "  Filter matched!  match=0x"

    .line 276
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v2, " hasDefault="

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 294
    move-result v2

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v1

    .line 302
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_8
    if-eqz p5, :cond_a

    .line 307
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_9

    .line 313
    goto :goto_5

    .line 314
    :cond_9
    const/16 v17, 0x1

    .line 316
    goto :goto_7

    .line 317
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    .line 319
    move-object/from16 v1, p1

    .line 321
    move-object/from16 v2, p2

    .line 323
    move/from16 v4, p10

    .line 325
    move-wide/from16 v5, p11

    .line 327
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    .line 330
    move-result-object v0

    .line 331
    if-eqz p4, :cond_b

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    .line 335
    const-string v2, "    Created result: "

    .line 337
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v1

    .line 347
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_b
    if-eqz v0, :cond_11

    .line 352
    move-object v1, v9

    .line 353
    check-cast v1, Ljava/util/ArrayList;

    .line 355
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    if-eqz p4, :cond_11

    .line 360
    const-string v0, "    "

    .line 362
    move-object/from16 v1, p2

    .line 364
    invoke-virtual {v7, v10, v0, v1}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 370
    invoke-virtual {v8, v15, v0}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 373
    goto :goto_7

    .line 374
    :cond_c
    if-eqz p4, :cond_11

    .line 376
    const/4 v0, -0x4

    .line 377
    if-eq v3, v0, :cond_10

    .line 379
    const/4 v0, -0x3

    .line 380
    if-eq v3, v0, :cond_f

    .line 382
    const/4 v0, -0x2

    .line 383
    if-eq v3, v0, :cond_e

    .line 385
    const/4 v0, -0x1

    .line 386
    if-eq v3, v0, :cond_d

    .line 388
    const-string/jumbo v0, "unknown reason"

    .line 391
    goto :goto_6

    .line 392
    :cond_d
    const-string/jumbo v0, "type"

    .line 395
    goto :goto_6

    .line 396
    :cond_e
    const-string/jumbo v0, "data"

    .line 399
    goto :goto_6

    .line 400
    :cond_f
    const-string v0, "action"

    .line 402
    goto :goto_6

    .line 403
    :cond_10
    const-string/jumbo v0, "category"

    .line 406
    :goto_6
    const-string v1, "  Filter did not match: "

    .line 408
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-result-object v0

    .line 412
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_11
    :goto_7
    add-int/lit8 v4, v20, 0x1

    .line 417
    move-object/from16 v8, p8

    .line 419
    move-object v6, v10

    .line 420
    move-object/from16 v10, v19

    .line 422
    move/from16 v5, v21

    .line 424
    goto/16 :goto_2

    .line 426
    :cond_12
    if-eqz p4, :cond_14

    .line 428
    if-eqz v17, :cond_14

    .line 430
    move-object v0, v9

    .line 431
    check-cast v0, Ljava/util/ArrayList;

    .line 433
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_13

    .line 439
    const-string/jumbo v0, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    .line 442
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    goto :goto_8

    .line 446
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 449
    move-result v0

    .line 450
    const/4 v1, 0x1

    .line 451
    if-le v0, v1, :cond_14

    .line 453
    const-string/jumbo v0, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    .line 456
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_14
    :goto_8
    return-void
.end method

.method public final collectFilters([Ljava/lang/Object;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    if-ge v1, v2, :cond_3

    .line 8
    aget-object v2, p1, v1

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3, p2}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 23
    if-nez v0, :cond_1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final copyFrom(Lcom/android/server/IntentResolver;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 3
    iget-object v1, p1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 34
    iget-object v1, p1, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 39
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 41
    iget-object v1, p1, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 48
    iget-object v1, p1, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 55
    iget-object v1, p1, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 62
    iget-object v1, p1, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 69
    iget-object p1, p1, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 74
    return-void
.end method

.method public final copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 8
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/String;

    .line 27
    array-length v5, v3

    .line 28
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    move v5, v1

    .line 33
    :goto_1
    array-length v6, v3

    .line 34
    if-ge v5, v6, :cond_0

    .line 36
    aget-object v6, v3, v5

    .line 38
    invoke-virtual {p0, v6}, Lcom/android/server/IntentResolver;->snapshot(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v6

    .line 42
    aput-object v6, v3, v5

    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v0, p3

    .line 4
    const-string v1, "  "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v10

    .line 10
    const-string v1, "\n"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v11

    .line 16
    move-object v2, p2

    .line 17
    invoke-static {p2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v12

    .line 21
    const-string v3, "Full MIME Types:"

    .line 23
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, v12

    .line 28
    move-object v4, v10

    .line 29
    move-object/from16 v6, p4

    .line 31
    move/from16 v7, p5

    .line 33
    move/from16 v8, p6

    .line 35
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    move-object v12, v11

    .line 42
    :cond_0
    const-string v3, "Base MIME Types:"

    .line 44
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 46
    move-object v0, p0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, v12

    .line 49
    move-object v4, v10

    .line 50
    move-object/from16 v6, p4

    .line 52
    move/from16 v7, p5

    .line 54
    move/from16 v8, p6

    .line 56
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 62
    move-object v12, v11

    .line 63
    :cond_1
    const-string v3, "Wild MIME Types:"

    .line 65
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 67
    move-object v0, p0

    .line 68
    move-object v1, p1

    .line 69
    move-object v2, v12

    .line 70
    move-object v4, v10

    .line 71
    move-object/from16 v6, p4

    .line 73
    move/from16 v7, p5

    .line 75
    move/from16 v8, p6

    .line 77
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 83
    move-object v12, v11

    .line 84
    :cond_2
    const-string v3, "Schemes:"

    .line 86
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 88
    move-object v0, p0

    .line 89
    move-object v1, p1

    .line 90
    move-object v2, v12

    .line 91
    move-object v4, v10

    .line 92
    move-object/from16 v6, p4

    .line 94
    move/from16 v7, p5

    .line 96
    move/from16 v8, p6

    .line 98
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 104
    move-object v12, v11

    .line 105
    :cond_3
    const-string v3, "Non-Data Actions:"

    .line 107
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 109
    move-object v0, p0

    .line 110
    move-object v1, p1

    .line 111
    move-object v2, v12

    .line 112
    move-object v4, v10

    .line 113
    move-object/from16 v6, p4

    .line 115
    move/from16 v7, p5

    .line 117
    move/from16 v8, p6

    .line 119
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 125
    move-object v12, v11

    .line 126
    :cond_4
    const-string v3, "MIME Typed Actions:"

    .line 128
    iget-object v5, v9, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 130
    move-object v0, p0

    .line 131
    move-object v1, p1

    .line 132
    move-object v2, v12

    .line 133
    move-object v4, v10

    .line 134
    move-object/from16 v6, p4

    .line 136
    move/from16 v7, p5

    .line 138
    move/from16 v8, p6

    .line 140
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_5

    .line 146
    move-object v12, v11

    .line 147
    :cond_5
    if-ne v12, v11, :cond_6

    .line 149
    const/4 v0, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_6
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0
.end method

.method public dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7
    return-void
.end method

.method public dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7
    const-string p0, ": "

    .line 9
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 15
    return-void
.end method

.method public final dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p4

    .line 7
    move-object/from16 v3, p5

    .line 9
    move-object/from16 v4, p6

    .line 11
    const-string v5, "  "

    .line 13
    invoke-static {v2, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v6

    .line 17
    const-string v7, "    "

    .line 19
    invoke-static {v2, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    new-instance v7, Landroid/util/ArrayMap;

    .line 25
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    move-object/from16 v10, p3

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    .line 36
    move-result v14

    .line 37
    if-ge v11, v14, :cond_d

    .line 39
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 42
    move-result-object v14

    .line 43
    check-cast v14, [Ljava/lang/Object;

    .line 45
    array-length v15, v14

    .line 46
    const-string v9, ":"

    .line 48
    if-eqz p8, :cond_7

    .line 50
    if-nez p7, :cond_7

    .line 52
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 55
    const/4 v8, 0x0

    .line 56
    :goto_1
    move-object/from16 v16, v10

    .line 58
    if-ge v8, v15, :cond_2

    .line 60
    aget-object v10, v14, v8

    .line 62
    if-eqz v10, :cond_2

    .line 64
    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v0, v4, v10}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 69
    move-result v17

    .line 70
    if-nez v17, :cond_0

    .line 72
    move/from16 v18, v12

    .line 74
    move-object/from16 v17, v13

    .line 76
    const/4 v12, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v10

    .line 82
    move-object/from16 v17, v13

    .line 84
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 87
    move-result v13

    .line 88
    if-gez v13, :cond_1

    .line 90
    new-instance v13, Landroid/util/MutableInt;

    .line 92
    move/from16 v18, v12

    .line 94
    const/4 v12, 0x1

    .line 95
    invoke-direct {v13, v12}, Landroid/util/MutableInt;-><init>(I)V

    .line 98
    invoke-virtual {v7, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    move/from16 v18, v12

    .line 104
    const/4 v12, 0x1

    .line 105
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 108
    move-result-object v10

    .line 109
    check-cast v10, Landroid/util/MutableInt;

    .line 111
    iget v13, v10, Landroid/util/MutableInt;->value:I

    .line 113
    add-int/2addr v13, v12

    .line 114
    iput v13, v10, Landroid/util/MutableInt;->value:I

    .line 116
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 118
    move-object/from16 v10, v16

    .line 120
    move-object/from16 v13, v17

    .line 122
    move/from16 v12, v18

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    move/from16 v18, v12

    .line 127
    move-object/from16 v17, v13

    .line 129
    const/4 v12, 0x1

    .line 130
    move-object/from16 v10, v16

    .line 132
    const/4 v8, 0x0

    .line 133
    const/4 v13, 0x0

    .line 134
    :goto_3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 137
    move-result v14

    .line 138
    if-ge v8, v14, :cond_5

    .line 140
    if-eqz v10, :cond_3

    .line 142
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const/4 v10, 0x0

    .line 149
    :cond_3
    if-nez v13, :cond_4

    .line 151
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 157
    move-result-object v13

    .line 158
    check-cast v13, Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    move v13, v12

    .line 167
    :cond_4
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 170
    move-result-object v14

    .line 171
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 174
    move-result-object v15

    .line 175
    check-cast v15, Landroid/util/MutableInt;

    .line 177
    iget v15, v15, Landroid/util/MutableInt;->value:I

    .line 179
    invoke-virtual {v0, v1, v2, v14, v15}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 182
    add-int/lit8 v8, v8, 0x1

    .line 184
    move/from16 v18, v12

    .line 186
    goto :goto_3

    .line 187
    :cond_5
    move-object/from16 v13, v17

    .line 189
    :cond_6
    move/from16 v12, v18

    .line 191
    goto :goto_6

    .line 192
    :cond_7
    move-object/from16 v16, v10

    .line 194
    move/from16 v18, v12

    .line 196
    move-object/from16 v17, v13

    .line 198
    const/4 v12, 0x1

    .line 199
    move-object/from16 v10, v16

    .line 201
    move-object/from16 v13, v17

    .line 203
    const/4 v8, 0x0

    .line 204
    const/16 v16, 0x0

    .line 206
    :goto_4
    if-ge v8, v15, :cond_6

    .line 208
    aget-object v12, v14, v8

    .line 210
    if-eqz v12, :cond_6

    .line 212
    if-eqz v4, :cond_8

    .line 214
    invoke-virtual {v0, v4, v12}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 217
    move-result v17

    .line 218
    if-nez v17, :cond_8

    .line 220
    goto :goto_5

    .line 221
    :cond_8
    if-eqz v10, :cond_9

    .line 223
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const/4 v10, 0x0

    .line 230
    :cond_9
    if-nez v16, :cond_a

    .line 232
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 238
    move-result-object v16

    .line 239
    move-object/from16 v3, v16

    .line 241
    check-cast v3, Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    const/16 v16, 0x1

    .line 251
    :cond_a
    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    if-eqz p7, :cond_c

    .line 256
    if-nez v13, :cond_b

    .line 258
    new-instance v13, Landroid/util/PrintWriterPrinter;

    .line 260
    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 263
    :cond_b
    invoke-virtual {v0, v12}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 266
    move-result-object v3

    .line 267
    new-instance v12, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v12

    .line 282
    invoke-virtual {v3, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 285
    :cond_c
    const/16 v18, 0x1

    .line 287
    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 289
    move-object/from16 v3, p5

    .line 291
    const/4 v12, 0x1

    .line 292
    goto :goto_4

    .line 293
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 295
    move-object/from16 v3, p5

    .line 297
    goto/16 :goto_0

    .line 299
    :cond_d
    move/from16 v18, v12

    .line 301
    return v18
.end method

.method public final filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    .line 3
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    .line 12
    return-object v0
.end method

.method public filterResults(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p0, "IntentFilter"

    .line 3
    return-object p0
.end method

.method public abstract getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
.end method

.method public isFilterStopped(Lcom/android/server/pm/Computer;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract newArray(I)[Ljava/lang/Object;
.end method

.method public newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p2
.end method

.method public final queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;
    .locals 23

    .line 1
    move-object/from16 v13, p0

    .line 3
    move-object/from16 v14, p3

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.action.PROCESS_TEXT"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->ignoreProcessText()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 31
    move-result-object v15

    .line 32
    new-instance v11, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    .line 40
    move-result v0

    .line 41
    and-int/lit8 v0, v0, 0x8

    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v12, 0x0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    move/from16 v16, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move/from16 v16, v12

    .line 52
    :goto_0
    const-string v10, "IntentResolver"

    .line 54
    if-eqz v16, :cond_2

    .line 56
    const-string v0, "Resolving type="

    .line 58
    const-string v2, " scheme="

    .line 60
    const-string v3, " defaultOnly="

    .line 62
    invoke-static {v0, v14, v2, v15, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v0

    .line 66
    move/from16 v9, p4

    .line 68
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, " userId="

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move/from16 v8, p5

    .line 78
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, " of "

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-object/from16 v7, p2

    .line 88
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object/from16 v7, p2

    .line 101
    move/from16 v9, p4

    .line 103
    move/from16 v8, p5

    .line 105
    :goto_1
    if-eqz v14, :cond_b

    .line 107
    const/16 v2, 0x2f

    .line 109
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    .line 112
    move-result v2

    .line 113
    if-lez v2, :cond_b

    .line 115
    invoke-virtual {v14, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    const-string v4, "*"

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_9

    .line 127
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 130
    move-result v5

    .line 131
    add-int/lit8 v6, v2, 0x2

    .line 133
    const-string v0, "Second type cut: "

    .line 135
    const-string v12, "First type cut: "

    .line 137
    if-ne v5, v6, :cond_5

    .line 139
    add-int/2addr v2, v1

    .line 140
    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    .line 143
    move-result v1

    .line 144
    const/16 v2, 0x2a

    .line 146
    if-eq v1, v2, :cond_3

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    iget-object v1, v13, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 151
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 155
    check-cast v1, [Ljava/lang/Object;

    .line 157
    if-eqz v16, :cond_4

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    iget-object v2, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 180
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object v2

    .line 184
    check-cast v2, [Ljava/lang/Object;

    .line 186
    if-eqz v16, :cond_7

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    goto :goto_3

    .line 208
    :cond_5
    :goto_2
    iget-object v1, v13, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 214
    check-cast v1, [Ljava/lang/Object;

    .line 216
    if-eqz v16, :cond_6

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 234
    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_6
    iget-object v2, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 239
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-result-object v2

    .line 243
    check-cast v2, [Ljava/lang/Object;

    .line 245
    if-eqz v16, :cond_7

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_7
    :goto_3
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 268
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-result-object v0

    .line 272
    check-cast v0, [Ljava/lang/Object;

    .line 274
    if-eqz v16, :cond_8

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    const-string v4, "Third type cut: "

    .line 280
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v3

    .line 294
    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_8
    move-object/from16 v20, v0

    .line 299
    move-object/from16 v19, v2

    .line 301
    goto :goto_5

    .line 302
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    if-eqz v0, :cond_b

    .line 308
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    move-result-object v0

    .line 318
    move-object v1, v0

    .line 319
    check-cast v1, [Ljava/lang/Object;

    .line 321
    if-eqz v16, :cond_a

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    const-string v2, "Typed Action list: "

    .line 327
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v0

    .line 341
    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_a
    :goto_4
    const/16 v19, 0x0

    .line 346
    const/16 v20, 0x0

    .line 348
    goto :goto_5

    .line 349
    :cond_b
    const/4 v1, 0x0

    .line 350
    goto :goto_4

    .line 351
    :goto_5
    if-eqz v15, :cond_d

    .line 353
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 355
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-result-object v0

    .line 359
    check-cast v0, [Ljava/lang/Object;

    .line 361
    if-eqz v16, :cond_c

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 365
    const-string v3, "Scheme list: "

    .line 367
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 373
    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    move-result-object v2

    .line 381
    invoke-static {v10, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_c
    move-object/from16 v21, v0

    .line 386
    goto :goto_6

    .line 387
    :cond_d
    const/16 v21, 0x0

    .line 389
    :goto_6
    if-nez v14, :cond_f

    .line 391
    if-nez v15, :cond_f

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 397
    if-eqz v0, :cond_f

    .line 399
    iget-object v0, v13, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    move-result-object v0

    .line 409
    check-cast v0, [Ljava/lang/Object;

    .line 411
    if-eqz v16, :cond_e

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 415
    const-string v2, "Action list: "

    .line 417
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v1

    .line 431
    invoke-static {v10, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_e
    move-object v12, v0

    .line 435
    goto :goto_7

    .line 436
    :cond_f
    move-object v12, v1

    .line 437
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 440
    move-result-object v0

    .line 441
    if-nez v0, :cond_10

    .line 443
    const/16 v17, 0x0

    .line 445
    goto :goto_8

    .line 446
    :cond_10
    new-instance v1, Landroid/util/FastImmutableArraySet;

    .line 448
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 451
    move-result v2

    .line 452
    new-array v2, v2, [Ljava/lang/String;

    .line 454
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 457
    move-result-object v0

    .line 458
    check-cast v0, [Ljava/lang/String;

    .line 460
    invoke-direct {v1, v0}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    .line 463
    move-object/from16 v17, v1

    .line 465
    :goto_8
    move-object/from16 v22, p1

    .line 467
    check-cast v22, Lcom/android/server/pm/Computer;

    .line 469
    if-eqz v12, :cond_11

    .line 471
    move-object/from16 v0, p0

    .line 473
    move-object/from16 v1, v22

    .line 475
    move-object/from16 v2, p2

    .line 477
    move-object/from16 v3, v17

    .line 479
    move/from16 v4, v16

    .line 481
    move/from16 v5, p4

    .line 483
    move-object/from16 v6, p3

    .line 485
    move-object v7, v15

    .line 486
    move-object v8, v12

    .line 487
    move-object v9, v11

    .line 488
    move-object v12, v10

    .line 489
    move/from16 v10, p5

    .line 491
    move-object/from16 p1, v11

    .line 493
    move-object v14, v12

    .line 494
    const/16 v18, 0x0

    .line 496
    move-wide/from16 v11, p6

    .line 498
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 501
    goto :goto_9

    .line 502
    :cond_11
    move-object v14, v10

    .line 503
    move-object/from16 p1, v11

    .line 505
    const/16 v18, 0x0

    .line 507
    :goto_9
    if-eqz v19, :cond_12

    .line 509
    move-object/from16 v0, p0

    .line 511
    move-object/from16 v1, v22

    .line 513
    move-object/from16 v2, p2

    .line 515
    move-object/from16 v3, v17

    .line 517
    move/from16 v4, v16

    .line 519
    move/from16 v5, p4

    .line 521
    move-object/from16 v6, p3

    .line 523
    move-object v7, v15

    .line 524
    move-object/from16 v8, v19

    .line 526
    move-object/from16 v9, p1

    .line 528
    move/from16 v10, p5

    .line 530
    move-wide/from16 v11, p6

    .line 532
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 535
    :cond_12
    if-eqz v20, :cond_13

    .line 537
    move-object/from16 v0, p0

    .line 539
    move-object/from16 v1, v22

    .line 541
    move-object/from16 v2, p2

    .line 543
    move-object/from16 v3, v17

    .line 545
    move/from16 v4, v16

    .line 547
    move/from16 v5, p4

    .line 549
    move-object/from16 v6, p3

    .line 551
    move-object v7, v15

    .line 552
    move-object/from16 v8, v20

    .line 554
    move-object/from16 v9, p1

    .line 556
    move/from16 v10, p5

    .line 558
    move-wide/from16 v11, p6

    .line 560
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 563
    :cond_13
    if-eqz v21, :cond_14

    .line 565
    move-object/from16 v0, p0

    .line 567
    move-object/from16 v1, v22

    .line 569
    move-object/from16 v2, p2

    .line 571
    move-object/from16 v3, v17

    .line 573
    move/from16 v4, v16

    .line 575
    move/from16 v5, p4

    .line 577
    move-object/from16 v6, p3

    .line 579
    move-object v7, v15

    .line 580
    move-object/from16 v8, v21

    .line 582
    move-object/from16 v9, p1

    .line 584
    move/from16 v10, p5

    .line 586
    move-wide/from16 v11, p6

    .line 588
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 591
    :cond_14
    move-object/from16 v0, p1

    .line 593
    invoke-virtual {v13, v0}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 596
    invoke-virtual {v13, v0}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 599
    if-eqz v16, :cond_15

    .line 601
    const-string v1, "Final result list:"

    .line 603
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move/from16 v12, v18

    .line 608
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 611
    move-result v1

    .line 612
    if-ge v12, v1, :cond_15

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    .line 616
    const-string v2, "  "

    .line 618
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 624
    move-result-object v2

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v1

    .line 632
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    add-int/lit8 v12, v12, 0x1

    .line 637
    goto :goto_a

    .line 638
    :cond_15
    return-object v0
.end method

.method public final queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;
    .locals 19

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.PROCESS_TEXT"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->ignoreProcessText()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    .line 32
    move-result v1

    .line 33
    and-int/lit8 v1, v1, 0x8

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 38
    const/4 v1, 0x1

    .line 39
    move v14, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v14, v2

    .line 42
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_2

    .line 48
    const/4 v1, 0x0

    .line 49
    move-object v15, v1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance v3, Landroid/util/FastImmutableArraySet;

    .line 53
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 56
    move-result v4

    .line 57
    new-array v4, v4, [Ljava/lang/String;

    .line 59
    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, [Ljava/lang/String;

    .line 65
    invoke-direct {v3, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    .line 68
    move-object v15, v3

    .line 69
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 72
    move-result-object v16

    .line 73
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v12

    .line 77
    move v13, v2

    .line 78
    :goto_2
    if-ge v13, v12, :cond_3

    .line 80
    move-object/from16 v11, p5

    .line 82
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    move-object v9, v1

    .line 87
    check-cast v9, [Ljava/lang/Object;

    .line 89
    move-object/from16 v1, p0

    .line 91
    move-object/from16 v2, p1

    .line 93
    move-object/from16 v3, p2

    .line 95
    move-object v4, v15

    .line 96
    move v5, v14

    .line 97
    move/from16 v6, p4

    .line 99
    move-object/from16 v7, p3

    .line 101
    move-object/from16 v8, v16

    .line 103
    move-object v10, v0

    .line 104
    move/from16 v11, p6

    .line 106
    move/from16 v17, v12

    .line 108
    move/from16 v18, v13

    .line 110
    move-wide/from16 v12, p7

    .line 112
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/IntentResolver;->buildResolveList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/List;IJ)V

    .line 115
    add-int/lit8 v13, v18, 0x1

    .line 117
    move/from16 v12, v17

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object/from16 v1, p0

    .line 122
    invoke-virtual {v1, v0}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 125
    return-object v0
.end method

.method public final register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0
.end method

.method public removeFilter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public removeFilterInternal(Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v2, :cond_0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    move v4, v3

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_3

    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Ljava/lang/String;

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 42
    const/16 v6, 0x2f

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    .line 47
    move-result v6

    .line 48
    if-lez v6, :cond_1

    .line 50
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 57
    move-result-object v7

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string v7, "/*"

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v7

    .line 65
    move-object v9, v7

    .line 66
    move-object v7, v5

    .line 67
    move-object v5, v9

    .line 68
    :goto_1
    iget-object v8, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 70
    invoke-virtual {p0, v8, v5, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    if-lez v6, :cond_2

    .line 75
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 77
    invoke-virtual {p0, v5, v7, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {p0, v5, v7, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move v3, v4

    .line 88
    :goto_2
    if-nez v1, :cond_4

    .line 90
    if-nez v3, :cond_4

    .line 92
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 98
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    .line 101
    :cond_4
    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I

    .line 112
    :cond_5
    return-void
.end method

.method public final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Ljava/lang/Object;

    .line 7
    if-eqz v0, :cond_5

    .line 9
    array-length v1, v0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 14
    aget-object v2, v0, v1

    .line 16
    if-nez v2, :cond_0

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v1

    .line 22
    :goto_1
    if-ltz v1, :cond_3

    .line 24
    aget-object v3, v0, v1

    .line 26
    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {p0, v3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    .line 35
    move-result-object v4

    .line 36
    if-ne v3, v4, :cond_2

    .line 38
    sub-int v3, v2, v1

    .line 40
    if-lez v3, :cond_1

    .line 42
    add-int/lit8 v4, v1, 0x1

    .line 44
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    :cond_1
    const/4 v3, 0x0

    .line 48
    aput-object v3, v0, v2

    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 52
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    if-gez v2, :cond_4

    .line 57
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    array-length p3, v0

    .line 62
    div-int/lit8 p3, p3, 0x2

    .line 64
    if-ge v2, p3, :cond_5

    .line 66
    add-int/lit8 p3, v2, 0x2

    .line 68
    invoke-virtual {p0, p3}, Lcom/android/server/IntentResolver;->newArray(I)[Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 74
    const/4 p3, 0x0

    .line 75
    invoke-static {v0, p3, p0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_5
    :goto_2
    return-void
.end method

.method public snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public sortResults(Ljava/util/List;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Lcom/android/server/IntentResolver$1;

    .line 3
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    return-void
.end method

.method public final unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0
.end method
