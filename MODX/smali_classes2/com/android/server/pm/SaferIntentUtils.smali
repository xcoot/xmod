.class public abstract Lcom/android/server/pm/SaferIntentUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 11
    .line 12
    return-void
.end method

.method public static blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    invoke-static {}, Landroid/security/Flags;->blockNullActionIntents()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const-wide/32 v4, 0x117f6228

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    move v1, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sub-int/2addr v4, v3

    .line 37
    const/4 v5, 0x0

    .line 38
    :goto_1
    if-ltz v4, :cond_7

    .line 39
    .line 40
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    instance-of v7, v6, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    if-nez v5, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    :cond_3
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    iget-boolean v7, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 64
    .line 65
    invoke-static {v6, v5, v7}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_5

    .line 80
    .line 81
    iget-object v6, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-nez v6, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    instance-of v6, v6, Landroid/content/IntentFilter;

    .line 91
    .line 92
    if-eqz v6, :cond_5

    .line 93
    .line 94
    iget-object v6, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 95
    .line 96
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-nez v6, :cond_5

    .line 101
    .line 102
    :goto_2
    move v6, v2

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move v6, v3

    .line 105
    :goto_3
    if-nez v6, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 108
    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v7, "Blocking intent with null action: "

    .line 115
    .line 116
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v7, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "PackageManager"

    .line 129
    .line 130
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_7
    return-void
.end method

