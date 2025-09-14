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

    .line 3
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mUiControlEnabled:Z

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

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

    .line 24
    const-string/jumbo v0, "sleep_mode_pref"

    .line 27
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :goto_2
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v1, "pref_sqd_enabled_key"

    .line 51
    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->setUicontrolEnable(Z)V

    .line 61
    :cond_1
    return-void

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-string v0, "IbsQuickDim"

    .line 67
    const-string/jumbo v1, "readBlockList"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 75
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 78
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 84
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 87
    iget-object v2, v2, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    invoke-virtual {v1, v2}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    .line 92
    move-result-object v1

    .line 93
    const-string v2, "Uid"

    .line 95
    if-eqz v1, :cond_3

    .line 97
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_2

    .line 103
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 106
    move-result v3

    .line 107
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBlockUnDimUidSet:Landroid/util/ArraySet;

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 116
    move-result v3

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 130
    goto :goto_5

    .line 131
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    throw p0

    .line 135
    :cond_3
    :goto_5
    const-string/jumbo v1, "readAllowList"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 143
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 148
    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->getDataOperator(I)Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;

    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSQLiteSQDwhilteList:Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;

    .line 155
    iget-object v1, v1, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList$AllowDataOperator;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_5

    .line 163
    :goto_6
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_4

    .line 169
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 172
    move-result v1

    .line 173
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 177
    iget-object v3, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mAllowDimUidSet:Landroid/util/ArraySet;

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    move-result v1

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

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

    .line 196
    goto :goto_8

    .line 197
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

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
