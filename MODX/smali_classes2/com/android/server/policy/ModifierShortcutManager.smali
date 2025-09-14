.class public final Lcom/android/server/policy/ModifierShortcutManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

.field public static final sApplicationLaunchKeyRoles:Landroid/util/SparseArray;


# instance fields
.field public mConsumeSearchKeyUp:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntentShortcuts:Landroid/util/SparseArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mRoleIntents:Ljava/util/Map;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mRoleShortcuts:Landroid/util/SparseArray;

.field public mSearchKeyShortcutPending:Z

.field public final mShiftRoleShortcuts:Landroid/util/SparseArray;

.field public final mShiftShortcuts:Landroid/util/SparseArray;

.field public final mShortcutKeyServices:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/policy/ModifierShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 14
    .line 15
    const/16 v2, 0x40

    .line 16
    .line 17
    const-string v3, "android.app.role.BROWSER"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/16 v0, 0x41

    .line 23
    .line 24
    const-string v2, "android.intent.category.APP_EMAIL"

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0xcf

    .line 30
    .line 31
    const-string v2, "android.intent.category.APP_CONTACTS"

    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/16 v0, 0xd0

    .line 37
    .line 38
    const-string v2, "android.intent.category.APP_CALENDAR"

    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0xd1

    .line 44
    .line 45
    const-string v2, "android.intent.category.APP_MUSIC"

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0xd2

    .line 51
    .line 52
    const-string v2, "android.intent.category.APP_CALCULATOR"

    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleShortcuts:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftRoleShortcuts:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Landroid/util/LongSparseArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mSearchKeyShortcutPending:Z

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mConsumeSearchKeyUp:Z

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    const-class p2, Landroid/app/role/RoleManager;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Landroid/app/role/RoleManager;

    .line 71
    .line 72
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleManager:Landroid/app/role/RoleManager;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    new-instance v2, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    invoke-direct {v2, p0}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/ModifierShortcutManager;)V

    .line 81
    .line 82
    .line 83
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 84
    .line 85
    invoke-virtual {p2, p3, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 86
    .line 87
    .line 88
    const-string p2, "ModifierShortcutManager"

    .line 89
    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const p3, 0x1170007

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string p3, "bookmarks"

    .line 102
    .line 103
    invoke-static {p1, p3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-ne p3, v1, :cond_0

    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :cond_0
    const-string p3, "bookmark"

    .line 118
    .line 119
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-nez p3, :cond_1

    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_1
    const-string/jumbo p3, "package"

    .line 132
    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-interface {p1, v2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    const-string v3, "class"

    .line 140
    .line 141
    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const-string/jumbo v4, "shortcut"

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v5, "category"

    .line 153
    .line 154
    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const-string/jumbo v6, "shift"

    .line 159
    .line 160
    .line 161
    invoke-interface {p1, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string/jumbo v7, "role"

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, v2, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const-string v8, " className="

    .line 177
    .line 178
    if-eqz v7, :cond_2

    .line 179
    .line 180
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v7, "Shortcut required for bookmark with category="

    .line 186
    .line 187
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v5, " packageName="

    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p3, " role="

    .line 208
    .line 209
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string/jumbo p3, "shiftName="

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :catch_0
    move-exception p0

    .line 233
    goto/16 :goto_5

    .line 234
    .line 235
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-eqz v6, :cond_3

    .line 240
    .line 241
    const-string/jumbo v9, "true"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    if-eqz v6, :cond_3

    .line 249
    .line 250
    move v6, v1

    .line 251
    goto :goto_1

    .line 252
    :cond_3
    move v6, v0

    .line 253
    :goto_1
    const-string v9, "android.intent.action.MAIN"

    .line 254
    .line 255
    if-eqz p3, :cond_6

    .line 256
    .line 257
    if-eqz v3, :cond_6

    .line 258
    .line 259
    if-nez v2, :cond_5

    .line 260
    .line 261
    if-eqz v5, :cond_4

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_4
    :try_start_2
    new-instance v2, Landroid/content/ComponentName;

    .line 265
    .line 266
    invoke-direct {v2, p3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    .line 268
    .line 269
    const v4, 0xc2000

    .line 270
    .line 271
    .line 272
    :try_start_3
    iget-object v5, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 273
    .line 274
    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    .line 276
    .line 277
    goto :goto_2

    .line 278
    :catch_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 279
    .line 280
    filled-new-array {p3}, [Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    new-instance v5, Landroid/content/ComponentName;

    .line 289
    .line 290
    aget-object v2, v2, v0

    .line 291
    .line 292
    invoke-direct {v5, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 293
    .line 294
    .line 295
    :try_start_5
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 296
    .line 297
    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 298
    .line 299
    .line 300
    move-object v2, v5

    .line 301
    :goto_2
    :try_start_6
    new-instance p3, Landroid/content/Intent;

    .line 302
    .line 303
    invoke-direct {p3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string v3, "android.intent.category.LAUNCHER"

    .line 307
    .line 308
    invoke-virtual {p3, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v4, "Unable to add bookmark: "

    .line 321
    .line 322
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p3, "/"

    .line 329
    .line 330
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p3, " not found."

    .line 337
    .line 338
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p3

    .line 345
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :cond_5
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v4, "Cannot specify role or category when package and class are present for bookmark packageName="

    .line 356
    .line 357
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string p3, " shortcutChar="

    .line 370
    .line 371
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p3

    .line 381
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_6
    if-eqz v5, :cond_9

    .line 387
    .line 388
    if-eqz v2, :cond_7

    .line 389
    .line 390
    new-instance p3, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const-string v2, "Cannot specify role bookmark when category is present for bookmark shortcutChar="

    .line 396
    .line 397
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v2, " category= "

    .line 404
    .line 405
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p3

    .line 415
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :cond_7
    invoke-static {v9, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    .line 422
    .line 423
    move-result-object p3

    .line 424
    :goto_4
    if-eqz v6, :cond_8

    .line 425
    .line 426
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 427
    .line 428
    invoke-virtual {v2, v7, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_8
    iget-object v2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mIntentShortcuts:Landroid/util/SparseArray;

    .line 434
    .line 435
    invoke-virtual {v2, v7, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_9
    if-eqz v2, :cond_b

    .line 441
    .line 442
    if-eqz v6, :cond_a

    .line 443
    .line 444
    iget-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mShiftRoleShortcuts:Landroid/util/SparseArray;

    .line 445
    .line 446
    invoke-virtual {p3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_a
    iget-object p3, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleShortcuts:Landroid/util/SparseArray;

    .line 452
    .line 453
    invoke-virtual {p3, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_0

    .line 457
    .line 458
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    const-string v2, "Unable to add bookmark for shortcut "

    .line 464
    .line 465
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v2, ": missing package/class, category or role attributes"

    .line 472
    .line 473
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p3

    .line 480
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 481
    .line 482
    .line 483
    goto/16 :goto_0

    .line 484
    .line 485
    :goto_5
    const-string p1, "Got exception parsing bookmarks."

    .line 486
    .line 487
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    .line 489
    .line 490
    :goto_6
    return-void
.end method


# virtual methods
.method public final getRoleLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Intent;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleManager:Landroid/app/role/RoleManager;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "ModifierShortcutManager"

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleManager:Landroid/app/role/RoleManager;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "com.android.server.policy.ModifierShortcutManager.EXTRA_ROLE"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mRoleIntents:Ljava/util/Map;

    .line 43
    .line 44
    check-cast p0, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "No default application for role "

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "Role "

    .line 63
    .line 64
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " is not available."

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-object v0
.end method
