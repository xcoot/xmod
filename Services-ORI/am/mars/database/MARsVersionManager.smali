.class public final Lcom/android/server/am/mars/database/MARsVersionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mCurrentImportantDefault:[[Ljava/lang/String;

.field public static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field public static final mPolicyInfoDefault:[[Ljava/lang/String;

.field public static mPolicyInfoList:Ljava/util/ArrayList;


# instance fields
.field public mExcludeTargetList:Ljava/util/ArrayList;

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;

.field public mRestrictionList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string/jumbo v0, "marsversion"

    .line 2
    .line 3
    .line 4
    const-string v1, "1020230413"

    .line 5
    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const-string/jumbo v0, "skipratio"

    .line 11
    .line 12
    .line 13
    const-string v1, "90"

    .line 14
    .line 15
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string/jumbo v0, "killthreshold"

    .line 20
    .line 21
    .line 22
    const-string v1, "100"

    .line 23
    .line 24
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string/jumbo v0, "restrictionthreshold"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string/jumbo v0, "unused_app_period_days"

    .line 36
    .line 37
    .line 38
    const-string v1, "32"

    .line 39
    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string/jumbo v0, "restriction_flag"

    .line 45
    .line 46
    .line 47
    const-string v1, "255"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    filled-new-array/range {v2 .. v7}, [[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 58
    .line 59
    const-string v7, "10"

    .line 60
    .line 61
    const-string v8, "337379600"

    .line 62
    .line 63
    const-string v1, "1"

    .line 64
    .line 65
    const-string v2, "1"

    .line 66
    .line 67
    const-string v3, "13"

    .line 68
    .line 69
    const-string v4, "354255120"

    .line 70
    .line 71
    const-string v5, "12"

    .line 72
    .line 73
    const-string v6, "10"

    .line 74
    .line 75
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v7, "5"

    .line 80
    .line 81
    const-string v8, "270272640"

    .line 82
    .line 83
    const-string v1, "2"

    .line 84
    .line 85
    const-string v2, "0"

    .line 86
    .line 87
    const-string v3, "21"

    .line 88
    .line 89
    const-string v4, "270272648"

    .line 90
    .line 91
    const-string v5, "10"

    .line 92
    .line 93
    const-string v6, "10"

    .line 94
    .line 95
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v8, "1"

    .line 100
    .line 101
    const-string v9, "270272640"

    .line 102
    .line 103
    const-string v2, "4"

    .line 104
    .line 105
    const-string v3, "0"

    .line 106
    .line 107
    const-string v4, "25"

    .line 108
    .line 109
    const-string v5, "270272648"

    .line 110
    .line 111
    const-string v6, "26"

    .line 112
    .line 113
    const-string v7, "5"

    .line 114
    .line 115
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v9, "0"

    .line 120
    .line 121
    const-string v10, "0"

    .line 122
    .line 123
    const-string v3, "8"

    .line 124
    .line 125
    const-string v4, "1"

    .line 126
    .line 127
    const-string v5, "26"

    .line 128
    .line 129
    const-string v6, "0"

    .line 130
    .line 131
    const-string v7, "2"

    .line 132
    .line 133
    const-string v8, "5"

    .line 134
    .line 135
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    .line 144
    .line 145
    const-string v0, "0"

    .line 146
    .line 147
    const-string v1, "8000"

    .line 148
    .line 149
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v0, "1"

    .line 154
    .line 155
    const-string v1, "18284"

    .line 156
    .line 157
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const-string v0, "2"

    .line 162
    .line 163
    const-string v4, "65529"

    .line 164
    .line 165
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const-string v0, "4"

    .line 170
    .line 171
    const-string v5, "24032"

    .line 172
    .line 173
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const-string v0, "5"

    .line 178
    .line 179
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    const-string v0, "6"

    .line 184
    .line 185
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    const-string v0, "7"

    .line 190
    .line 191
    const-string v1, "20251"

    .line 192
    .line 193
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    const-string v0, "8"

    .line 198
    .line 199
    const-string v1, "20264"

    .line 200
    .line 201
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const-string v0, "9"

    .line 206
    .line 207
    const-string v1, "24446"

    .line 208
    .line 209
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    filled-new-array/range {v2 .. v10}, [[Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    .line 218
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 225
    .line 226
    return-void
.end method

.method public static convertPolicyNumToName(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "force"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne v0, p0, :cond_1

    .line 9
    .line 10
    const-string p0, "applocker"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    if-ne v0, p0, :cond_2

    .line 15
    .line 16
    const-string p0, "autorun"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x4

    .line 20
    if-ne v0, p0, :cond_3

    .line 21
    .line 22
    const-string/jumbo p0, "freecesspolicy"

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    const/4 v0, 0x6

    .line 27
    if-ne v0, p0, :cond_4

    .line 28
    .line 29
    const-string/jumbo p0, "sbikepolicy"

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_4
    const/16 v0, 0x8

    .line 34
    .line 35
    if-ne v0, p0, :cond_5

    .line 36
    .line 37
    const-string/jumbo p0, "disablepolicy"

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_5
    const/4 p0, 0x0

    .line 42
    return-object p0
.end method

.method public static getMARsSettingsInfoFromDefaultValue()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x6

    .line 11
    if-ge v3, v4, :cond_0

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    aget-object v5, v4, v2

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    aget-object v4, v4, v5

    .line 19
    .line 20
    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static getPolicyFromDefaultValue()V
    .locals 18

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x4

    .line 11
    if-ge v3, v4, :cond_0

    .line 12
    .line 13
    aget-object v5, v1, v3

    .line 14
    .line 15
    aget-object v6, v5, v2

    .line 16
    .line 17
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    const/4 v6, 0x1

    .line 22
    aget-object v6, v5, v6

    .line 23
    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    const/4 v6, 0x2

    .line 29
    aget-object v6, v5, v6

    .line 30
    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    const/4 v6, 0x3

    .line 36
    aget-object v6, v5, v6

    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    aget-object v4, v5, v4

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    const/4 v4, 0x5

    .line 49
    aget-object v4, v5, v4

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    const/4 v4, 0x6

    .line 56
    aget-object v4, v5, v4

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v16

    .line 62
    const/4 v4, 0x7

    .line 63
    aget-object v4, v5, v4

    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    .line 73
    .line 74
    move-object v7, v4

    .line 75
    invoke-direct/range {v7 .. v17}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Ljava/lang/String;IIIIIJJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    .line 85
    .line 86
    return-void
.end method

.method public static getRestrictionFlag()I
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x6

    .line 7
    if-ge v2, v4, :cond_1

    .line 8
    .line 9
    aget-object v4, v0, v2

    .line 10
    .line 11
    aget-object v5, v4, v1

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    aget-object v4, v4, v6

    .line 15
    .line 16
    :try_start_0
    const-string/jumbo v6, "restriction_flag"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v4

    .line 31
    const-string v5, "Exception getRestrictionFlag!"

    .line 32
    .line 33
    const-string v6, "MARsVersionManager"

    .line 34
    .line 35
    invoke-static {v4, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v3
.end method

.method public static toNormalText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string v0, "##"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getIsCurrentImportantFromDefaultValue()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/16 v4, 0x9

    .line 11
    .line 12
    if-ge v3, v4, :cond_0

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    aget-object v5, v4, v2

    .line 17
    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    aget-object v4, v4, v6

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 30
    .line 31
    invoke-direct {v6, v5, v4}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_14

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    .line 19
    .line 20
    iget v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    .line 21
    .line 22
    if-ne p1, v2, :cond_0

    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    :cond_1
    if-nez v2, :cond_c

    .line 38
    .line 39
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_4

    .line 50
    .line 51
    :cond_3
    if-nez v2, :cond_c

    .line 52
    .line 53
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_a

    .line 56
    .line 57
    if-eqz p4, :cond_a

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    .line 60
    .line 61
    const-string/jumbo v4, "equals"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const-string/jumbo v4, "equalsIgnoreCase"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_6

    .line 83
    .line 84
    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const-string/jumbo v4, "contains"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    goto :goto_0

    .line 103
    :cond_7
    const-string/jumbo v4, "startsWith"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_8

    .line 111
    .line 112
    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_0

    .line 117
    :cond_8
    const-string/jumbo v4, "endsWith"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    goto :goto_0

    .line 131
    :cond_9
    move v0, v1

    .line 132
    :goto_0
    if-nez v0, :cond_b

    .line 133
    .line 134
    :cond_a
    if-nez v2, :cond_c

    .line 135
    .line 136
    :cond_b
    move v0, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_c
    move v0, v1

    .line 139
    :goto_1
    if-eqz v0, :cond_0

    .line 140
    .line 141
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 142
    .line 143
    if-eqz p0, :cond_13

    .line 144
    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v0, " restrictionType = "

    .line 148
    .line 149
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 v0, 0x3

    .line 153
    const/4 v2, 0x7

    .line 154
    if-eq p1, v3, :cond_11

    .line 155
    .line 156
    const/4 v4, 0x2

    .line 157
    if-eq p1, v4, :cond_11

    .line 158
    .line 159
    if-ne p1, v2, :cond_d

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_d
    if-eq p1, v0, :cond_10

    .line 163
    .line 164
    const/4 v4, 0x4

    .line 165
    if-ne p1, v4, :cond_e

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_e
    const/16 v4, 0xe

    .line 169
    .line 170
    if-ne p1, v4, :cond_f

    .line 171
    .line 172
    const-string v4, "Rogue app"

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_f
    const/4 v4, 0x0

    .line 176
    goto :goto_4

    .line 177
    :cond_10
    :goto_2
    const-string v4, "Essential intent"

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_11
    :goto_3
    const-string v4, "CHN app"

    .line 181
    .line 182
    :goto_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v4, " isAllowed = "

    .line 186
    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    if-eq p1, v3, :cond_12

    .line 191
    .line 192
    if-eq p1, v0, :cond_12

    .line 193
    .line 194
    if-eq p1, v2, :cond_12

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_12
    move v1, v3

    .line 198
    :goto_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p1, " callee = "

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p1, " caller = "

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p1, " action = "

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    const-string p1, "MARsVersionManager"

    .line 230
    .line 231
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :cond_13
    return v3

    .line 235
    :cond_14
    return v1
.end method

.method public final setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 22
    .line 23
    iget v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    .line 34
    .line 35
    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p0, "MARsVersionManager"

    .line 48
    .line 49
    const-string/jumbo p1, "mIsCurrentImportantMap is null!"

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
