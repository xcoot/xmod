.class public abstract Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    const-string/jumbo v0, "video/*"

    .line 2
    .line 3
    .line 4
    const-string v1, "image/*"

    .line 5
    .line 6
    const-string/jumbo v2, "vnd.android.cursor.item/calls"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "vnd.android.cursor.dir/calls"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "vnd.android.cursor.item/person"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v6, "vnd.android.cursor.item/phone"

    .line 19
    .line 20
    .line 21
    const-string v7, "*/*"

    .line 22
    .line 23
    new-instance v8, Lcom/android/server/pm/WatchedIntentFilter;

    .line 24
    .line 25
    invoke-direct {v8}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v9, "android.intent.action.CALL_EMERGENCY"

    .line 29
    .line 30
    invoke-virtual {v8, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    .line 34
    .line 35
    invoke-virtual {v8, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v11, "android.intent.category.DEFAULT"

    .line 39
    .line 40
    invoke-virtual {v8, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v12, "android.intent.category.BROWSABLE"

    .line 44
    .line 45
    invoke-virtual {v8, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v8, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :try_start_1
    invoke-virtual {v8, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .line 53
    .line 54
    :catch_1
    :try_start_2
    invoke-virtual {v8, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    .line 56
    .line 57
    :catch_2
    :try_start_3
    invoke-virtual {v8, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 58
    .line 59
    .line 60
    :catch_3
    :try_start_4
    invoke-virtual {v8, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 61
    .line 62
    .line 63
    :catch_4
    new-instance v13, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 64
    .line 65
    const/4 v14, 0x2

    .line 66
    const/4 v15, 0x0

    .line 67
    invoke-direct {v13, v8, v14, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 68
    .line 69
    .line 70
    sput-object v13, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 71
    .line 72
    new-instance v8, Lcom/android/server/pm/WatchedIntentFilter;

    .line 73
    .line 74
    invoke-direct {v8}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v9, "tel"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v10, "sip"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string/jumbo v13, "voicemail"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object/from16 v16, v0

    .line 108
    .line 109
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 110
    .line 111
    invoke-direct {v0, v8, v14, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 115
    .line 116
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 117
    .line 118
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v8, "android.intent.action.DIAL"

    .line 122
    .line 123
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v14, "android.intent.action.VIEW"

    .line 127
    .line 128
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :try_start_5
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 138
    .line 139
    .line 140
    :catch_5
    :try_start_6
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_6 .. :try_end_6} :catch_6

    .line 141
    .line 142
    .line 143
    :catch_6
    :try_start_7
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_7 .. :try_end_7} :catch_7

    .line 144
    .line 145
    .line 146
    :catch_7
    :try_start_8
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_8 .. :try_end_8} :catch_8

    .line 147
    .line 148
    .line 149
    :catch_8
    :try_start_9
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_9 .. :try_end_9} :catch_9

    .line 150
    .line 151
    .line 152
    :catch_9
    move-object/from16 v17, v1

    .line 153
    .line 154
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 155
    .line 156
    move-object/from16 v18, v7

    .line 157
    .line 158
    const/4 v7, 0x4

    .line 159
    invoke-direct {v1, v0, v7, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 160
    .line 161
    .line 162
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 163
    .line 164
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 165
    .line 166
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :try_start_a
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_a .. :try_end_a} :catch_a

    .line 182
    .line 183
    .line 184
    :catch_a
    :try_start_b
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_b .. :try_end_b} :catch_b

    .line 185
    .line 186
    .line 187
    :catch_b
    :try_start_c
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_c .. :try_end_c} :catch_c

    .line 188
    .line 189
    .line 190
    :catch_c
    :try_start_d
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_d .. :try_end_d} :catch_d

    .line 191
    .line 192
    .line 193
    :catch_d
    :try_start_e
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_e .. :try_end_e} :catch_e

    .line 194
    .line 195
    .line 196
    :catch_e
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 197
    .line 198
    const/4 v7, 0x1

    .line 199
    move-object/from16 v19, v2

    .line 200
    .line 201
    const/4 v2, 0x2

    .line 202
    invoke-direct {v1, v0, v2, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 203
    .line 204
    .line 205
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 206
    .line 207
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 208
    .line 209
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 234
    .line 235
    const/4 v2, 0x4

    .line 236
    invoke-direct {v1, v0, v2, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 237
    .line 238
    .line 239
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 240
    .line 241
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 242
    .line 243
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 268
    .line 269
    const/4 v2, 0x2

    .line 270
    invoke-direct {v1, v0, v2, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 271
    .line 272
    .line 273
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 274
    .line 275
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 276
    .line 277
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 290
    .line 291
    const/4 v2, 0x4

    .line 292
    invoke-direct {v1, v0, v2, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 293
    .line 294
    .line 295
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 296
    .line 297
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 298
    .line 299
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    invoke-direct {v1, v0, v2, v7, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 315
    .line 316
    .line 317
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 318
    .line 319
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 320
    .line 321
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v1, "android.intent.action.CALL_BUTTON"

    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance v2, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 333
    .line 334
    const/4 v7, 0x4

    .line 335
    invoke-direct {v2, v0, v7, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 336
    .line 337
    .line 338
    sput-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 339
    .line 340
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 341
    .line 342
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v2, "android.intent.action.SENDTO"

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string/jumbo v7, "sms"

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    const-string/jumbo v15, "smsto"

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    move-object/from16 v20, v3

    .line 372
    .line 373
    const-string/jumbo v3, "mms"

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    move-object/from16 v21, v4

    .line 380
    .line 381
    const-string/jumbo v4, "mmsto"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v22, v5

    .line 388
    .line 389
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 390
    .line 391
    move-object/from16 v24, v1

    .line 392
    .line 393
    move-object/from16 v23, v6

    .line 394
    .line 395
    const/4 v1, 0x0

    .line 396
    const/4 v6, 0x2

    .line 397
    invoke-direct {v5, v0, v6, v1, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 398
    .line 399
    .line 400
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 401
    .line 402
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 403
    .line 404
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 432
    .line 433
    move-object/from16 v25, v4

    .line 434
    .line 435
    const/4 v4, 0x1

    .line 436
    const/4 v5, 0x2

    .line 437
    const/4 v6, 0x0

    .line 438
    invoke-direct {v1, v0, v5, v4, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 439
    .line 440
    .line 441
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 442
    .line 443
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 444
    .line 445
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    .line 449
    .line 450
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const-string v1, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 462
    .line 463
    const/4 v4, 0x2

    .line 464
    const/4 v5, 0x0

    .line 465
    invoke-direct {v1, v0, v4, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 466
    .line 467
    .line 468
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 469
    .line 470
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 471
    .line 472
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string v1, "android.intent.action.MAIN"

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const-string v1, "android.intent.category.HOME"

    .line 484
    .line 485
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 489
    .line 490
    const/4 v4, 0x2

    .line 491
    const/4 v5, 0x0

    .line 492
    invoke-direct {v1, v0, v4, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 493
    .line 494
    .line 495
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 496
    .line 497
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 498
    .line 499
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 500
    .line 501
    .line 502
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    const-string v4, "android.intent.category.OPENABLE"

    .line 511
    .line 512
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    move-object/from16 v5, v18

    .line 516
    .line 517
    :try_start_f
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_f .. :try_end_f} :catch_f

    .line 518
    .line 519
    .line 520
    :catch_f
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 521
    .line 522
    move-object/from16 v18, v3

    .line 523
    .line 524
    move-object/from16 v26, v15

    .line 525
    .line 526
    const/4 v3, 0x0

    .line 527
    const/4 v15, 0x1

    .line 528
    invoke-direct {v6, v0, v3, v3, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 529
    .line 530
    .line 531
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 532
    .line 533
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 534
    .line 535
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 536
    .line 537
    .line 538
    const-string v3, "android.provider.action.PICK_IMAGES"

    .line 539
    .line 540
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 547
    .line 548
    move-object/from16 v27, v7

    .line 549
    .line 550
    const/4 v7, 0x1

    .line 551
    const/4 v15, 0x0

    .line 552
    invoke-direct {v6, v0, v15, v15, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 553
    .line 554
    .line 555
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 556
    .line 557
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 558
    .line 559
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    move-object/from16 v6, v17

    .line 569
    .line 570
    :try_start_10
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_10 .. :try_end_10} :catch_10

    .line 571
    .line 572
    .line 573
    :catch_10
    move-object/from16 v7, v16

    .line 574
    .line 575
    :try_start_11
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_11 .. :try_end_11} :catch_11

    .line 576
    .line 577
    .line 578
    :catch_11
    new-instance v15, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 579
    .line 580
    move-object/from16 v17, v6

    .line 581
    .line 582
    move-object/from16 v16, v7

    .line 583
    .line 584
    const/4 v6, 0x1

    .line 585
    const/4 v7, 0x0

    .line 586
    invoke-direct {v15, v0, v7, v7, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 587
    .line 588
    .line 589
    sput-object v15, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 590
    .line 591
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 592
    .line 593
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 594
    .line 595
    .line 596
    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    .line 597
    .line 598
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    :try_start_12
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_12 .. :try_end_12} :catch_12

    .line 608
    .line 609
    .line 610
    :catch_12
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 611
    .line 612
    move-object/from16 v28, v3

    .line 613
    .line 614
    const/4 v3, 0x1

    .line 615
    const/4 v15, 0x0

    .line 616
    invoke-direct {v7, v0, v15, v15, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 617
    .line 618
    .line 619
    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 620
    .line 621
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 622
    .line 623
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 624
    .line 625
    .line 626
    const-string v3, "android.intent.action.PICK"

    .line 627
    .line 628
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    :try_start_13
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_13 .. :try_end_13} :catch_13

    .line 635
    .line 636
    .line 637
    :catch_13
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 638
    .line 639
    move-object/from16 v29, v13

    .line 640
    .line 641
    const/4 v13, 0x1

    .line 642
    const/4 v15, 0x0

    .line 643
    invoke-direct {v7, v0, v15, v15, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 644
    .line 645
    .line 646
    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 647
    .line 648
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 649
    .line 650
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 660
    .line 661
    const/4 v13, 0x0

    .line 662
    const/4 v15, 0x1

    .line 663
    invoke-direct {v7, v0, v13, v13, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 664
    .line 665
    .line 666
    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 667
    .line 668
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 669
    .line 670
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 671
    .line 672
    .line 673
    const-string v7, "android.speech.action.RECOGNIZE_SPEECH"

    .line 674
    .line 675
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    new-instance v7, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 682
    .line 683
    const/4 v13, 0x0

    .line 684
    const/4 v15, 0x4

    .line 685
    invoke-direct {v7, v0, v15, v13, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 686
    .line 687
    .line 688
    sput-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 689
    .line 690
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 691
    .line 692
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 693
    .line 694
    .line 695
    const-string v7, "android.media.action.IMAGE_CAPTURE"

    .line 696
    .line 697
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    const-string v13, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 701
    .line 702
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    const-string v15, "android.media.action.VIDEO_CAPTURE"

    .line 706
    .line 707
    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    move-object/from16 v30, v10

    .line 711
    .line 712
    const-string v10, "android.provider.MediaStore.RECORD_SOUND"

    .line 713
    .line 714
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    move-object/from16 v31, v12

    .line 718
    .line 719
    const-string v12, "android.media.action.STILL_IMAGE_CAMERA"

    .line 720
    .line 721
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    move-object/from16 v32, v8

    .line 725
    .line 726
    const-string v8, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 727
    .line 728
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    move-object/from16 v33, v4

    .line 732
    .line 733
    const-string v4, "android.media.action.VIDEO_CAMERA"

    .line 734
    .line 735
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    move-object/from16 v34, v6

    .line 742
    .line 743
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 744
    .line 745
    move-object/from16 v35, v1

    .line 746
    .line 747
    move-object/from16 v36, v3

    .line 748
    .line 749
    move-object/from16 v37, v14

    .line 750
    .line 751
    const/4 v1, 0x0

    .line 752
    const/4 v3, 0x4

    .line 753
    const/4 v14, 0x1

    .line 754
    invoke-direct {v6, v0, v3, v1, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 755
    .line 756
    .line 757
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 758
    .line 759
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 760
    .line 761
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 762
    .line 763
    .line 764
    const-string v1, "android.intent.action.SET_ALARM"

    .line 765
    .line 766
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    const-string v1, "android.intent.action.SHOW_ALARMS"

    .line 770
    .line 771
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    const-string v1, "android.intent.action.SET_TIMER"

    .line 775
    .line 776
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 783
    .line 784
    const/4 v3, 0x0

    .line 785
    invoke-direct {v1, v0, v3, v3, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 786
    .line 787
    .line 788
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 789
    .line 790
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 791
    .line 792
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 793
    .line 794
    .line 795
    const-string v1, "android.intent.action.SEND"

    .line 796
    .line 797
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    .line 801
    .line 802
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    :try_start_14
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_14 .. :try_end_14} :catch_14

    .line 809
    .line 810
    .line 811
    :catch_14
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 812
    .line 813
    move-object/from16 v38, v5

    .line 814
    .line 815
    const/4 v5, 0x1

    .line 816
    const/4 v14, 0x0

    .line 817
    invoke-direct {v6, v0, v14, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 818
    .line 819
    .line 820
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 821
    .line 822
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 823
    .line 824
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 825
    .line 826
    .line 827
    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 828
    .line 829
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 833
    .line 834
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 841
    .line 842
    const/4 v6, 0x0

    .line 843
    const/4 v14, 0x1

    .line 844
    invoke-direct {v5, v0, v6, v14, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 845
    .line 846
    .line 847
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 848
    .line 849
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 850
    .line 851
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 852
    .line 853
    .line 854
    const-string v5, "android.intent.action.CALL"

    .line 855
    .line 856
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 866
    .line 867
    move-object/from16 v39, v5

    .line 868
    .line 869
    move-object/from16 v40, v9

    .line 870
    .line 871
    const/4 v5, 0x0

    .line 872
    const/4 v9, 0x1

    .line 873
    const/4 v14, 0x2

    .line 874
    invoke-direct {v6, v0, v14, v9, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 875
    .line 876
    .line 877
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 878
    .line 879
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 880
    .line 881
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v0, v15}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    new-instance v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 909
    .line 910
    const/16 v5, 0x18

    .line 911
    .line 912
    const/4 v6, 0x0

    .line 913
    invoke-direct {v4, v0, v5, v6, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 914
    .line 915
    .line 916
    sput-object v4, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 917
    .line 918
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 919
    .line 920
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 921
    .line 922
    .line 923
    const-string v4, "android.provider.action.USER_SELECT_IMAGES_FOR_APP"

    .line 924
    .line 925
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    new-instance v4, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 932
    .line 933
    const/4 v6, 0x0

    .line 934
    invoke-direct {v4, v0, v5, v6, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 935
    .line 936
    .line 937
    sput-object v4, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 938
    .line 939
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 940
    .line 941
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    move-object/from16 v4, v38

    .line 954
    .line 955
    :try_start_15
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_15 .. :try_end_15} :catch_15

    .line 956
    .line 957
    .line 958
    :catch_15
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 959
    .line 960
    const/4 v7, 0x0

    .line 961
    invoke-direct {v6, v0, v5, v7, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 962
    .line 963
    .line 964
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 965
    .line 966
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 967
    .line 968
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    :try_start_16
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_16 .. :try_end_16} :catch_16

    .line 981
    .line 982
    .line 983
    :catch_16
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 984
    .line 985
    const/4 v3, 0x0

    .line 986
    const/4 v6, 0x1

    .line 987
    invoke-direct {v1, v0, v5, v6, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 988
    .line 989
    .line 990
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 991
    .line 992
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 993
    .line 994
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 995
    .line 996
    .line 997
    move-object/from16 v1, v37

    .line 998
    .line 999
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    const-string v3, "https"

    .line 1003
    .line 1004
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    const-string v6, "http"

    .line 1008
    .line 1009
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1013
    .line 1014
    const/4 v7, 0x0

    .line 1015
    invoke-direct {v6, v0, v5, v7, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1016
    .line 1017
    .line 1018
    sput-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1019
    .line 1020
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1021
    .line 1022
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    const-string v3, "http"

    .line 1032
    .line 1033
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1037
    .line 1038
    const/4 v6, 0x0

    .line 1039
    const/4 v7, 0x1

    .line 1040
    invoke-direct {v3, v0, v5, v7, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1041
    .line 1042
    .line 1043
    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1044
    .line 1045
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1046
    .line 1047
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    :try_start_17
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_17 .. :try_end_17} :catch_17

    .line 1054
    .line 1055
    .line 1056
    :catch_17
    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1057
    .line 1058
    const/4 v6, 0x0

    .line 1059
    invoke-direct {v3, v0, v5, v6, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1060
    .line 1061
    .line 1062
    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1063
    .line 1064
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1065
    .line 1066
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1067
    .line 1068
    .line 1069
    move-object/from16 v3, v36

    .line 1070
    .line 1071
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    move-object/from16 v6, v35

    .line 1075
    .line 1076
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    const-string v7, "android.intent.action.EDIT"

    .line 1080
    .line 1081
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    const-string v7, "android.intent.action.INSERT"

    .line 1085
    .line 1086
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    const-string v7, "android.intent.action.INSERT_OR_EDIT"

    .line 1090
    .line 1091
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    move-object/from16 v7, v34

    .line 1095
    .line 1096
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    :try_start_18
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_18 .. :try_end_18} :catch_18

    .line 1100
    .line 1101
    .line 1102
    :catch_18
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    move-object/from16 v8, v33

    .line 1106
    .line 1107
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    new-instance v9, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1111
    .line 1112
    const/4 v10, 0x0

    .line 1113
    invoke-direct {v9, v0, v5, v10, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1114
    .line 1115
    .line 1116
    sput-object v9, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1117
    .line 1118
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1119
    .line 1120
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    const-string v3, "android.intent.action.EDIT"

    .line 1130
    .line 1131
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    const-string v3, "android.intent.action.INSERT"

    .line 1135
    .line 1136
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    .line 1140
    .line 1141
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    :try_start_19
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_19 .. :try_end_19} :catch_19

    .line 1148
    .line 1149
    .line 1150
    :catch_19
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1157
    .line 1158
    const/4 v4, 0x0

    .line 1159
    const/4 v6, 0x1

    .line 1160
    invoke-direct {v3, v0, v5, v6, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1161
    .line 1162
    .line 1163
    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1164
    .line 1165
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1166
    .line 1167
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1168
    .line 1169
    .line 1170
    move-object/from16 v3, v32

    .line 1171
    .line 1172
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    move-object/from16 v4, v31

    .line 1182
    .line 1183
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    move-object/from16 v6, v40

    .line 1187
    .line 1188
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    move-object/from16 v7, v30

    .line 1192
    .line 1193
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    move-object/from16 v8, v29

    .line 1197
    .line 1198
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    new-instance v9, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1202
    .line 1203
    const/4 v10, 0x0

    .line 1204
    const/4 v12, 0x1

    .line 1205
    invoke-direct {v9, v0, v5, v12, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1206
    .line 1207
    .line 1208
    sput-object v9, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1209
    .line 1210
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1211
    .line 1212
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1234
    .line 1235
    .line 1236
    new-instance v9, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1237
    .line 1238
    const/4 v10, 0x0

    .line 1239
    invoke-direct {v9, v0, v5, v10, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1240
    .line 1241
    .line 1242
    sput-object v9, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1243
    .line 1244
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1245
    .line 1246
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    move-object/from16 v9, v27

    .line 1262
    .line 1263
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    move-object/from16 v10, v26

    .line 1267
    .line 1268
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    move-object/from16 v12, v18

    .line 1272
    .line 1273
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    move-object/from16 v13, v25

    .line 1277
    .line 1278
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    new-instance v14, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1282
    .line 1283
    const/4 v15, 0x0

    .line 1284
    invoke-direct {v14, v0, v5, v15, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1285
    .line 1286
    .line 1287
    sput-object v14, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1288
    .line 1289
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1290
    .line 1291
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1292
    .line 1293
    .line 1294
    move-object/from16 v14, v28

    .line 1295
    .line 1296
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    new-instance v15, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1303
    .line 1304
    move-object/from16 v25, v13

    .line 1305
    .line 1306
    const/4 v13, 0x0

    .line 1307
    invoke-direct {v15, v0, v5, v13, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1308
    .line 1309
    .line 1310
    sput-object v15, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1311
    .line 1312
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1313
    .line 1314
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v0, v14}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1321
    .line 1322
    .line 1323
    move-object/from16 v13, v17

    .line 1324
    .line 1325
    :try_start_1a
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1326
    .line 1327
    .line 1328
    :catch_1a
    move-object/from16 v13, v16

    .line 1329
    .line 1330
    :try_start_1b
    invoke-virtual {v0, v13}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1331
    .line 1332
    .line 1333
    :catch_1b
    new-instance v13, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1334
    .line 1335
    const/4 v14, 0x0

    .line 1336
    invoke-direct {v13, v0, v5, v14, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1337
    .line 1338
    .line 1339
    sput-object v13, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1340
    .line 1341
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1342
    .line 1343
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1344
    .line 1345
    .line 1346
    const-string v5, "android.nfc.action.TAG_DISCOVERED"

    .line 1347
    .line 1348
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1352
    .line 1353
    const/4 v13, 0x1

    .line 1354
    invoke-direct {v5, v0, v14, v13, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1355
    .line 1356
    .line 1357
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1358
    .line 1359
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1360
    .line 1361
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    const-string v5, "android.nfc.action.TECH_DISCOVERED"

    .line 1365
    .line 1366
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1370
    .line 1371
    invoke-direct {v5, v0, v14, v13, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1372
    .line 1373
    .line 1374
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1375
    .line 1376
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1377
    .line 1378
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1379
    .line 1380
    .line 1381
    const-string v5, "android.nfc.action.NDEF_DISCOVERED"

    .line 1382
    .line 1383
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1387
    .line 1388
    invoke-direct {v5, v0, v14, v13, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1389
    .line 1390
    .line 1391
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1392
    .line 1393
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1394
    .line 1395
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1396
    .line 1397
    .line 1398
    move-object/from16 v5, v39

    .line 1399
    .line 1400
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1416
    .line 1417
    const/4 v13, 0x2

    .line 1418
    const/4 v14, 0x0

    .line 1419
    invoke-direct {v5, v0, v13, v14, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1420
    .line 1421
    .line 1422
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1423
    .line 1424
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1425
    .line 1426
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1427
    .line 1428
    .line 1429
    move-object/from16 v5, v24

    .line 1430
    .line 1431
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1438
    .line 1439
    const/4 v13, 0x0

    .line 1440
    const/4 v14, 0x4

    .line 1441
    invoke-direct {v5, v0, v14, v13, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1442
    .line 1443
    .line 1444
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1445
    .line 1446
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1447
    .line 1448
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    move-object/from16 v5, v23

    .line 1464
    .line 1465
    :try_start_1c
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1466
    .line 1467
    .line 1468
    :catch_1c
    move-object/from16 v5, v22

    .line 1469
    .line 1470
    :try_start_1d
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1471
    .line 1472
    .line 1473
    :catch_1d
    move-object/from16 v5, v21

    .line 1474
    .line 1475
    :try_start_1e
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1476
    .line 1477
    .line 1478
    :catch_1e
    move-object/from16 v5, v20

    .line 1479
    .line 1480
    :try_start_1f
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 1481
    .line 1482
    .line 1483
    :catch_1f
    move-object/from16 v5, v19

    .line 1484
    .line 1485
    :try_start_20
    invoke-virtual {v0, v5}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_20 .. :try_end_20} :catch_20

    .line 1486
    .line 1487
    .line 1488
    :catch_20
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1489
    .line 1490
    const/4 v13, 0x0

    .line 1491
    const/4 v14, 0x4

    .line 1492
    invoke-direct {v5, v0, v14, v13, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1493
    .line 1494
    .line 1495
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1496
    .line 1497
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1498
    .line 1499
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1509
    .line 1510
    .line 1511
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v0, v6}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v0, v7}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1521
    .line 1522
    .line 1523
    new-instance v5, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1524
    .line 1525
    const/4 v6, 0x0

    .line 1526
    const/4 v7, 0x4

    .line 1527
    invoke-direct {v5, v0, v7, v6, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1528
    .line 1529
    .line 1530
    sput-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1531
    .line 1532
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1533
    .line 1534
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {v0, v3}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1544
    .line 1545
    .line 1546
    new-instance v3, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1547
    .line 1548
    const/4 v5, 0x0

    .line 1549
    const/4 v6, 0x4

    .line 1550
    invoke-direct {v3, v0, v6, v5, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1551
    .line 1552
    .line 1553
    sput-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1554
    .line 1555
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 1556
    .line 1557
    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 1558
    .line 1559
    .line 1560
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    .line 1562
    .line 1563
    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v0, v11}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1570
    .line 1571
    .line 1572
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1573
    .line 1574
    .line 1575
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v0, v12}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1579
    .line 1580
    .line 1581
    move-object/from16 v1, v25

    .line 1582
    .line 1583
    invoke-virtual {v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1584
    .line 1585
    .line 1586
    new-instance v1, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1587
    .line 1588
    const/4 v2, 0x2

    .line 1589
    const/4 v3, 0x0

    .line 1590
    invoke-direct {v1, v0, v2, v3, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V

    .line 1591
    .line 1592
    .line 1593
    sput-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 1594
    .line 1595
    return-void
.end method

.method public static getDefaultCrossProfileTelephonyIntentFilters(Z)Ljava/util/List;
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 6
    .line 7
    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 8
    .line 9
    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 10
    .line 11
    sget-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 12
    .line 13
    filled-new-array {v1, v2, v3, p0, v0}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 23
    .line 24
    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 25
    .line 26
    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 27
    .line 28
    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 29
    .line 30
    filled-new-array {v1, v2, p0, v0}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