.method public static enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    check-cast v4, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget v4, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 22
    .line 23
    invoke-static {v4}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v4, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/Computer;

    .line 31
    .line 32
    invoke-interface {v4}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {}, Landroid/security/Flags;->enforceIntentFilterMatch()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    const-wide/32 v7, 0x99c835c

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    move v5, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v5, 0x0

    .line 54
    :goto_0
    invoke-static {}, Landroid/security/Flags;->blockNullActionIntents()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    const-wide/32 v7, 0x117f6228

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_3

    .line 68
    .line 69
    move v7, v3

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v7, 0x0

    .line 72
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    sub-int/2addr v8, v3

    .line 77
    :goto_2
    if-ltz v8, :cond_17

    .line 78
    .line 79
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 84
    .line 85
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    iget-object v10, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 90
    .line 91
    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 92
    .line 93
    iget v11, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 94
    .line 95
    invoke-static {v11, v10}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-eqz v10, :cond_5

    .line 100
    .line 101
    :cond_4
    :goto_3
    const/4 v2, -0x1

    .line 102
    goto/16 :goto_c

    .line 103
    .line 104
    :cond_5
    iget-boolean v10, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 105
    .line 106
    invoke-static {v9, v4, v10}, Lcom/android/server/pm/SaferIntentUtils;->infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    if-eqz v9, :cond_4

    .line 111
    .line 112
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_6
    iget-object v10, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 124
    .line 125
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    if-nez v10, :cond_8

    .line 130
    .line 131
    if-eqz v5, :cond_7

    .line 132
    .line 133
    if-eqz v7, :cond_7

    .line 134
    .line 135
    move v10, v3

    .line 136
    goto :goto_4

    .line 137
    :cond_7
    const/4 v10, 0x0

    .line 138
    :goto_4
    invoke-virtual {v0, v3, v10}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 139
    .line 140
    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_8
    const/4 v10, 0x0

    .line 147
    :goto_5
    const/4 v12, 0x3

    .line 148
    if-nez v10, :cond_13

    .line 149
    .line 150
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    const/4 v14, 0x0

    .line 159
    :goto_6
    if-ge v14, v13, :cond_13

    .line 160
    .line 161
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getIntents()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    check-cast v15, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 170
    .line 171
    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    .line 172
    .line 173
    .line 174
    move-result-object v15

    .line 175
    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 176
    .line 177
    sget-object v16, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Lcom/android/server/IntentResolver$1;

    .line 178
    .line 179
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    .line 180
    .line 181
    .line 182
    move-result v16

    .line 183
    and-int/lit8 v16, v16, 0x8

    .line 184
    .line 185
    if-eqz v16, :cond_9

    .line 186
    .line 187
    move/from16 v23, v3

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_9
    const/16 v23, 0x0

    .line 191
    .line 192
    :goto_7
    const-string v11, "IntentResolver"

    .line 193
    .line 194
    if-eqz v23, :cond_a

    .line 195
    .line 196
    new-instance v3, Landroid/util/LogPrinter;

    .line 197
    .line 198
    const/4 v2, 0x2

    .line 199
    invoke-direct {v3, v2, v11, v12}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 200
    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_a
    const/4 v3, 0x0

    .line 204
    :goto_8
    if-eqz v23, :cond_b

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v12, "Intent: "

    .line 209
    .line 210
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v12, "Matching against filter: "

    .line 226
    .line 227
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    const-string v2, "  "

    .line 241
    .line 242
    invoke-virtual {v15, v3, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_b
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v17

    .line 249
    invoke-virtual {v6}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v19

    .line 253
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 254
    .line 255
    .line 256
    move-result-object v20

    .line 257
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 258
    .line 259
    .line 260
    move-result-object v21

    .line 261
    const-string v22, "IntentResolver"

    .line 262
    .line 263
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    .line 264
    .line 265
    move-object/from16 v16, v15

    .line 266
    .line 267
    move-object/from16 v18, v2

    .line 268
    .line 269
    invoke-virtual/range {v16 .. v22}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-ltz v2, :cond_d

    .line 274
    .line 275
    if-eqz v23, :cond_c

    .line 276
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v6, "Filter matched!  match=0x"

    .line 280
    .line 281
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :cond_c
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_d
    if-eqz v23, :cond_12

    .line 302
    .line 303
    const/4 v3, -0x4

    .line 304
    if-eq v2, v3, :cond_11

    .line 305
    .line 306
    const/4 v3, -0x3

    .line 307
    if-eq v2, v3, :cond_10

    .line 308
    .line 309
    const/4 v3, -0x2

    .line 310
    if-eq v2, v3, :cond_f

    .line 311
    .line 312
    const/4 v3, -0x1

    .line 313
    if-eq v2, v3, :cond_e

    .line 314
    .line 315
    const-string/jumbo v2, "unknown reason"

    .line 316
    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_e
    const-string/jumbo v2, "type"

    .line 320
    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_f
    const-string v2, "data"

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_10
    const-string v2, "action"

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_11
    const-string v2, "category"

    .line 330
    .line 331
    :goto_9
    const-string v3, "Filter did not match: "

    .line 332
    .line 333
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    :cond_12
    const/4 v2, 0x1

    .line 341
    add-int/2addr v14, v2

    .line 342
    move v3, v2

    .line 343
    const/4 v12, 0x3

    .line 344
    goto/16 :goto_6

    .line 345
    .line 346
    :cond_13
    :goto_a
    if-nez v10, :cond_14

    .line 347
    .line 348
    const/4 v2, 0x3

    .line 349
    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 350
    .line 351
    .line 352
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 353
    .line 354
    :cond_14
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-nez v2, :cond_16

    .line 359
    .line 360
    invoke-static {}, Landroid/security/Flags;->enforceIntentFilterMatch()Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-eqz v2, :cond_15

    .line 365
    .line 366
    iget-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 367
    .line 368
    const/4 v3, 0x1

    .line 369
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :cond_15
    const/4 v3, 0x1

    .line 374
    :goto_b
    if-eqz v5, :cond_4

    .line 375
    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v6, "Intent does not match component\'s intent filter: "

    .line 379
    .line 380
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v6, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 384
    .line 385
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v6, "PackageManager"

    .line 393
    .line 394
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string v10, "Access blocked: "

    .line 400
    .line 401
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getComponentName()Landroid/content/ComponentName;

    .line 405
    .line 406
    .line 407
    move-result-object v9

    .line 408
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    goto/16 :goto_3

    .line 422
    .line 423
    :cond_16
    const/4 v3, 0x1

    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    :goto_c
    add-int/2addr v8, v2

    .line 427
    goto/16 :goto_2

    .line 428
    .line 429
    :cond_17
    return-void
.end method

.method public static filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    iget v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 20
    .line 21
    invoke-static {v0}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    const-wide/32 v0, 0xdabca61

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isChangeEnabled(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    sub-int/2addr v1, v2

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    if-ltz v1, :cond_5

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-boolean v4, v4, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 68
    .line 69
    iget-boolean v4, v4, Lcom/android/server/am/BroadcastFilter;->exported:Z

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move v3, v2

    .line 81
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    move v2, v3

    .line 85
    :goto_2
    if-eqz v2, :cond_6

    .line 86
    .line 87
    const/4 p1, 0x2

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->reportEvent(IZ)V

    .line 89
    .line 90
    .line 91
    :cond_6
    :goto_3
    return-void
.end method

.method public static infoToComponent(Landroid/content/pm/ComponentInfo;Lcom/android/server/pm/resolution/ComponentResolverApi;Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    instance-of p2, p0, Landroid/content/pm/ServiceInfo;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p1, p0}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "Unsupported component type"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    move-object v7, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, [Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_2
    move-object v4, v0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_2

    .line 46
    :goto_3
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const/16 v1, 0x23d

    .line 59
    .line 60
    move v2, p0

    .line 61
    move v3, p1

    .line 62
    move-object v8, p4

    .line 63
    move/from16 v10, p5

    .line 64
    .line 65
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 75
    .line 76
    move v1, p0

    .line 77
    move v2, p2

    .line 78
    move-object v3, p3

    .line 79
    invoke-virtual {v0, p2, p0, p3}, Landroid/app/ActivityManagerInternal;->triggerUnsafeIntentStrictMode(IILandroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
