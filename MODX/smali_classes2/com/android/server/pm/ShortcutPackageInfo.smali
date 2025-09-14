.class public final Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBackupAllowed:Z

.field public mBackupAllowedInitialized:Z

.field public mBackupSourceBackupAllowed:Z

.field public mBackupSourceVersionCode:J

.field public mIsShadow:Z

.field public mLastUpdateTime:J

.field public mSigHashes:Ljava/util/ArrayList;

.field public mVersionCode:J


# direct methods
.method public constructor <init>(JJLjava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 14
    .line 15
    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 20
    .line 21
    return-void
.end method

.method public static generateForInstalledPackageForTest(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-object p2, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string p0, "Can\'t get signatures: package="

    .line 11
    .line 12
    const-string p2, "ShortcutService"

    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/android/server/pm/ShortcutPackageInfo;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iget-wide v4, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    move-object v1, p2

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 42
    .line 43
    const v1, 0x8000

    .line 44
    .line 45
    .line 46
    and-int/2addr p1, v1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    iput-boolean v0, p2, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 54
    .line 55
    .line 56
    move-result-wide p0

    .line 57
    iput-wide p0, p2, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 58
    .line 59
    return-object p2
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "PackageInfo:"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "  IsShadow: "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, " (not installed)"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, " (installed)"

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "  Version: "

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "  Backup Allowed: "

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 77
    .line 78
    const-wide/16 v2, -0x1

    .line 79
    .line 80
    cmp-long v0, v0, v2

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v0, "  Backup source version: "

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "  Backup source backup allowed: "

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 114
    .line 115
    .line 116
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "  Last package update time: "

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-ge v0, v1, :cond_3

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v1, "    "

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "SigHash: "

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, [B

    .line 161
    .line 162
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println([C)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    return-void
.end method

.method public isBackupSourceBackupAllowed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 2
    .line 3
    return p0
.end method

.method public final loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string/jumbo v3, "version"

    .line 7
    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    invoke-static {v1, v3, v4, v5}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    const-string v3, "last_udpate_time"

    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    invoke-static {v1, v3, v8, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v10

    .line 23
    const-wide/16 v12, 0x1

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    const-string/jumbo v14, "shadow"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v14, v8, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v8

    .line 34
    cmp-long v8, v8, v12

    .line 35
    .line 36
    if-nez v8, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v8, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move v8, v2

    .line 42
    :goto_1
    const-string v9, "bk_src_version"

    .line 43
    .line 44
    invoke-static {v1, v9, v4, v5}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v14

    .line 48
    int-to-long v3, v2

    .line 49
    const-string v9, "allow-backup"

    .line 50
    .line 51
    invoke-static {v1, v9, v3, v4}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v16

    .line 55
    cmp-long v9, v16, v12

    .line 56
    .line 57
    if-nez v9, :cond_2

    .line 58
    .line 59
    move v9, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v9, 0x0

    .line 62
    :goto_2
    const-string v5, "bk_src_backup-allowed"

    .line 63
    .line 64
    invoke-static {v1, v5, v3, v4}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    cmp-long v3, v3, v12

    .line 69
    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    move v3, v2

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    const/4 v3, 0x0

    .line 75
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eq v12, v2, :cond_4

    .line 89
    .line 90
    const/4 v13, 0x3

    .line 91
    if-ne v12, v13, :cond_5

    .line 92
    .line 93
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-le v13, v5, :cond_4

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_4
    move/from16 v17, v8

    .line 101
    .line 102
    goto :goto_8

    .line 103
    :cond_5
    :goto_5
    const/4 v13, 0x2

    .line 104
    if-eq v12, v13, :cond_6

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    move/from16 v17, v8

    .line 116
    .line 117
    add-int/lit8 v8, v5, 0x1

    .line 118
    .line 119
    if-ne v12, v8, :cond_8

    .line 120
    .line 121
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    const-string/jumbo v8, "signature"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_7

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_7
    const/4 v8, 0x0

    .line 135
    const-string v12, "hash"

    .line 136
    .line 137
    invoke-interface {v1, v8, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-virtual {v12, v8}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_6
    move/from16 v8, v17

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_8
    :goto_7
    invoke-static {v12, v13}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :goto_8
    if-eqz p2, :cond_9

    .line 160
    .line 161
    const-wide/16 v1, -0x1

    .line 162
    .line 163
    iput-wide v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 164
    .line 165
    iput-wide v6, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 166
    .line 167
    iput-boolean v9, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_9
    iput-wide v6, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 171
    .line 172
    iput-wide v14, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 173
    .line 174
    iput-boolean v3, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 175
    .line 176
    :goto_9
    iput-wide v10, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 177
    .line 178
    move/from16 v2, v17

    .line 179
    .line 180
    iput-boolean v2, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 181
    .line 182
    iput-object v4, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 183
    .line 184
    const/4 v1, 0x0

    .line 185
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 186
    .line 187
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 188
    .line 189
    return-void
.end method

.method public final saveToXml(Lcom/android/server/pm/ShortcutService;Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-boolean p3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    const-string p3, "Backup happened before mBackupAllowed is initialized."

    .line 9
    .line 10
    invoke-virtual {p1, p3, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const-string/jumbo p1, "package-info"

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p3, "version"

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    .line 23
    .line 24
    invoke-static {p2, p3, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    const-string p3, "last_udpate_time"

    .line 28
    .line 29
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 30
    .line 31
    invoke-static {p2, p3, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo p3, "shadow"

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 38
    .line 39
    invoke-static {p2, p3, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-string p3, "allow-backup"

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    .line 45
    .line 46
    invoke-static {p2, p3, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string p3, "allow-backup-initialized"

    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    .line 52
    .line 53
    invoke-static {p2, p3, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    const-string p3, "bk_src_version"

    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceVersionCode:J

    .line 59
    .line 60
    invoke-static {p2, p3, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    const-string p3, "bk_src_backup-allowed"

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupSourceBackupAllowed:Z

    .line 66
    .line 67
    invoke-static {p2, p3, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    const/4 p3, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ge p3, v1, :cond_1

    .line 78
    .line 79
    const-string/jumbo v1, "signature"

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, [B

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "hash"

    .line 102
    .line 103
    invoke-static {p2, v3, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    .line 108
    .line 109
    add-int/lit8 p3, p3, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .line 114
    .line 115
    return-void
.end method
