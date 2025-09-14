.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "MultiSimPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "delay ms : "

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v2, "sim-delay"

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v2, 0x7d0

    .line 21
    .line 22
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 23
    .line 24
    iget-boolean v3, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    int-to-long v1, v2

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 48
    .line 49
    iget-boolean v1, v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->debug:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v2, "delayed "

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 62
    .line 63
    iget v2, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    .line 64
    .line 65
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$6;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 69
    .line 70
    iget p0, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    .line 71
    .line 72
    add-int/lit8 p0, p0, -0x1

    .line 73
    .line 74
    iput p0, v3, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mCallCount:I

    .line 75
    .line 76
    if-nez p0, :cond_7

    .line 77
    .line 78
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMultiSimPolicy()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string v0, ""

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo p0, "maxP"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const-string/jumbo p0, "maxE"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    const-string/jumbo p0, "mccMncArray"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    new-array v6, v1, [Ljava/lang/String;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    move v2, v1

    .line 126
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-ge v2, v7, :cond_4

    .line 131
    .line 132
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string/jumbo v8, "mccMnc"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    aput-object v7, v6, v2

    .line 144
    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_1
    move-exception p0

    .line 149
    goto :goto_4

    .line 150
    :cond_4
    const-string/jumbo p0, "numberArray"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    new-array v7, v2, [Ljava/lang/String;

    .line 162
    .line 163
    move v2, v1

    .line 164
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-ge v2, v8, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    const-string/jumbo v9, "number"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    aput-object v8, v7, v2

    .line 182
    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_5
    const-string/jumbo p0, "iccIdArray"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    new-array v8, v0, [Ljava/lang/String;

    .line 198
    .line 199
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ge v1, v0, :cond_6

    .line 204
    .line 205
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string/jumbo v2, "iccId"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    aput-object v0, v8, v1

    .line 217
    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setMultiSimPolicy(II[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :cond_7
    :goto_5
    return-void
.end method
