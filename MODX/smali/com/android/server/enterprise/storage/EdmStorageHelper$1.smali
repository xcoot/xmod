.class public final Lcom/android/server/enterprise/storage/EdmStorageHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    return-void
.end method


# virtual methods
.method public final onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    .locals 7

    .line 1
    const-string v0, "EdmStorageHelper"

    .line 3
    iget-object v1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    invoke-static {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    invoke-static {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$smpostTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    invoke-static {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$smpreTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    invoke-static {v2, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-$$Nest$smgetMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v2

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/server/enterprise/storage/Column;

    .line 56
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v6, "ALTER TABLE "

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v6, " ADD COLUMN "

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, ";"

    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const-string/jumbo p0, "onTableFound Altered Table %s with Columns %d"

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object p1

    .line 107
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_2

    .line 119
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    const-string v2, "Table "

    .line 123
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, " creation/update EX:"

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_2
    :goto_2
    return-void
.end method
