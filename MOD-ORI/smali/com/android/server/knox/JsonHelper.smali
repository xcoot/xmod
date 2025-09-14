.class public abstract Lcom/android/server/knox/JsonHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static createNewJSONObjectForEvent(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v1, "event_id"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    const-string/jumbo p0, "event_key"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string/jumbo p0, "count"

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string/jumbo p0, "save_date"

    .line 26
    .line 27
    .line 28
    const-string/jumbo p1, "yyyy/MM/dd"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public static shallSaveOrReturnCount(ILjava/lang/String;Landroid/content/SharedPreferences;)J
    .locals 17

    .line 1
    const-string/jumbo v0, "eventJSONArray"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "save_date"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "count"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "yyyy/MM/dd"

    .line 11
    .line 12
    .line 13
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-string v7, ""

    .line 32
    .line 33
    move-object/from16 v8, p2

    .line 34
    .line 35
    invoke-interface {v8, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    const/4 v9, 0x0

    .line 44
    if-nez v8, :cond_5

    .line 45
    .line 46
    new-instance v8, Lorg/json/JSONArray;

    .line 47
    .line 48
    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    move v10, v7

    .line 53
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-ge v10, v11, :cond_4

    .line 58
    .line 59
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    check-cast v11, Lorg/json/JSONObject;

    .line 64
    .line 65
    const-string/jumbo v12, "event_id"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    move/from16 v13, p0

    .line 73
    .line 74
    if-ne v12, v13, :cond_2

    .line 75
    .line 76
    const-string/jumbo v12, "event_key"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    move-object/from16 v14, p1

    .line 84
    .line 85
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-eqz v12, :cond_3

    .line 90
    .line 91
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    const/4 v12, 0x1

    .line 100
    if-nez v7, :cond_0

    .line 101
    .line 102
    invoke-virtual {v11, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_4

    .line 108
    :cond_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-nez v15, :cond_1

    .line 113
    .line 114
    invoke-virtual {v11, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const-wide/16 v15, 0x1

    .line 122
    .line 123
    add-long v12, v9, v15

    .line 124
    .line 125
    invoke-virtual {v11, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    :goto_1
    move-object v1, v7

    .line 129
    const/4 v7, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_2
    move-object/from16 v14, p1

    .line 132
    .line 133
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    move-object/from16 v14, p1

    .line 137
    .line 138
    move-object v1, v9

    .line 139
    move-wide v9, v4

    .line 140
    :goto_2
    if-nez v7, :cond_6

    .line 141
    .line 142
    invoke-static/range {p0 .. p1}, Lcom/android/server/knox/JsonHelper;->createNewJSONObjectForEvent(ILjava/lang/String;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    move-object/from16 v14, p1

    .line 151
    .line 152
    new-instance v8, Lorg/json/JSONArray;

    .line 153
    .line 154
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-static/range {p0 .. p1}, Lcom/android/server/knox/JsonHelper;->createNewJSONObjectForEvent(ILjava/lang/String;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 162
    .line 163
    .line 164
    move-object v1, v9

    .line 165
    move-wide v9, v4

    .line 166
    :cond_6
    :goto_3
    invoke-interface {v6, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    .line 180
    .line 181
    if-eqz v1, :cond_7

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    if-nez v0, :cond_7

    .line 188
    .line 189
    return-wide v9

    .line 190
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :cond_7
    return-wide v4
.end method
