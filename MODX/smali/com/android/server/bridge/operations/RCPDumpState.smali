.class public final Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final dumpStateFileOpsTable(ILjava/io/PrintWriter;)V
    .locals 8

    .line 1
    const-string v0, ")"

    .line 3
    const-string v1, " ("

    .line 5
    if-nez p1, :cond_3

    .line 7
    const-string/jumbo p1, "content://com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider/"

    .line 10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v3

    .line 14
    iget-object p0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v2

    .line 20
    const-string/jumbo p0, "message"

    .line 23
    const-string/jumbo p1, "timestamp"

    .line 26
    const-string/jumbo v4, "tag"

    .line 29
    filled-new-array {p1, v4, p0}, [Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_2

    .line 42
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    const-string p1, " :"

    .line 72
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    const/4 p1, 0x2

    .line 76
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_0

    .line 89
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_2
    return-void

    .line 93
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v3, "content://"

    .line 98
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string p1, "@com.samsung.android.knox.containercore.rcpcomponents.move.provider.knoxcontentmgrdbprovider/"

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    move-result-object v3

    .line 121
    iget-object p0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    move-result-object v2

    .line 127
    const/4 v6, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    const/4 v5, 0x0

    .line 131
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 134
    move-result-object p0

    .line 135
    if-eqz p0, :cond_6

    .line 137
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_5

    .line 143
    :cond_4
    const-string/jumbo p1, "timeStamp"

    .line 146
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 149
    move-result p1

    .line 150
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    const-string/jumbo p1, "operation"

    .line 163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 166
    move-result p1

    .line 167
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string p1, " ret:"

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string/jumbo p1, "resultCode"

    .line 185
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 188
    move-result p1

    .line 189
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 192
    move-result p1

    .line 193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 196
    const-string p1, " srcUri:"

    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    const-string/jumbo p1, "srcUri"

    .line 204
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 207
    move-result p1

    .line 208
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    const-string p1, " destUri:"

    .line 217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string/jumbo p1, "destUri"

    .line 223
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 226
    move-result p1

    .line 227
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string p1, " src:"

    .line 236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    const-string/jumbo p1, "source"

    .line 242
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 245
    move-result p1

    .line 246
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const-string p1, " dest:"

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    const-string/jumbo p1, "destination"

    .line 261
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 264
    move-result p1

    .line 265
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 275
    move-result p1

    .line 276
    if-nez p1, :cond_4

    .line 278
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_6
    return-void
.end method
