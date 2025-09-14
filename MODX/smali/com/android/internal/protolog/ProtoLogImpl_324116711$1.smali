.class Lcom/android/internal/protolog/ProtoLogImpl_324116711$1;
.super Ljava/util/TreeMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    const-string v0, "WM_ERROR"

    .line 6
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v0, "WM_DEBUG_ORIENTATION"

    .line 13
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "WM_DEBUG_FOCUS_LIGHT"

    .line 20
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "WM_DEBUG_BOOT"

    .line 27
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 29
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "WM_DEBUG_RESIZE"

    .line 34
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "WM_DEBUG_ADD_REMOVE"

    .line 41
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "WM_DEBUG_CONFIGURATION"

    .line 48
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 50
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "WM_DEBUG_SWITCH"

    .line 55
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 57
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "WM_DEBUG_CONTAINERS"

    .line 62
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "WM_DEBUG_FOCUS"

    .line 69
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 71
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "WM_DEBUG_IMMERSIVE"

    .line 76
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "WM_DEBUG_LOCKTASK"

    .line 83
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 85
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "WM_DEBUG_STATES"

    .line 90
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 92
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "WM_DEBUG_TASKS"

    .line 97
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 99
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "WM_DEBUG_STARTING_WINDOW"

    .line 104
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 106
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "WM_SHOW_TRANSACTIONS"

    .line 111
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 113
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "WM_SHOW_SURFACE_ALLOC"

    .line 118
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 120
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "WM_DEBUG_APP_TRANSITIONS"

    .line 125
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 127
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "WM_DEBUG_ANIM"

    .line 132
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 134
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "WM_DEBUG_APP_TRANSITIONS_ANIM"

    .line 139
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 141
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "WM_DEBUG_RECENTS_ANIMATIONS"

    .line 146
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 148
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "WM_DEBUG_DRAW"

    .line 153
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 155
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "WM_DEBUG_REMOTE_ANIMATIONS"

    .line 160
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 162
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "WM_DEBUG_SCREEN_ON"

    .line 167
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 169
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "WM_DEBUG_KEEP_SCREEN_ON"

    .line 174
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 176
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "WM_DEBUG_WINDOW_MOVEMENT"

    .line 181
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 183
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "WM_DEBUG_IME"

    .line 188
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 190
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v0, "WM_DEBUG_WINDOW_ORGANIZER"

    .line 195
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 197
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "WM_DEBUG_SYNC_ENGINE"

    .line 202
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "WM_DEBUG_WINDOW_TRANSITIONS"

    .line 209
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 211
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "WM_DEBUG_WINDOW_TRANSITIONS_MIN"

    .line 216
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 218
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "WM_DEBUG_WINDOW_INSETS"

    .line 223
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 225
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "WM_DEBUG_CONTENT_RECORDING"

    .line 230
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 232
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "WM_DEBUG_WALLPAPER"

    .line 237
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 239
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "WM_DEBUG_BACK_PREVIEW"

    .line 244
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 246
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "WM_DEBUG_DREAM"

    .line 251
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 253
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "WM_DEBUG_DIMMER"

    .line 258
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 260
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "WM_DEBUG_TPL"

    .line 265
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 267
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "WM_DEBUG_EMBEDDED_WINDOWS"

    .line 272
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 274
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "WM_FORCE_DEBUG_ORIENTATION"

    .line 279
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 281
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "WM_FORCE_DEBUG_FOCUS_LIGHT"

    .line 286
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 288
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "WM_FORCE_DEBUG_BOOT"

    .line 293
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 295
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "WM_FORCE_DEBUG_RESIZE"

    .line 300
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 302
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "WM_FORCE_DEBUG_ADD_REMOVE"

    .line 307
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 309
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "WM_FORCE_DEBUG_CONFIGURATION"

    .line 314
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 316
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "WM_FORCE_DEBUG_FOCUS"

    .line 321
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 323
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, "WM_FORCE_DEBUG_STARTING_WINDOW"

    .line 328
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 330
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "WM_FORCE_SHOW_TRANSACTIONS"

    .line 335
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 337
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "WM_FORCE_SHOW_SURFACE_ALLOC"

    .line 342
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 344
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "WM_FORCE_DEBUG_APP_TRANSITIONS"

    .line 349
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 351
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM"

    .line 356
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 358
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "WM_FORCE_DEBUG_RECENTS_ANIMATIONS"

    .line 363
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 365
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "WM_FORCE_DEBUG_DRAW"

    .line 370
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 372
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v0, "WM_FORCE_DEBUG_REMOTE_ANIMATIONS"

    .line 377
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 379
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v0, "WM_FORCE_DEBUG_SCREEN_ON"

    .line 384
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 386
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v0, "WM_FORCE_DEBUG_KEEP_SCREEN_ON"

    .line 391
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 393
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v0, "WM_FORCE_DEBUG_WINDOW_MOVEMENT"

    .line 398
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 400
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v0, "WM_FORCE_DEBUG_IME"

    .line 405
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 407
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v0, "WM_FORCE_DEBUG_ANIM"

    .line 412
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 414
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v0, "WM_FORCE_DEBUG_WINDOW_TRANSITIONS"

    .line 419
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 421
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v0, "WM_FORCE_DEBUG_SYNC_ENGINE"

    .line 426
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 428
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v0, "WM_DEBUG_INPUT"

    .line 433
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 435
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "TEST_GROUP"

    .line 440
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 442
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method
