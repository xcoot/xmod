.class public final synthetic Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "ScsApi@DocumentCategoryClassifier"

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;->language:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :goto_0
    const/4 v5, 0x0

    .line 39
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/text/TextServiceExecutor;->mTextContentResolver:Landroid/content/ContentResolver;

    .line 42
    .line 43
    new-instance v6, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v7, "language"

    .line 49
    .line 50
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v4, "requestType"

    .line 54
    .line 55
    .line 56
    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;->requestType:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v6, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v4, "country"

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;->country:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v6, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo p0, "string"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, p0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "content://com.samsung.android.scs.ai.text"

    .line 75
    .line 76
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v3, "getCategoryClassify"

    .line 81
    .line 82
    invoke-virtual {v0, p0, v3, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->concatPrefixTag(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v3, "Exception :: classifySynchronously "

    .line 93
    .line 94
    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :goto_1
    if-nez v5, :cond_1

    .line 98
    .line 99
    const-string p0, "DocumentCategoryClassifier.classify(). ContentResolver result is null!!"

    .line 100
    .line 101
    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_1
    const-string/jumbo p0, "resultCode"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    const/4 v0, 0x1

    .line 114
    if-eq p0, v0, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string/jumbo v3, "unexpected resultCode!!! resultCode: "

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :cond_2
    const-string p0, "categoryIdList"

    .line 137
    .line 138
    invoke-virtual {v5, p0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string v0, "categoryNameList"

    .line 143
    .line 144
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v3, "categoryScoreArray"

    .line 149
    .line 150
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    if-eqz p0, :cond_6

    .line 155
    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    if-nez v3, :cond_3

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_3
    array-length v4, p0

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-ne v4, v5, :cond_5

    .line 167
    .line 168
    array-length v5, v3

    .line 169
    if-eq v4, v5, :cond_4

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_4
    const/4 v1, 0x0

    .line 173
    :goto_2
    if-ge v1, v4, :cond_7

    .line 174
    .line 175
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    aget-wide v6, p0, v1

    .line 181
    .line 182
    iput-wide v6, v5, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategory;->categoryId:J

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/String;

    .line 189
    .line 190
    aget-wide v6, v3, v1

    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    add-int/lit8 v1, v1, 0x1

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    :goto_3
    const-string/jumbo p0, "unexpected size!!! : "

    .line 199
    .line 200
    .line 201
    const-string v5, " vs "

    .line 202
    .line 203
    invoke-static {v4, p0, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    array-length v0, v3

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_6
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string/jumbo v5, "null!! categoryIdArray: "

    .line 232
    .line 233
    .line 234
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string p0, ", categoryNameList: "

    .line 245
    .line 246
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string p0, ", categoryScoreArray: "

    .line 253
    .line 254
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_7
    :goto_5
    return-object v2
.end method
