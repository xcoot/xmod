.class public final Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

.field public final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/EdmStorageHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    .line 8
    return-void
.end method


# virtual methods
.method public final parseXML()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-eq v0, v3, :cond_a

    .line 12
    const/4 v4, 0x2

    .line 13
    const-string/jumbo v5, "table"

    .line 16
    if-eq v0, v4, :cond_1

    .line 18
    const/4 v3, 0x3

    .line 19
    if-eq v0, v3, :cond_0

    .line 21
    goto/16 :goto_3

    .line 23
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 25
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_9

    .line 35
    if-eqz v2, :cond_9

    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->onTableFound(Lcom/android/server/enterprise/storage/Table;)V

    .line 42
    move-object v2, v1

    .line 43
    goto/16 :goto_3

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto/16 :goto_4

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 50
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    const-string/jumbo v5, "name"

    .line 61
    if-eqz v4, :cond_2

    .line 63
    :try_start_2
    new-instance v2, Lcom/android/server/enterprise/storage/Table;

    .line 65
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 67
    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 73
    const-string/jumbo v7, "foreignrefertable"

    .line 76
    invoke-interface {v6, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v6

    .line 80
    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 82
    const-string/jumbo v8, "foreignreferkey"

    .line 85
    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 89
    iget-object v8, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 91
    const-string/jumbo v9, "foreignkeyname"

    .line 94
    invoke-interface {v8, v1, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v8

    .line 98
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v9, Ljava/util/ArrayList;

    .line 103
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iput-object v9, v2, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 108
    iput-object v4, v2, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 110
    iput-object v6, v2, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    .line 112
    iput-object v7, v2, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    .line 114
    iput-object v8, v2, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    .line 116
    :cond_2
    const-string/jumbo v4, "column"

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 125
    if-eqz v2, :cond_9

    .line 127
    new-instance v0, Lcom/android/server/enterprise/storage/Column;

    .line 129
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 131
    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 137
    const-string/jumbo v6, "type"

    .line 140
    invoke-interface {v5, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 146
    if-nez v5, :cond_3

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    const-string/jumbo v7, "int"

    .line 152
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_4

    .line 158
    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const-string/jumbo v7, "text"

    .line 164
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_5

    .line 170
    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 172
    goto :goto_1

    .line 173
    :cond_5
    const-string/jumbo v7, "numeric"

    .line 176
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_6

    .line 182
    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 184
    goto :goto_1

    .line 185
    :cond_6
    const-string/jumbo v7, "real"

    .line 188
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_7

    .line 194
    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 196
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 198
    const-string/jumbo v7, "primarykey"

    .line 201
    invoke-interface {v5, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    if-eqz v5, :cond_8

    .line 207
    const-string/jumbo v7, "true"

    .line 210
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_8

    .line 216
    goto :goto_2

    .line 217
    :cond_8
    const/4 v3, 0x0

    .line 218
    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 220
    const-string/jumbo v7, "properties"

    .line 223
    invoke-interface {v5, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object v5

    .line 227
    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 229
    const-string/jumbo v8, "default"

    .line 232
    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    move-result-object v7

    .line 236
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object v4, v0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 241
    iput-object v6, v0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 243
    iput-boolean v3, v0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    .line 245
    iput-object v5, v0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    .line 247
    iput-object v7, v0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    .line 249
    iget-object v3, v2, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 251
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    .line 256
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 259
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    goto/16 :goto_0

    .line 262
    :goto_4
    const-string v0, "EnterpriseXmlParser"

    .line 264
    const-string/jumbo v1, "parseXML EX:"

    .line 267
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :cond_a
    return-void
.end method
