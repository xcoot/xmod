.class public final synthetic Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string/jumbo v0, "sleep_mode_pref"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_2
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string/jumbo v1, "pref_sqd_enabled_key"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-string v0, "IbsQuickDim"

    .line 66
    .line 67
    const-string/jumbo v1, "readBlockList"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "Uid"

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 112
    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    goto :goto_4

    .line 127
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_3
    :goto_5
    const-string/jumbo v1, "readAllowList"

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 147
    .line 148
    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    :goto_6
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 168
    .line 169
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    goto :goto_7

    .line 193
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 194
    .line 195
    .line 196
    goto :goto_8

    .line 197
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_5
    :goto_8
    return-void

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
